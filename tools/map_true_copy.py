import sys
import glob
import os
import json

try:
    map1_idx = sys.argv[1]
    base = sys.argv[2]
except:
    print("usage: map_copy.py [fromID] [toName]")
    print("example: map_copy.py 0100 x0101_UltimateBepis")
    sys.exit(1)

with open(glob.glob("pokeemerald/data/layouts/x%s*/map.bin" % map1_idx)[0], 'rb') as f:
    map_data = f.read()
with open(glob.glob("pokeemerald/data/layouts/x%s*/border.bin" % map1_idx)[0], 'rb') as f:
    map_border = f.read()
with open(glob.glob("pokeemerald/data/maps/x%s*/map.json" % map1_idx)[0], "r") as f:
    map_json = json.load(f)

try:
    os.makedirs("%s/%s" % ("pokeemerald/data/layouts", base))
except:
    pass
try:
    os.makedirs("%s/%s" % ("pokeemerald/data/maps", base))
except:
    pass
        
with open("pokeemerald/data/layouts/" + base + "/map.bin", "wb") as f:
    f.write(map_data)
with open("pokeemerald/data/layouts/" + base + "/border.bin", "wb") as f:
    f.write(map_border)

map_json['id'] = "MAP_" + base.upper()
map_json['name'] = base
prev_layout = map_json['layout']
map_json['layout'] = "LAYOUT_" + base.upper()

with open("pokeemerald/data/maps/" + base + "/map.json", "w") as f:
    json.dump(map_json, f)
with open("pokeemerald/data/maps/" + base + "/scripts.inc", "wb") as f:
    f.write(b"")

with open("pokeemerald/data/layouts/layouts.json", "r") as f:
    cur_lays = json.load(f)

# find prev layout
prev_lay = {
    "width": 12,
    "height": 12,
    "primary_tileset": "gTileset_General",
    "secondary_tileset": "gTileset_Petalburg"
}
    
for lay in cur_lays['layouts']:
    if lay['id'] == prev_layout:
        prev_lay = lay
    
cur_lays['layouts'].append({
    "id": "LAYOUT_" + base.upper(),
    "name": base + "_Layout",
    "width": prev_lay['width'],
    "height": prev_lay['height'],
    "primary_tileset": prev_lay['primary_tileset'],
    "secondary_tileset": prev_lay['secondary_tileset'],
    "border_filepath": "data/layouts/" + base + "/border.bin",
    "blockdata_filepath": "data/layouts/" + base + "/map.bin"
})

with open("pokeemerald/data/layouts/layouts.json", "w") as f:
    json.dump(cur_lays, f)

with open("pokeemerald/data/maps/map_groups.json", "r") as f:
    cur_groups = json.load(f)
cur_groups['gMapGroup_Bepis'].append(base)
with open("pokeemerald/data/maps/map_groups.json", "w") as f:
    json.dump(cur_groups, f)

if base[0] == 'x':
    base = base[1:]
    pure_base = base.split("_")[1]
else:
    print("note: script was not autogenerated, name was not in expected format")

with open("scripts/%s.s" % base, "w") as f:
    f.write("%s_MapInitCode:\n    bx lr\n\n%s_MapInitScript:\n    end\n\n" % (pure_base, pure_base))
