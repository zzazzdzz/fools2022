import sys
import glob
import os

try:
    map1_idx = sys.argv[1]
    map2_idx = sys.argv[2]
except:
    print("usage: map_copy.py [fromID] [toID]")
    print("example: map_copy.py 0100 0210")
    sys.exit(1)

map1_loc = glob.glob("pokeemerald/data/layouts/x%s*/map.bin" % map1_idx)[0]
map2_loc = glob.glob("pokeemerald/data/layouts/x%s*/map.bin" % map2_idx)[0]
os.system("cp \"%s\" \"%s\"" % (map1_loc, map2_loc))

map1_loc = glob.glob("pokeemerald/data/maps/x%s*/map.json" % map1_idx)[0]
map2_loc = glob.glob("pokeemerald/data/maps/x%s*/map.json" % map2_idx)[0]
os.system("cp \"%s\" \"%s\"" % (map1_loc, map2_loc))

