# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x232D_PathOfPointless/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

PathOfPointless_MapHeader:
    .word PathOfPointless_MapLayout
    .word PathOfPointless_MapEvts
    .word NULL
    .word NULL
    .hword MUS_RG_ROUTE1
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word PathOfPointless_MapInitCode+1
    .word PathOfPointless_MapConnections
    .word PathOfPointless_MapInitScript
    .word PathOfPointless_MapName
    .word 0x1000

PathOfPointless_MapLayout:
    .word 36
    .word 30
    .word PathOfPointless_MapBorder
    .word PathOfPointless_MapData
    .word gTileset_General
    .word gTileset_Fallarbor

.align 4
PathOfPointless_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_POKEFAN_M, 0, 16, 13, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, PathOfPointless_Script1, 0
    object_event 2, OBJ_EVENT_GFX_PUSHABLE_BOULDER, 0, 10, 24, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, EventScript_StrengthBoulder, 0
    object_event 3, OBJ_EVENT_GFX_CUTTABLE_TREE, 0, 11, 24, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, EventScript_CutTree, 0x12
    object_event 4, OBJ_EVENT_GFX_PUSHABLE_BOULDER, 0, 11, 25, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, EventScript_StrengthBoulder, 0
    object_event 5, OBJ_EVENT_GFX_CUTTABLE_TREE, 0, 10, 25, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, EventScript_CutTree, 0x13

.align 4
PathOfPointless_MapCoordEvents:
PathOfPointless_WarpCoordEvents:
    coord_event 7, 24, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 25, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 26, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 27, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 12, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 13, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 14, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 15, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 32, 13, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
PathOfPointless_MapBGEvents:
    bg_event 17, 13, 0, BG_EVENT_PLAYER_FACING_ANY, PathOfPointless_Script2

.align 4
PathOfPointless_MapEvts:
    map_events 5, PathOfPointless_MapObjectEvents, 0, 0, 9, PathOfPointless_MapCoordEvents, 1, PathOfPointless_MapBGEvents

.align 4
PathOfPointless_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
PathOfPointless_MapData:
    .hword 0xa5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0x3001, 0x3120, 0x3122, 0x3001, 0xb5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xc5d5
    .hword 0xc5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0x3001, 0x3120, 0x3122, 0x3001, 0xb5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xa5dd
    .hword 0xc5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0x3001, 0x3120, 0x3122, 0x3001, 0xb5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xb5d5
    .hword 0xa5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0x3001, 0x3120, 0x3122, 0x3001, 0xc5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xb5dd
    .hword 0xa5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0x3001, 0x3120, 0x3122, 0x3001, 0xb5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xc5d5
    .hword 0xb5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0x3001, 0x3120, 0x3122, 0x3001, 0xa5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xb5dd
    .hword 0xa5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0x3001, 0x3120, 0x3122, 0x3001, 0xb5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xc5d5
    .hword 0xa5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0x3001, 0x3120, 0x3122, 0x3001, 0xa5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xc5e4, 0xc5e5, 0xc5e4, 0xb5e5, 0xa5e4, 0xa5e5
    .hword 0xb5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0x3001, 0x3120, 0x3122, 0x3001, 0xb5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d
    .hword 0xb5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0x3001, 0x3120, 0x3122, 0x3001, 0xb5e4, 0xc5e5, 0xc5e4, 0xb5e5, 0xa5dc, 0xb5dd, 0xb5e4, 0xb5e5, 0xb5e4, 0xa5e5, 0xc5e4, 0xc5e5, 0xc5e4, 0xb5e5, 0xb468, 0xc469, 0xb469, 0xa469, 0xb46a, 0x300d
    .hword 0xa5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0x3001, 0x3120, 0x3122, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xa5d4, 0xb5d5, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x3001, 0xa483, 0xb484, 0xb470, 0xa46b, 0xc46c, 0xa46d, 0xb472, 0x300d
    .hword 0xa5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0x3001, 0x3120, 0x3122, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xa5e4, 0xc5e5, 0x300d, 0x300d, 0x300d, 0x3001, 0x31d0, 0x31d2, 0xb48b, 0xb48c, 0xa470, 0xa473, 0xb471, 0xc475, 0xa472, 0x300d
    .hword 0xa5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0x3001, 0x3120, 0x3121, 0x3119, 0x3119, 0x311a, 0x3001, 0x3001, 0x3001, 0x300d, 0x300d, 0x3001, 0x3004, 0x3001, 0x31e0, 0x31e2, 0x3001, 0x300d, 0xb470, 0xa47b, 0xb49f, 0xc47d, 0xb472, 0x3001
    .hword 0xb5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0x3001, 0x3128, 0x3129, 0x3129, 0x3129, 0xc403, 0x31ce, 0x31cf, 0x31d0, 0x31d2, 0x3004, 0x3001, 0x3001, 0x3001, 0x31ce, 0x31cf, 0x3001, 0x3001, 0xc478, 0xc479, 0x30a7, 0xa479, 0xc47a, 0x3004
    .hword 0xb5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xb5d4, 0xa5d5, 0x31e0, 0x31e2, 0x3001, 0x300d, 0x300d, 0x300d, 0xb5d4, 0xa5d5, 0x3001, 0x3004, 0x300d, 0x300d, 0x31d0, 0x31d2, 0x3001, 0x3001
    .hword 0xa5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0x3001, 0x3001, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0xc5dc, 0xb5dd, 0x31ce, 0x31cf, 0x31c6, 0x31c7, 0x31c6, 0x31c7, 0xb5dc, 0xa5dd, 0x31ce, 0x31cf, 0xc483, 0xb484, 0x31e0, 0x31e2, 0x31ce, 0x31cf
    .hword 0xa5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0x1188, 0x118a, 0xc5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xc48b, 0xa48c, 0x3004, 0x3001, 0xb5d4, 0xb5d5
    .hword 0xb5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0x1190, 0x1192, 0xb5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0xa5dc, 0xa5dd
    .hword 0xb5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0x1190, 0x1192, 0xa5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xa5d5
    .hword 0xc5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0x1190, 0x1192, 0xa5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xb5dd
    .hword 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0x1190, 0x1192, 0xa5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xc5d5
    .hword 0xa5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0x1190, 0x1192, 0xc5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xc5dd
    .hword 0xb5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0x1190, 0x1192, 0xc5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xc5d5
    .hword 0xa5e4, 0xa5e5, 0xa5e4, 0xb5e5, 0xc5e4, 0xb5e5, 0xc5e4, 0xa5e5, 0xb5e4, 0xc5e5, 0xb5e4, 0xc5e5, 0x1190, 0x1192, 0xa5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xa5dd
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3002, 0x3002, 0xb5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xa5d5
    .hword 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d2, 0x3001, 0x3001, 0x31ce, 0x31cf, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xb5dd
    .hword 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e2, 0x3001, 0x3001, 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xc5d5
    .hword 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xa5dd
    .hword 0xc5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5
    .hword 0xa5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xa5dd

.align 4
PathOfPointless_MapConnections:
    .hword 0x2435
    .byte 152, 14
    .hword 0x2435
    .byte 152, 14
    .hword 0x2435
    .byte 152, 14
    .hword 0x2435
    .byte 152, 14
    .hword 0x223a
    .byte 17, 146
    .hword 0x223a
    .byte 17, 146
    .hword 0x223a
    .byte 17, 146
    .hword 0x223a
    .byte 17, 146
    .hword 20591
    .byte 4, 138

.align 4
PathOfPointless_MapName:
    .string "PATH OF POINTLESS$"

# scripts/232D_PathOfPointless.s

.align 4

PathOfPointless_MapInitCode:
    bx lr

PathOfPointless_MapInitScript:
    end

PathOfPointless_Script1:
    lock
    faceplayer
    msgbox PathOfPointless_Script1_Text
    release
    end

PathOfPointless_Script1_Text:
    .string "It's been four years, and they still\n"
    .string "haven't made any progress towards\l"
    .string "building that path.\p"
    .string "They ran into a mysterious cave while\n"
    .string "plotting the land, and construction\l"
    .string "plans had to be suspended.\p"
    .string "I don't think this passage is ever going\n"
    .string "to be completed.$"

PathOfPointless_Script2:
    lock
    msgbox PathOfPointless_Script2_Text
    release
    end

PathOfPointless_Script2_Text:
    .string "WESTERN - EASTERN GLITCHLAND PASS\n"
    .string "In constuction!$"


EventScript_CutTree:
    lock
    faceplayer
    msgbox EventScript_CutTree_Text
    release
    end

EventScript_CutTree_Text:
    .string "redacted$"

EventScript_StrengthBoulder:
    lock
    faceplayer
    msgbox EventScript_StrengthBoulder_Text
    release
    end

EventScript_StrengthBoulder_Text:
    .string "redacted$"
