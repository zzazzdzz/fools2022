import glob
import time
import datetime

import logger
import datastore
import util
import mechanics
import config
import flags

TAG = "Handler"

PLACEHOLDER_PLAYER = b'--PLAYERNICKNA--'
PLACEHOLDER_MAP_COUNT = b'--PLAYERMAPCNT--'
PLACEHOLDER_FLY_FLAGS = b'--FLYFLAGS--'
PLACEHOLDER_TRENDY_PHRASE = b'--TRENDYPHRASEPLACEHOLDER--'
PLACEHOLDER_TRENDY_PLAYER = b'--PLAYERPHRASE--'
PLACEHOLDER_FUN_VALUE = b'--FUNVAL--'
PLACEHOLDER_FUN_VALUE_STR = b'--FUNVALSTR--'
PLACEHOLDER_CURRENT_YEET = b'--CURRENTYEETTITLE____________--'
PLACEHOLDER_CURRENT_YEET_ID = b'--YEETID--'
PLACEHOLDER_CC1_FLAG = b'--CC1CLEAR--'
PLACEHOLDER_CC2_FLAG = b'--CC2CLEAR--'
PLACEHOLDER_CC3_FLAG = b'--CC3CLEAR--'
PLACEHOLDER_CC4_FLAG = b'--CC4CLEAR--'
PLACEHOLDER_RND_WORD = b'--RNDWORD--'
PLACEHOLDER_YEET_TIME = b'--YEETTIMER____________--'
PLACEHOLDER_YEET_PLACE = b'--YEETPLACE--'
PLACEHOLDER_YEET_FIRST_BLOOD = b'--YEETFIRSTBLOODNICK--'
PLACEHOLDER_YEET_ID = b'--YEETID--'
PLACEHOLDER_EVENT_FLAGS = b'--EVENTFLAGS__________________--'
PLACEHOLDER_TIMING = b'--TIMING--'

class FoolsPacketHandlerError(Exception):
    pass

class FoolsDescriptiveProcessingError(Exception):
    pass

class FoolsMapAccessDeniedError(Exception):
    pass

def ror(n, rotations=1, width=32):
    mask = 2**width - 1
    n &= mask
    return (n >> rotations) | ((n << (width - rotations)) & mask)

def calc_checksum(data):
    result = 0xf0dbeb15
    for i in range(0, len(data), 4):
        v = data[i] + data[i+1] * 0x100 \
                    + data[i+2] * 0x10000 + data[i+3] * 0x1000000
        if i == 0:
            v &= 0x0000ffff
        result = ror(result, 5)
        result ^= v
        v = (v + v) & 0xffffffff
        result = (result + v) & 0xffffffff
    result &= 0x0000ffff
    return result

def handle_packet(uid, data, turbo=False):
    if len(data) % 4 != 0:
        raise FoolsPacketHandlerError("invalid alignment")
    valid_checksum = calc_checksum(data)
    packet_checksum = data[2] + data[3] * 256
    if valid_checksum != packet_checksum:
        # Fun fact: this checksum test was commented out during development for
        # testing purposes. I forgot to bring it back in production.
        # So during the entire event, the checksums didn't do anything...
        
        # In this release, I still keep this check inactive, to preserve
        # compatibility with unofficial tools written during the event period.
        # You can restore this check at the cost of potentially breaking
        # tools written by participants, like map dumpers or lottery bots.
        '''raise FoolsPacketHandlerError(
            "invalid checksum: %.4x != %.4x" % (valid_checksum, packet_checksum)
        )'''
    command_id = data[0]
    if command_id not in packet_handlers:
        raise FoolsPacketHandlerError("unknown packet ID 0x%.2x" % command_id)
    return packet_handlers[command_id](uid, data, turbo)
    
def handle_getmap(uid, data, turbo):
    map_id = data[4] + data[5]*256
    logger.log(TAG, "uid %i map request [%.4x]" % (uid, map_id))
    
    with datastore.open_user_datastore(uid) as d:
        player_data = d.read()
        
        if turbo:
            if player_data['wholesome'] and "cc3_clear" in player_data['special_flags']:
                # NotLikeThis
                pass
            else:
                raise FoolsMapAccessDeniedError("turbopacket without wholesome and cc3_clear")

        pat = "%s/%.4X_*.bin" % (config.MAP_DIRECTORY, map_id)
        fname = glob.glob(pat)

        if map_id in config.FUN_MAPS:
            if config.FUN_MAPS[map_id](player_data['fun']):
                fname = [x for x in fname if "FunVer" in x]
            else:
                fname = [x for x in fname if "FunVer" not in x]

        if fname:
            fname = fname[0]
        else:
            fname = "%s/0000_MysteryZone.bin" % config.MAP_DIRECTORY
        
        with open(fname, "rb") as f:
            map_data = f.read()

        # ==== GAME CORNER
        if map_id == 0x1a73:
            player_data['yeet']['id'] = mechanics.get_current_yeet_session_id()
            player_data['yeet']['index'] = mechanics.get_current_yeet()
            player_data['yeet']['start'] = 0
            
        # ==== CC2 - MARK CC1 AS CLEARED
        if map_id == 0x318c and 'cc1_clear' not in player_data['special_flags']:
            player_data['special_flags'].append('cc1_clear')
            
        # ==== MAP 0x1337 - MARK CC2 AS CLEARED
        if map_id == 0x1337 and 'cc2_clear' not in player_data['special_flags']:
            player_data['special_flags'].append('cc2_clear')
        
        # ==== CC3 - DON'T LOAD UNTIL CC2 CLEARED
        if map_id == 0x318d:
            if 'cc2_clear' not in player_data['special_flags']:
                raise FoolsMapAccessDeniedError("attempting to load cc3 without cc2 clear")
        
        # ==== CC4 - DON'T LOAD UNTIL CC3 CLEARED
        if map_id == 0x3190 or map_id == 0x318e:
            if 'cc3_clear' not in player_data['special_flags']:
                raise FoolsMapAccessDeniedError("attempting to load cc4 without cc3 clear")
                
        # ==== CC5 - DON'T LOAD UNTIL CC4 CLEARED
        if map_id == 0x3191 or map_id == 0x318f:
            if 'cc4_clear' not in player_data['special_flags']:
                raise FoolsMapAccessDeniedError("attempting to load cc5 without cc4 clear")

        # ==== YEET MAPS: GROUNDS
        if map_id in (0x5133, 0x5134, 0x5135, 0x5136, 0x5137):
            yeet_from_map_id = map_id - 0x5133
            if yeet_from_map_id != player_data['yeet']['index']:
                raise FoolsMapAccessDeniedError("accessing wrong yeet map %.4x" % map_id)
            if player_data['yeet']['start'] == 0:
                player_data['yeet']['start'] = int(time.time())

        # ==== FUN VALUE RESET
        if map_id == 0x472b and data[6] == 15 and data[7] == 10:
            player_data['fun'] = util.rand(0, 256)

        # ==== YEET MAP: FINISH
        if map_id == 0x5160:
            with datastore.open_global_datastore() as gd:
                global_datastore = gd.read()
                prev_id = global_datastore['yeet']['id']
                cur_id = mechanics.get_current_yeet_session_id()
                if prev_id != cur_id:
                    # remove stale yeet data
                    global_datastore['yeet']['id'] = cur_id
                    global_datastore['yeet']['completions'] = []
                if global_datastore['yeet']['id'] == player_data['yeet']['id']:
                    # can save completion if ids match
                    if 'yeet_firstblood' not in player_data['special_flags']:
                        global_datastore['yeet']['completions'].append(player_data['username'])
                        yeet_completion_place = 0
                    else:
                        yeet_completion_place = 1
                    if global_datastore['yeet']['completions']:
                        yeet_completion_name = global_datastore['yeet']['completions'][0]
                    else:
                        yeet_completion_name = "bepis"
                    yeet_completion_place += len(global_datastore['yeet']['completions'])
                    yeet_completion_status = 0
                    if 'yeet_firstblood' not in player_data['special_flags']:
                        if yeet_completion_place <= 1:
                            player_data['special_flags'].append('yeet_firstblood')
                        yeet_completion_status = yeet_completion_place
                else:
                    yeet_completion_name = "bepis"
                    yeet_completion_place = 0
                    yeet_completion_status = 0xff
                gd.write(global_datastore)

        # mark map as visited
        if 'visited_maps' not in player_data:
            player_data['visited_maps'] = {}
        player_data['visited_maps']["%.4x" % map_id] = 1

        # expand placeholders
        # player nickname
        if PLACEHOLDER_PLAYER in map_data:
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_PLAYER,
                player_data['username']
            )
        if PLACEHOLDER_MAP_COUNT in map_data:
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_MAP_COUNT,
                str(len(player_data['visited_maps']))
            )
        if PLACEHOLDER_FLY_FLAGS in map_data:
            fly_flags = [1, 0, 0, 0, 0, 0]
            if '062f' in player_data['visited_maps']:
                fly_flags[1] = 1
            if '1631' in player_data['visited_maps']:
                fly_flags[2] = 1
            if '2b29' in player_data['visited_maps']:
                fly_flags[3] = 1
            if '2f38' in player_data['visited_maps']:
                fly_flags[4] = 1
            if '472b' in player_data['visited_maps']:
                fly_flags[5] = 1
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_FLY_FLAGS,
                bytes(fly_flags)
            )
        if PLACEHOLDER_TRENDY_PHRASE in map_data:
            with datastore.open_global_datastore() as gd:
                global_datastore = gd.read()
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_TRENDY_PHRASE,
                global_datastore['trendy_phrase']
            )
        if PLACEHOLDER_TRENDY_PLAYER in map_data:
            with datastore.open_global_datastore() as gd:
                global_datastore = gd.read()
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_TRENDY_PLAYER,
                global_datastore['trendy_author']
            )
        if PLACEHOLDER_FUN_VALUE in map_data:
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_FUN_VALUE,
                bytes([player_data['fun']])
            )
        if PLACEHOLDER_FUN_VALUE_STR in map_data:
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_FUN_VALUE_STR,
                str(int(player_data['fun']))
            )
        if PLACEHOLDER_CURRENT_YEET in map_data:
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_CURRENT_YEET,
                mechanics.get_current_yeet_name()
            )
        if PLACEHOLDER_CURRENT_YEET_ID in map_data:
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_CURRENT_YEET_ID,
                mechanics.warp(4, 29, 0x5133 + mechanics.get_current_yeet())
            )
        if PLACEHOLDER_CC1_FLAG in map_data:
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_CC1_FLAG,
                bytes([1 if "cc1_clear" in player_data['special_flags'] else 0])
            )
        if PLACEHOLDER_CC2_FLAG in map_data:
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_CC2_FLAG,
                bytes([1 if "cc2_clear" in player_data['special_flags'] else 0])
            )
        if PLACEHOLDER_CC3_FLAG in map_data:
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_CC3_FLAG,
                bytes([1 if "cc3_clear" in player_data['special_flags'] else 0])
            )
        if PLACEHOLDER_CC4_FLAG in map_data:
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_CC4_FLAG,
                bytes([1 if "cc4_clear" in player_data['special_flags'] else 0])
            )
        if PLACEHOLDER_RND_WORD in map_data:
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_RND_WORD,
                mechanics.get_yeetordle_word()
            )
        if PLACEHOLDER_YEET_TIME in map_data:
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_YEET_TIME,
                util.timestring(int(time.time()) - player_data['yeet']['start'])
            )
        if PLACEHOLDER_YEET_PLACE in map_data:
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_YEET_PLACE,
                bytes([yeet_completion_status]) + util.utf8_to_gen3(util.placestring(yeet_completion_place))
            )
        if PLACEHOLDER_YEET_FIRST_BLOOD in map_data:
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_YEET_FIRST_BLOOD,
                yeet_completion_name
            )
        if PLACEHOLDER_YEET_ID in map_data:
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_YEET_ID,
                mechanics.warp(4, 29, 0x5133 + player_data['yeet']['index'], 'u')
            )
        if PLACEHOLDER_EVENT_FLAGS in map_data:
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_EVENT_FLAGS,
                bytes(player_data['state'])
            )
        if PLACEHOLDER_TIMING in map_data:
            dt = datetime.datetime.now()
            map_data = util.replace_placeholder(
                map_data, PLACEHOLDER_TIMING,
                bytes([
                    dt.hour % 3,
                    dt.hour % 4,
                    dt.hour % 24,
                    dt.minute % 60
                ])
            )
        # write any changes
        d.write(player_data)
        
    return map_data

def handle_noop(uid, data, turbo):
    return b"NOOP"
    
def handle_savestate(uid, data, turbo):
    with datastore.open_user_datastore(uid) as d:
        player_data = d.read()
        
        new_flags = [x for x in data[4:]]
        old_flags = player_data['state']
        
        if len(new_flags) < 16:
            raise FoolsDescriptiveProcessingError("wrong state data")
        
        flag_diff = []
        flag_list = [i for i in dir(flags) if i.startswith("FLAG_")]
        for flag in flag_list:
            flag_val = eval("flags.%s" % flag)
            if flag_val == flags.FLAG_MANSION_PICKING1: continue
            if flag_val == flags.FLAG_MANSION_PICKING3: continue
            if flag_val == flags.FLAG_WESTERN_RELIC_ITEM: continue
            if util.checkflag(new_flags, flag_val) != util.checkflag(old_flags, flag_val):
                flag_diff.append("%s=%i" % (flag, 1 if util.checkflag(new_flags, flag_val) else 0))
            
        logger.log(TAG, "uid %i state change diff [%s]" % (uid, ", ".join(flag_diff)))

        if len(flag_diff) >= 5:
            raise FoolsDescriptiveProcessingError("wrong state data")

        player_data['state'] = new_flags
        d.write(player_data)
    return b"CLPD"

def handle_lottery(uid, data, turbo):
    with datastore.open_user_datastore(uid) as d:
        player_data = d.read()
        drawings = mechanics.get_lottery_data()
        drawing_str = util.utf8_to_gen3('\u10b8 '.join(drawings), ignore_errors=True)
        num_matches = 0
        for c in drawings:
            if c in player_data['username'].upper():
                num_matches += 1
        match_str = util.utf8_to_gen3(
            ("bepis", "single", "double", "triple", "quadruple", "quintuple")[num_matches]
        )
        player_data['lottery'] = max(player_data['lottery'], num_matches)
        d.write(player_data)
        return util.pad(drawing_str, 16) + util.pad(match_str, 16)

def handle_savephrase(uid, data, turbo):
    with datastore.open_user_datastore(uid) as d:
        player_data = d.read()
    new_phrase = util.gen3_to_utf8(data[4:])
    if len(new_phrase) > 26:
        raise FoolsDescriptiveProcessingError("invalid trendy phrase")
    new_author = player_data['username']
    logger.log(TAG, "uid %i phrase change [%s]" % (uid, new_phrase))
    with datastore.open_global_datastore() as d:
        global_data = d.read()
        global_data['trendy_author'] = new_author
        global_data['trendy_phrase'] = new_phrase
        d.write(global_data)
    return b"PLPD"

def handle_cc3pass(uid, data, turbo):
    if turbo:
        raise FoolsDescriptiveProcessingError("cc3 is not available with turbopacket to discourage server-side bruteforcing; use normal /packet instead")
        
    logger.log(TAG, "uid %i cc3 attempt data=%s" % (uid, data[4:].hex()))
    
    if not util.test_cc3_passwd(data[4:]):
        raise FoolsDescriptiveProcessingError("cc3 pass wrong")
    
    with datastore.open_user_datastore(uid) as d:
        player_data = d.read()
        if 'cc3_clear' not in player_data['special_flags']:
            player_data['special_flags'].append('cc3_clear')
        d.write(player_data)
    return b"C3OK"

import hashlib
import os
import base64
import random
from Crypto.Cipher import AES

def handle_makecert(uid, data, turbo):
    if turbo:
        raise FoolsDescriptiveProcessingError("cc4 is not available with turbopacket to discourage server-side bruteforcing; use normal /packet instead")
    cert_key = hashlib.sha256(b"%s-cc4key" % config.SECRET_KEY).digest()
    cert_iv = hashlib.sha256(b"%s-cc4iv" % config.SECRET_KEY).digest()[0:AES.block_size]
    directives = util.bytes_ffterm(data[4:]).split(b"/")
    cert_type = b"undefined"
    cert_holder = b"undefined"
    for directive in directives:
        if directive.count(b'=') != 1:
            raise FoolsDescriptiveProcessingError("directive without value or with multiple values")
        key, value = directive.split(b"=")
        if key == b'holder':
            cert_holder = value
        if key == b'type':
            if value != b'silver':
                raise FoolsDescriptiveProcessingError("you may only generate silver certificates")
            cert_type = value
    cert_serial = bytes(str(random.randrange(1000000, 9999999)), 'ascii')
    cert_data = b"authority=CrackerFour/serial=%s/holder=%s/type=%s" % (cert_serial, cert_holder, cert_type)
    while len(cert_data) % AES.block_size != 0:
        cert_data += b'\xff'
    cipher = AES.new(cert_key, AES.MODE_CBC, cert_iv)
    out = base64.b64encode(cipher.encrypt(cert_data)) + b'\xff'
    return out
    
def handle_testcert(uid, data, turbo):
    if turbo:
        raise FoolsDescriptiveProcessingError("cc4 is not available with turbopacket to discourage server-side bruteforcing; use normal /packet instead")
    cert_key = hashlib.sha256(b"%s-cc4key" % config.SECRET_KEY).digest()
    cert_iv = hashlib.sha256(b"%s-cc4iv" % config.SECRET_KEY).digest()[0:AES.block_size]
    enc = base64.b64decode(util.bytes_ffterm(data[4:]))
    cipher = AES.new(cert_key, AES.MODE_CBC, cert_iv)
    decr = util.bytes_ffterm(cipher.decrypt(enc))
    directives = decr.split(b"/")
    control_byte = b'N'
    cert_type = b'undefined'
    cert_holder = b'undefined'
    for directive in directives:
        if directive.count(b'=') != 1:
            return b"N\0\0\0error=1/desc=Directive with more than 1 value/authority=CrackerFour"
        key, value = directive.split(b"=")
        if key != b'type' and key != b'holder' and key != b'authority' and key != b'serial':
            return b"N\0\0\0error=1/desc=Invalid key %s/authority=CrackerFour" % key
        if key == b'type':
            if value == b'bronze': control_byte = b'B'
            elif value == b'silver': control_byte = b'S'
            elif value == b'gold': control_byte = b'G'
            else: return b"N\0\0\0error=1/desc=Wrong cert type %s/authority=CrackerFour" % value
            cert_type = value
        if key == b'holder':
            cert_holder = value
        if key == b'authority' and value != b'CrackerFour':
            return b"N\0\0\0error=1/desc=Invalid authority %s/authority=CrackerFour" % value
    if control_byte == b'G':
        with datastore.open_user_datastore(uid) as d:
            player_data = d.read()
            if 'cc4_clear' not in player_data['special_flags']:
                player_data['special_flags'].append('cc4_clear')
            d.write(player_data)
    return b"%s\0\0\0%s\xff" % (control_byte, decr)

packet_handlers = {
    0x01: handle_getmap,
    0x02: handle_savestate,
    0x03: handle_noop,
    0x04: handle_savephrase,
    0x05: handle_lottery,
    0x06: handle_cc3pass,
    0x07: handle_makecert,
    0x08: handle_testcert
}