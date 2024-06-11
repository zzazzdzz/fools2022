# fools2018 to fools2022 crude map converter, to kickstart remapping

import glob
import re
import os
import json
import os.path

FOOLS2022_BASE = "w:/code/fools2022"
FOOLS2018_BASE = "w:/code/fools2018"

MODERN_BLOCKS = open(FOOLS2022_BASE + "/tools/18to22_blocks.bin", "rb").read()

maps_2018 = glob.glob(FOOLS2018_BASE + "/maps/*.asm")
for m in maps_2018:
    base = "x" + os.path.basename(m.replace(".asm",""))
    if "TestMap" in m or "Template" in m:
        continue
    w = 0
    h = 0
    blocks = []

    new_blocks_even = []
    new_blocks_odd = []

    reading_blocks = False
    with open(m, 'r') as fp:
        for l in fp.readlines():
            if l.strip() == "":
                continue
            if 'hdr_dimensions' in l:
                dims = re.findall(r"\d+", l)
                w = int(dims[0])*2
                h = int(dims[1])*2
            if '_Blocks:' in l:
                reading_blocks = True
                continue
            if reading_blocks:
                if ',' not in l:
                    reading_blocks = False
                    continue
                l = l.strip().replace("db $","$").split(",")
                for val in l:
                    blocks.append(int(val[1:], 16))
    print(m)
    print(w, h)
    print(blocks)
    for i in blocks:
        stride = (i // 16) * 64
        even_block_slice = MODERN_BLOCKS[stride + i*4 : stride + i*4 + 4]
        odd_block_slice = MODERN_BLOCKS[64 + stride + i*4 : 64 + stride + i*4 + 4]
        new_blocks_even += even_block_slice
        new_blocks_odd += odd_block_slice
    merged = []
    for i in range(0, len(new_blocks_even), w*2):
        merged += new_blocks_even[i:i+w*2]
        merged += new_blocks_odd[i:i+w*2]
    try:
        os.makedirs("%s/%s" % (FOOLS2022_BASE + "/pokeemerald/data/layouts", base))
    except:
        pass
    try:
        os.makedirs("%s/%s" % (FOOLS2022_BASE + "/pokeemerald/data/maps", base))
    except:
        pass
    with open(FOOLS2022_BASE + "/pokeemerald/data/layouts/" + base + "/map.bin", "wb") as f:
        f.write(bytes(merged))
    with open(FOOLS2022_BASE + "/pokeemerald/data/layouts/" + base + "/border.bin", "wb") as f:
        f.write(bytes([0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01]))
    
    obj = {
        "id": "MAP_" + base.upper(),
        "name": base,
        "layout": "LAYOUT_" + base.upper(),
        "music": "MUS_RG_SEVII_CAVE",
        "region_map_section": "MAPSEC_NONE",
        "requires_flash": False,
        "weather": "WEATHER_NONE",
        "map_type": "MAP_TYPE_ROUTE",
        "allow_cycling": True,
        "allow_escaping": True,
        "allow_running": True,
        "show_map_name": True,
        "battle_scene": "MAP_BATTLE_SCENE_NORMAL",
        "connections": None,
        "object_events": [],
        "warp_events": [],
        "coord_events": [],
        "bg_events": []
    }
    with open(FOOLS2022_BASE + "/pokeemerald/data/maps/" + base + "/map.json", "w") as f:
        json.dump(obj, f)
    with open(FOOLS2022_BASE + "/pokeemerald/data/maps/" + base + "/scripts.inc", "wb") as f:
        f.write(b"")
    with open(FOOLS2022_BASE + "/pokeemerald/data/layouts/layouts.json", "r") as f:
        cur_lays = json.load(f)
    cur_lays['layouts'].append({
        "id": "LAYOUT_" + base.upper(),
        "name": base + "_Layout",
        "width": w,
        "height": h,
        "primary_tileset": "gTileset_General",
        "secondary_tileset": "gTileset_Petalburg",
        "border_filepath": "data/layouts/" + base + "/border.bin",
        "blockdata_filepath": "data/layouts/" + base + "/map.bin"
    })
    with open(FOOLS2022_BASE + "/pokeemerald/data/layouts/layouts.json", "w") as f:
        json.dump(cur_lays, f)
    with open(FOOLS2022_BASE + "/pokeemerald/data/maps/map_groups.json", "r") as f:
        cur_lays = json.load(f)
    cur_lays['gMapGroup_Bepis'].append(base)
    with open(FOOLS2022_BASE + "/pokeemerald/data/maps/map_groups.json", "w") as f:
        json.dump(cur_lays, f)
    
