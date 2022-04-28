import sys

with open(sys.argv[1], "rb") as f:
    data = f.read()

for i in data:
    print("db 0x%.2x" % i)
