import threading
import time

ratelimiter_lock = threading.Lock()

ratelimiter_storage = {}
ratelimiter_index = 0

class RateLimitExceededError(Exception):
    pass

def test(key, threshold):
    global ratelimiter_storage, ratelimiter_index, ratelimiter_lock
    with ratelimiter_lock:
        now = int(time.time())
        if now != ratelimiter_index:
            ratelimiter_storage = {}
            ratelimiter_index = now
        if key not in ratelimiter_storage:
            ratelimiter_storage[key] = 0
        ratelimiter_storage[key] += 1
        r = ratelimiter_storage[key]
    # print(key, r, threshold)
    if r > threshold:
        raise RateLimitExceededError(key)
