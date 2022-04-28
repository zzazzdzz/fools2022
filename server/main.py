import base64
import json
import time

import router
import config
import logger
import handlers
import auth
import datastore
import util
import achievements
import flags
import ratelimiter
from headers import *

import wsgiserver

rt = router.Router()

TAG = "Main"

@rt.route("^/", ["OPTIONS"])
def appPreflightRequest(environ, start_response):
    start_response('200 OK', HEADERS_CORS)
    return []

@rt.route("^/leaderboard", ["GET"])
def appLeaderboard(environ, start_response):
    ratelimiter.test(environ['REMOTE_ADDR'], 4)
    with datastore.open_datastore("leaderboard") as l:
        leaderboard = l.read()
    start_response(
        '200 OK',
        construct_headers(HEADERS_JSON, HEADERS_CORS)
    )
    return util.json_ok(leaderboard[0:30])
    
@rt.route("^/fullleaderboard", ["GET"])
def appLeaderboardFull(environ, start_response):
    ratelimiter.test(environ['REMOTE_ADDR'], 4)
    with datastore.open_datastore("leaderboard") as l:
        leaderboard = l.read()
    start_response(
        '200 OK',
        construct_headers(HEADERS_JSON, HEADERS_CORS)
    )
    return util.json_ok(leaderboard)

@rt.route("^/profile", ["GET"])
def appProfile(environ, start_response):
    ratelimiter.test(environ['REMOTE_ADDR'], 4)
    uid = int(environ['PATH_INFO'].split('/')[-1])
    with datastore.open_user_datastore(uid) as d:
        user_datastore = d.read()
    start_response(
        '200 OK',
        construct_headers(HEADERS_JSON, HEADERS_CORS)
    )
    adm_info = None
    if auth.validate(1, environ.get('HTTP_X_FOOLSSESSIONTOKEN', '')):
        html = "<div style='overflow-y:scroll;width:100%;height:150px;border:1px solid #ccc;padding:8px;font-family:monospace;font-size:10px;text-align:left'>%1</div><br>"
        html += "<div style='overflow-y:scroll;width:100%;height:150px;border:1px solid #ccc;padding:8px;font-size:12px;'>"
        flag_list = [i for i in dir(flags) if i.startswith("FLAG_")]
        flag_list.sort(key=lambda x: eval("flags.%s" % x))
        for flag in flag_list:
            if util.checkflag(user_datastore['state'], eval("flags.%s" % flag)):
                html += "<b style='color:#0b0;font-weight:bold'>%s = True</b><br>" % flag
            else:
                html += "<span style='color:#b00'>%s = False</span><br>" % flag
        html += "</div>"
        adm_info = [html, json.dumps(user_datastore)]
    return util.json_ok({
        "username": user_datastore['username'],
        "score": user_datastore['score'],
        "achievements": user_datastore['achievements'],
        "lottery": user_datastore['lottery'],
        "admin": adm_info,
        "title": user_datastore['title'],
        "visited": len(user_datastore['visited_maps'])
    })

@rt.route("^/ping", ["GET"])
def appPing(environ, start_response):
    ratelimiter.test(environ['REMOTE_ADDR'], 4)
    token = environ.get('HTTP_X_FOOLSSESSIONTOKEN', '')
    if not auth.validate(-1, token):
        start_response(
            '200 OK',
            construct_headers(HEADERS_JSON, HEADERS_CORS)
        )
        return util.json_ok({
            "logged_in": False,
            "uid": 0
        })
    uid = auth.token_uid(token)
    with datastore.open_user_datastore(uid) as d:
        user_datastore = d.read()
    start_response(
        '200 OK',
        construct_headers(HEADERS_JSON, HEADERS_CORS, [
            ("X-FoolsRefreshToken", auth.create(uid))
        ])
    )
    obj = {
        "logged_in": True,
        "uid": uid,
        "username": user_datastore['username'],
        "score": user_datastore['score'],
        "wholesome": user_datastore['wholesome'],
        "achievements": user_datastore['achievements'],
        "titles": user_datastore['titles'],
        "lottery": user_datastore['lottery'],
        "message": user_datastore['message'],
        "title": user_datastore['title']
    }
    return util.json_ok(obj)

@rt.route("^/register", ["POST"])
def appRegister(environ, start_response):
    ratelimiter.test(environ['REMOTE_ADDR'], 1)
    data_len = int(environ.get('CONTENT_LENGTH', 0))
    creds = json.loads(environ['wsgi.input'].read(data_len))
    
    creds['u'] = creds['u'].strip()

    try:    
        attempt_gen3_charset = util.utf8_to_gen3(creds['u'])
        if len(creds['u']) >= 16:
            raise RuntimeError("nope")
        if len(creds['u']) < 1:
            raise RuntimeError("nope")
    except:
        start_response(
            '422 Unprocessable Entity',
            construct_headers(HEADERS_JSON, HEADERS_CORS)
        )
        return util.json_error(3, "Invalid username. Username must contain at least 1 character, at most 15 characters, and only contain characters from the Gen III latin set.")
    
    if len(creds['p1']) < 6:
        start_response(
            '422 Unprocessable Entity',
            construct_headers(HEADERS_JSON, HEADERS_CORS)
        )
        return util.json_error(4, "Password must be at least 6 characters.")

    if creds['p1'] != creds['p2']:
        start_response(
            '422 Unprocessable Entity',
            construct_headers(HEADERS_JSON, HEADERS_CORS)
        )
        return util.json_error(7, "Passwords do not match.")

    if len(creds['m']) > 150:
        start_response(
            '422 Unprocessable Entity',
            construct_headers(HEADERS_JSON, HEADERS_CORS)
        )
        return util.json_error(5, "Your message is too long.")

    with datastore.open_global_datastore() as d:
        global_datastore = d.read()
        if 'uid_map' not in global_datastore:
            global_datastore['uid_map'] = {}

        if creds['u'] in global_datastore['uid_map']:
            start_response(
                '422 Unprocessable Entity',
                construct_headers(HEADERS_JSON, HEADERS_CORS)
            )
            return util.json_error(6, "This username already exists. Choose a different username.")

        uid = 1
        while uid in global_datastore['uid_map'].values():
            uid = util.rand(100, 9999999)

        global_datastore['uid_map'][creds['u']] = uid
        d.write(global_datastore)
        
    logger.log(TAG, "registering user id %i" % uid)

    udata = {
        "username": creds['u'],
        "password": auth.pw_hash(creds['p1']),
        "uid": uid,
        "fun": util.rand(0, 256),
        "special_flags": [],
        "state": [0]*32,
        "score": -1,
        "wholesome": 0,
        "achievements": [],
        "titles": [],
        "lottery": 0,
        "message": creds['m'],
        "update": 0,
        "title": "New Adventurer",
        "visited_maps": {},
        "yeet": {'id': 0, 'index': 0, 'start': 0},
        "ip": environ['REMOTE_ADDR']
    }
    achievements.check_player_completion(udata)
    with datastore.open_user_datastore(uid) as d:
        d.write(udata)

    start_response(
        '200 OK',
        construct_headers(HEADERS_JSON, HEADERS_CORS)
    )
    return util.json_ok({
        "username": creds['u'],
        "uid": uid,
        "session": auth.create(uid),
        "scope": "fools2022"
    })

@rt.route("^/login", ["POST"])
def appLogin(environ, start_response):
    ratelimiter.test(environ['REMOTE_ADDR'], 1)
    data_len = int(environ.get('CONTENT_LENGTH', 0))
    creds = json.loads(environ['wsgi.input'].read(data_len))

    with datastore.open_global_datastore() as d:
        global_datastore = d.read()
        
    if creds['u'] not in global_datastore['uid_map']:
        start_response(
            '401 Unauthorized',
            construct_headers(HEADERS_JSON, HEADERS_CORS)
        )
        return util.json_error(2, "Incorrect username or password")

    uid = global_datastore['uid_map'][creds['u']]

    with datastore.open_user_datastore(uid) as d:
        user_datastore = d.read()
    
    if not auth.pw_compare(creds['p'], user_datastore['password']):
        start_response(
            '401 Unauthorized',
            construct_headers(HEADERS_JSON, HEADERS_CORS)
        )
        return util.json_error(2, "Incorrect username or password")

    start_response(
        '200 OK',
        construct_headers(HEADERS_JSON, HEADERS_CORS)
    )
    return util.json_ok({
        "session": auth.create(uid),
        "uid": uid,
        "scope": "fools2022"
    })

@rt.route("^/packet/[0-9]+/?$", ["POST"])
def appRequest(environ, start_response):
    ratelimiter.test(environ['REMOTE_ADDR'], 1)
    # only allow authorized requests
    uid = int(environ['PATH_INFO'].split('/')[-1])
    token = environ.get('HTTP_X_FOOLSSESSIONTOKEN', '')
    if not auth.validate(uid, token):
        start_response(
            '401 Unauthorized',
            construct_headers(HEADERS_TEXT, HEADERS_CORS)
        )
        return [b'ERR_INVALID_TOKEN']

    try:
        data_len = int(environ.get('CONTENT_LENGTH', 0))
        data = base64.b64decode(environ['wsgi.input'].read(data_len))
        r = base64.b64encode(handlers.handle_packet(uid, data, False))
    except handlers.FoolsMapAccessDeniedError as ex:
        start_response(
            '401 Unauthorized',
            construct_headers(HEADERS_TEXT, HEADERS_CORS)
        )
        return [bytes(repr(ex), 'utf-8')]
    except handlers.FoolsDescriptiveProcessingError as ex:
        start_response(
            '422 Unprocessable Entity',
            construct_headers(HEADERS_TEXT, HEADERS_CORS)
        )
        return [bytes(repr(ex), 'utf-8')]
    except handlers.FoolsPacketHandlerError as ex:
        start_response(
            '422 Unprocessable Entity',
            construct_headers(HEADERS_TEXT, HEADERS_CORS)
        )
        return [bytes("FoolsPacketHandlerError('malformed packet')", 'utf-8')]
        
    with datastore.open_user_datastore(uid) as d:
        udata = d.read()
        achievements.check_player_completion(udata)
        d.write(udata)

    start_response(
        '200 OK',
        construct_headers(HEADERS_TEXT, HEADERS_CORS, [
            ("X-FoolsRefreshToken", auth.create(uid)),
            ("X-FoolsProtocolVersion", str(config.PROTOCOL_VERSION))
        ])
    )
    return [r]
    
@rt.route("^/turbopacket/[0-9]+/?$", ["POST"])
def appTurboRequest(environ, start_response):
    ratelimiter.test(environ['REMOTE_ADDR'], 2)
    # only allow authorized requests
    uid = int(environ['PATH_INFO'].split('/')[-1])
    token = environ.get('HTTP_X_FOOLSSESSIONTOKEN', '')
    if not auth.validate(uid, token):
        start_response(
            '401 Unauthorized',
            construct_headers(HEADERS_TEXT, HEADERS_CORS)
        )
        return [b'ERR_INVALID_TOKEN']

    try:
        data_len = int(environ.get('CONTENT_LENGTH', 0))
        data = base64.b64decode(environ['wsgi.input'].read(data_len))
        r = base64.b64encode(handlers.handle_packet(uid, data, True))
    except handlers.FoolsMapAccessDeniedError as ex:
        start_response(
            '401 Unauthorized',
            construct_headers(HEADERS_TEXT, HEADERS_CORS)
        )
        return [bytes(repr(ex), 'utf-8')]
    except handlers.FoolsDescriptiveProcessingError as ex:
        start_response(
            '422 Unprocessable Entity',
            construct_headers(HEADERS_TEXT, HEADERS_CORS)
        )
        return [bytes(repr(ex), 'utf-8')]
    except handlers.FoolsPacketHandlerError as ex:
        start_response(
            '422 Unprocessable Entity',
            construct_headers(HEADERS_TEXT, HEADERS_CORS)
        )
        return [bytes("FoolsPacketHandlerError('malformed packet')", 'utf-8')]

    with datastore.open_user_datastore(uid) as d:
        udata = d.read()
        achievements.check_player_completion(udata)
        d.write(udata)

    start_response(
        '200 OK',
        construct_headers(HEADERS_TEXT, HEADERS_CORS, [
            ("X-FoolsRefreshToken", auth.create(uid)),
            ("X-FoolsProtocolVersion", str(config.PROTOCOL_VERSION))
        ])
    )
    return [r]

@rt.route("^/message", ["POST"])
def appSetMessage(environ, start_response):
    ratelimiter.test(environ['REMOTE_ADDR'], 4)
    data_len = int(environ.get('CONTENT_LENGTH', 0))
    data = json.loads(environ['wsgi.input'].read(data_len))
    
    token = environ.get('HTTP_X_FOOLSSESSIONTOKEN', '')
    if not auth.validate(-1, token):
        start_response(
            '401 Unauthorized',
            construct_headers(HEADERS_JSON, HEADERS_CORS)
        )
        return util.json_error(20, "Invalid or expired session token")
    uid = auth.token_uid(token)
    
    if len(data['message']) > 150:
        start_response(
            '422 Unprocessable Entity',
            construct_headers(HEADERS_JSON, HEADERS_CORS)
        )
        return util.json_error(5, "Your message is too long.")

    with datastore.open_user_datastore(uid) as d:
        user_datastore = d.read()
        user_datastore['message'] = data['message']
        d.write(user_datastore)

    start_response(
        '200 OK',
        construct_headers(HEADERS_JSON, HEADERS_CORS)
    )
    return util.json_ok({})
    
@rt.route("^/title", ["POST"])
def appSetTitle(environ, start_response):
    ratelimiter.test(environ['REMOTE_ADDR'], 4)
    data_len = int(environ.get('CONTENT_LENGTH', 0))
    data = json.loads(environ['wsgi.input'].read(data_len))
    
    token = environ.get('HTTP_X_FOOLSSESSIONTOKEN', '')
    if not auth.validate(-1, token):
        start_response(
            '401 Unauthorized',
            construct_headers(HEADERS_JSON, HEADERS_CORS)
        )
        return util.json_error(20, "Invalid or expired session token")
    uid = auth.token_uid(token)

    with datastore.open_user_datastore(uid) as d:
        user_datastore = d.read()
        if data['title'] not in user_datastore['titles']:
            start_response(
                '422 Unprocessable Entity',
                construct_headers(HEADERS_JSON, HEADERS_CORS)
            )
            return util.json_error(5, "This title was not unlocked yet")
        user_datastore['title'] = data['title']
        achievements.update_leaderboard_record(user_datastore)
        d.write(user_datastore)

    start_response(
        '200 OK',
        construct_headers(HEADERS_JSON, HEADERS_CORS)
    )
    return util.json_ok({})

@rt.route("^/wholesome", ["POST"])
def appSetWholesome(environ, start_response):
    # This one was used to grant the Wholesome Reward in the original event,
    # but that's removed in unofficial releases, to avoid confusing users.
    
    # "hello ZZAZZ this reward code does not work on this random server you
    # have zero control of, I paid you money for this, I demand a refund!!!"
    
    start_response(
        '422 Unprocessable Entity',
        construct_headers(HEADERS_JSON, HEADERS_CORS)
    )
    return util.json_error(41, "You can't become wholesome on this unofficial server")

@rt.route("^/automation", ["GET"])
def appAutomationMessage(environ, start_response):
    ratelimiter.test(environ['REMOTE_ADDR'], 4)
    start_response(
        '200 OK',
        construct_headers(HEADERS_TEXT, HEADERS_CORS)
    )
    with open('automation.txt', 'rb') as f:
        contents = f.read()
    return [contents]

@rt.route("^.*$")
def appDefault(environ, start_response):
    start_response(
        '404 Bepis', 
        construct_headers(HEADERS_HTML, HEADERS_CORS)
    )
    html = '''
        <meta http-equiv="refresh" content="0;url=https://zzazzdzz.github.io/fools2022/">
        <p><a href='https://zzazzdzz.github.io/fools2022/'>
            Click here if your browser doesn't redirect you automatically.
        </a></p>
    '''
    return [bytes(html, 'utf-8')]

if __name__ == "__main__":
    logger.log(TAG, "Server started")
    server = wsgiserver.WSGIServer(rt, host='127.0.0.1', port=6937)
    server.start()
