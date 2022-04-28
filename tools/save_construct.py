import sys

savedata = bytearray(open(sys.argv[1], "rb").read())
sz = 3968

checksum = 0

for i in range(0xf000, 0xf000 + sz, 4):
    r = savedata[i+3] << 24
    r |= savedata[i+2] << 16
    r |= savedata[i+1] << 8
    r |= savedata[i]
    checksum += r

checksum = (checksum & 0xffff) + ((checksum >> 16) & 0xffff)
checksum = checksum & 0xffff

savedata[0xfff7] = checksum >> 8
savedata[0xfff6] = checksum & 0xff

# -------------------

checksum = 0
sz = 3848

for i in range(0x12000, 0x12000 + sz, 4):
    r = savedata[i+3] << 24
    r |= savedata[i+2] << 16
    r |= savedata[i+1] << 8
    r |= savedata[i]
    checksum += r

checksum = (checksum & 0xffff) + ((checksum >> 16) & 0xffff)
checksum = checksum & 0xffff

savedata[0x12ff7] = checksum >> 8
savedata[0x12ff6] = checksum & 0xff

asm = open(sys.argv[2], 'rb').read()[0x0203d000:]

print("sz = %i/%i (%.2f%%)" % (len(asm), 0x3000, (len(asm)/0x3000)*100))
if len(asm) > 0x3000:
    raise RuntimeError("section 1 is overfilled!")

for i in range(0, len(asm)):
    savedata[0x0010 + i] = asm[i]

with open("save.sav", "wb") as fp:
    fp.write(savedata)