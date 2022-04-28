import sys
import glob
import json

cardinal_to_neutral = {
    "n": "u",
    "s": "d",
    "w": "l",
    "e": "r"
}

try:
    map1_idx = sys.argv[1]
    map1_dir_info = sys.argv[2]
    map2_idx = sys.argv[3]
    map2_dir_info = sys.argv[4]
except:
    print("usage: connect_maps.py [firstID] [firstDirection][firstNumWarps] [secondID] [secondDirection][secondNumWarps]")
    print("example: connect_maps.py 0100 w4 0210 n4")
    sys.exit(1)

map1_loc = glob.glob("pokeemerald/data/maps/x%s*/map.json" % map1_idx)[0]
map2_loc = glob.glob("pokeemerald/data/maps/x%s*/map.json" % map2_idx)[0]

with open(map1_loc, "r") as f:
    map1 = json.load(f)
with open(map2_loc, "r") as f:
    map2 = json.load(f)

map1_sorted_evts = map1["warp_events"]
map2_sorted_evts = map2["warp_events"]

if map1_dir_info[0] == 'n':
    # by lowest y, then lowest x
    map1_sorted_evts = sorted(map1_sorted_evts, key=lambda x: x["x"])
    map1_sorted_evts = sorted(map1_sorted_evts, key=lambda x: x["y"])
elif map1_dir_info[0] == 's':
    # by highest y, then lowest x
    map1_sorted_evts = sorted(map1_sorted_evts, key=lambda x: x["x"])
    map1_sorted_evts = sorted(map1_sorted_evts, key=lambda x: -x["y"])
elif map1_dir_info[0] == 'w':
    # by lowest x, then lowest y
    map1_sorted_evts = sorted(map1_sorted_evts, key=lambda x: x["y"])
    map1_sorted_evts = sorted(map1_sorted_evts, key=lambda x: x["x"])
elif map1_dir_info[0] == 'e':
    # by highest x, then lowest y
    map1_sorted_evts = sorted(map1_sorted_evts, key=lambda x: x["y"])
    map1_sorted_evts = sorted(map1_sorted_evts, key=lambda x: -x["x"])

if map2_dir_info[0] == 'n':
    # by lowest y, then lowest x
    map2_sorted_evts = sorted(map2_sorted_evts, key=lambda x: x["x"])
    map2_sorted_evts = sorted(map2_sorted_evts, key=lambda x: x["y"])
elif map2_dir_info[0] == 's':
    # by highest y, then lowest x
    map2_sorted_evts = sorted(map2_sorted_evts, key=lambda x: x["x"])
    map2_sorted_evts = sorted(map2_sorted_evts, key=lambda x: -x["y"])
elif map2_dir_info[0] == 'w':
    # by lowest x, then lowest y
    map2_sorted_evts = sorted(map2_sorted_evts, key=lambda x: x["y"])
    map2_sorted_evts = sorted(map2_sorted_evts, key=lambda x: x["x"])
elif map2_dir_info[0] == 'e':
    # by highest x, then lowest y
    map2_sorted_evts = sorted(map2_sorted_evts, key=lambda x: x["y"])
    map2_sorted_evts = sorted(map2_sorted_evts, key=lambda x: -x["x"])

map1_num_warps = int(map1_dir_info[1])
map2_num_warps = int(map2_dir_info[1])
if map1_num_warps < 2:
    raise ValueError("map1_num_warps")
if map2_num_warps < 2:
    raise ValueError("map2_num_warps")

map1_targetxyd = (
    map2_sorted_evts[map2_num_warps-2]['x'],
    map2_sorted_evts[map2_num_warps-2]['y'],
    cardinal_to_neutral[map1_dir_info[0]]
)

map2_targetxyd = (
    map1_sorted_evts[map1_num_warps-2]['x'],
    map1_sorted_evts[map1_num_warps-2]['y'],
    cardinal_to_neutral[map2_dir_info[0]]
)

for i in range(0, map1_num_warps):
    map1_sorted_evts[i]['tx'] = str(map1_targetxyd[0])
    map1_sorted_evts[i]['ty'] = str(map1_targetxyd[1])
    map1_sorted_evts[i]['dir'] = map1_targetxyd[2]
    map1_sorted_evts[i]['connected_map'] = "0x%s" % map2_idx[0:4]

for i in range(0, map2_num_warps):
    map2_sorted_evts[i]['tx'] = str(map2_targetxyd[0])
    map2_sorted_evts[i]['ty'] = str(map2_targetxyd[1])
    map2_sorted_evts[i]['dir'] = map2_targetxyd[2]
    map2_sorted_evts[i]['connected_map'] = "0x%s" % map1_idx[0:4]

map1["warp_events"] = map1_sorted_evts
map2["warp_events"] = map2_sorted_evts

with open(map1_loc, "w") as f:
    json.dump(map1, f)
with open(map2_loc, "w") as f:
    json.dump(map2, f)