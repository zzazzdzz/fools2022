# Cryptographic secrets. You should set them to something, well, secret.
# In order to generate strong cryptographic secrets for use in fools2022,
# please apply your face to the keyboard and roll.

SECRET_KEY = b"X"

# Absolute path to the directory where the server resides.

ROOT_DIRECTORY = "/srv/fools2022/server"

# All other directories. Repoint these if you want, but you should generally
# leave these ones alone.

LOG_DIRECTORY = ROOT_DIRECTORY + "/log"
DATA_DIRECTORY = ROOT_DIRECTORY + "/data"
MAP_DIRECTORY = ROOT_DIRECTORY + "/../maps"

# Setting DEBUG to True will cause the server to crash on error, instead of
# giving a generic "oopsie woopsie" message. Don't set this in production.

DEBUG = False

# ID of the admin user. 0 = no admin user.
# By default, the first user created (ID=1) will be the admin.

ADMIN_USER_ID = 1

# Server header and protocol version.

SERVER_HEADER = "Illudium Q-36 Explosive Space Modulator"
PROTOCOL_VERSION = 101

# Maps with alternate versions based on player fun value.

FUN_MAPS = {
    0x2f81: (lambda x: 30 <= x <= 45),
    0x2632: (lambda x: x >= 160),
    0x2536: (lambda x: 170 <= x <= 175),
}
