import threading
import base64
import json
import urllib
import urllib.parse
import urllib.request
import time

lock = threading.Lock()
success = False
result = b""
server_protocol_version = 0

sessid = "NONE"
uid = 0

server_addr = "http://127.0.0.1:6937"

def _send_to_backend_thread(request):
    global success, result, sessid, server_protocol_version
    try:
        req = urllib.request.Request(
            "%s/packet/%i" % (server_addr, uid),
            base64.b64encode(bytes(request))
        )
        req.add_header("X-FoolsSessionToken", sessid)
        req.add_header("User-Agent", "fools2022-client/1.1.0")
        resp = urllib.request.urlopen(req)
        refresh_token = resp.info().get('X-FoolsRefreshToken', '')
        if refresh_token:
            sessid = refresh_token
        proto_version = resp.info().get('X-FoolsProtocolVersion', '')
        if proto_version:
            server_protocol_version = int(proto_version)
        result = base64.b64decode(resp.read())
        success = True
    except:
        import traceback
        traceback.print_exc()
        result = []
        time.sleep(1)
        success = False
    finally:
        lock.release()

def send_to_backend(request):
    global success, result
    lock.acquire()
    success = False
    result = []
    t = threading.Thread(target=_send_to_backend_thread, args=(request,))
    t.start()
    
def login(username, password):
    data = json.dumps({
        'u': username,
        'p': password
    })
    req = urllib.request.Request(server_addr + "/login", bytes(data, 'utf-8'))
    req.add_header("User-Agent", "fools2022-client/1.1.0")
    return json.loads(urllib.request.urlopen(req).read().decode('utf-8'))
