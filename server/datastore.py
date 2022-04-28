'''
    A very simple thread-safe datastore implementation with flat files.

    It was discovered that in fools2018 and fools2019, database connections
    were the greatest bottleneck. All users shared the same relational DB
    connection, with a lot of blocking occuring within threads to ensure
    preservation of ACID guarantees. With 8+ requests every second on
    event launch, the delays would quickly stack up.

    I realized that for particular usecase of fools2021, no relational
    and/or transactional database is really necessary, and simple key value
    stores would suffice.

    This module implements simple, concurrent key value stores. While
    accessing a single datastore still blocks, it is able to access
    multiple different datastores in parallel.
    This change significantly increases performance, since each user is
    mostly using their own data and does not access data of other users.
    Therefore, each user could be handled concurrently.
'''

import json
import threading

ds_locks = {}
ds_locks_lock = threading.Lock()

class DataStore:
    def get_lock(self):
        global ds_locks
        with ds_locks_lock:
            if self.fname not in ds_locks:
                ds_locks[self.fname] = threading.Lock()
            return ds_locks[self.fname]

    def __init__(self, n):
        self.fname = "data/%s.json" % n
        self.lock = self.get_lock()

    def __enter__(self):
        self.lock.acquire()
        return self

    def __exit__(self, t, v, traceback):
        self.lock.release()

    def read(self):
        try:
            with open(self.fname, "rb") as f:
                d = json.load(f)
            return d
        except:
            return {}

    def write(self, data):
        with open(self.fname, "w") as f:
            json.dump(data, f)

def open_datastore(n):
    return DataStore(n)

def open_user_datastore(uid):
    return open_datastore("u_%i" % uid)

def open_global_datastore():
    return open_datastore("global")