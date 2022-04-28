import json
import random

def json_bytes(x):
    return bytes(json.dumps(x), 'utf-8')

def json_error(c, x):
    return [json_bytes({
        "error": c,
        "msg": x
    })]

def json_ok(x):
    return [json_bytes({
        "error": 0,
        "data": x
    })]

UTF8_GEN3_CHARMAP = {
    ' ':0x00, 'À':0x01, 'Á':0x02, 'Â':0x03, 'Ç':0x04, 'È':0x05, 'É':0x06,
    'Ê':0x07, 'Ë':0x08, 'Ì':0x09, 'Î':0x0B, 'Ï':0x0C, 'Ò':0x0D, 'Ó':0x0E, 
    'Ô':0x0F, 'Œ':0x10, 'Ù':0x11, 'Ú':0x12, 'Û':0x13, 'Ñ':0x14, 'ß':0x15, 
    'à':0x16, 'á':0x17, 'ç':0x19, 'è':0x1A, 'é':0x1B, 'ê':0x1C, 'ë':0x1D, 
    'ì':0x1E, 'î':0x20, 'ï':0x21, 'ò':0x22, 'ó':0x23, 'ô':0x24, 'œ':0x25, 
    'ù':0x26, 'ú':0x27, 'û':0x28, 'ñ':0x29, 'Í':0x5A, 'â':0x68, 'í':0x6F, 
    '0':0xA1, '1':0xA2, '2':0xA3, '3':0xA4, '4':0xA5, '5':0xA6, '6':0xA7, 
    '7':0xA8, '8':0xA9, '9':0xAA, '.':0xAD, '-':0xAE, 'A':0xBB, 'B':0xBC, 
    'C':0xBD, 'D':0xBE, 'E':0xBF, 'F':0xC0, 'G':0xC1, 'H':0xC2, 'I':0xC3, 
    'J':0xC4, 'K':0xC5, 'L':0xC6, 'M':0xC7, 'N':0xC8, 'O':0xC9, 'P':0xCA, 
    'Q':0xCB, 'R':0xCC, 'S':0xCD, 'T':0xCE, 'U':0xCF, 'V':0xD0, 'W':0xD1, 
    'X':0xD2, 'Y':0xD3, 'Z':0xD4, 'a':0xD5, 'b':0xD6, 'c':0xD7, 'd':0xD8, 
    'e':0xD9, 'f':0xDA, 'g':0xDB, 'h':0xDC, 'i':0xDD, 'j':0xDE, 'k':0xDF, 
    'l':0xE0, 'm':0xE1, 'n':0xE2, 'o':0xE3, 'p':0xE4, 'q':0xE5, 'r':0xE6, 
    's':0xE7, 't':0xE8, 'u':0xE9, 'v':0xEA, 'w':0xEB, 'x':0xEC, 'y':0xED, 
    'z':0xEE, 'Ä':0xF1, 'Ö':0xF2, 'Ü':0xF3, 'ä':0xF4, 'ö':0xF5, 'ü':0xF6
}
GEN3_UTF8_CHARMAP = {y: x for x, y in UTF8_GEN3_CHARMAP.items()}

class FoolsTextConversionError(Exception):
    pass

def utf8_to_gen3(x, ignore_errors=False):
    out = []
    for c in x:
        if c in UTF8_GEN3_CHARMAP:
            out.append(UTF8_GEN3_CHARMAP[c])
        else:
            if not ignore_errors:
                raise FoolsTextConversionError(
                    "bad character: `%s`" % c
                )
            else:
                out.append(ord(c) - 0x1000)
    out.append(0xff)
    return bytes(out)

def gen3_to_utf8(x, ignore_errors=False):
    out = []
    for b in x:
        if b == 0xff:
            break
        if b in GEN3_UTF8_CHARMAP:
            out.append(GEN3_UTF8_CHARMAP[b])
        else:
            if not ignore_errors:
                raise FoolsTextConversionError(
                    "bad g3 byte: `%.2x`" % b
                )
            else:
                out.append("?")
    return "".join(out)

def bytes_ffterm(x): 
    out = []
    for b in x:
        if b == 0xff:
            break
        out.append(b)
    return bytes(out)

def pad(x, y, fill=0xff):
    return bytes.ljust(x, y, b'\xff')

def replace_placeholder(map_data, s_from, s_to):
    if len(s_to) > len(s_from):
        raise FoolsTextConversionError(
            "placeholder OOB: %s => %s" % (s_from, s_to)
        )
    return map_data.replace(
        s_from, pad(
            s_to if isinstance(s_to, bytes) else utf8_to_gen3(s_to), 
            len(s_from)
        )
    )

def rand(x, y):
    return random.randrange(x, y)

def timestring(secs):
    mins = secs // 60
    secs = secs % 60
    return "%i minutes %i seconds" % (mins, secs)

def placestring(x):
    r = ["th", "st", "nd", "rd", "th", "th", "th", "th", "th", "th"]
    if x < 10 or x >= 20:
        return "%i%s" % (x, r[x % 10])
    else:
        return "%ith" % x

def setflag(arr, x):
    index = x - 0x400
    byte_no = index // 8
    bit_no = index % 8
    arr[byte_no] |= (1 << bit_no)

def checkflag(arr, x):
    index = x - 0x400
    byte_no = index // 8
    bit_no = index % 8
    bit = (arr[byte_no] >> bit_no) & 1
    return bit == 1
    
def test_cc3_passwd(passwd):
    mul_consts = [
        73, 97, 13, 41, 67,
        101, 89, 139, 71, 83,
        59, 181, 127, 163, 103,
        163, 149, 193, 211, 151
    ]
    add_consts = [
        6367, 5099, 4591, 4421, 4831,
        3581, 5039, 5279, 4079, 4021,
        3701, 4603, 4663, 4703, 4219,
        6481, 6983, 5407, 5297, 5099
    ]
    x = 6969
    for i in range(0, 10):
        x += passwd[i]
        x %= 65536
        x *= mul_consts[i]
        x += add_consts[i]
        x %= 65536
    res1 = x
    x = 1337
    for i in range(0, 10):
        x += passwd[i]
        x %= 65536
        x *= mul_consts[i+10]
        x += add_consts[i+10]
        x %= 65536
    res2 = x
    return res1 == 45295 and res2 == 54457
