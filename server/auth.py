import hashlib
import time
import hmac
import random

import logger
import datastore
from config import SECRET_KEY

TAG = "Auth"

def make_sig(gen_time, uid, rnd):
    h = hashlib.sha256(b"token_%s-%i-%i-%i" % (SECRET_KEY, gen_time, uid, rnd))
    return h.hexdigest()

def validate(uid, token):
    token_sp = token.split("-")
    try:
        gen_time = int(token_sp[0])
        token_uid = int(token_sp[1])
        rnd = int(token_sp[2])

        sig_provided = token_sp[3]
        sig_reference = make_sig(gen_time, token_uid, rnd)

        time_now = int(time.time())
        if gen_time + 60*60 < time_now:
            return False
        if not hmac.compare_digest(sig_provided, sig_reference):
            return False
        if uid != -1:
            if token_uid != uid:
                return False
    except Exception as e:
        return False
    return True

def create(uid):
    gen_time = int(time.time())
    # need not to be CSPRNG, it's just to prevent obtaining the same token twice
    rnd = random.randrange(100000, 999999)
    signature = make_sig(gen_time, uid, rnd)
    return "%i-%i-%i-%s" % (gen_time, uid, rnd, signature)

def pw_hash(x):
    # this is a bad hash but w/e
    return hashlib.sha256(bytes(x, 'utf-8') + SECRET_KEY).hexdigest()

def pw_compare(x, h):
    return hmac.compare_digest(pw_hash(x), h)

def token_uid(t):
    t = t.split("-")
    return int(t[1])