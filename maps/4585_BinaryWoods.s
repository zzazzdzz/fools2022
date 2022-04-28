# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x4585_BinaryWoods/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

BinaryWoods_MapHeader:
    .word BinaryWoods_MapLayout
    .word BinaryWoods_MapEvts
    .word NULL
    .word NULL
    .hword MUS_RG_VIRIDIAN_FOREST
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word BinaryWoods_MapInitCode+1
    .word BinaryWoods_MapConnections
    .word BinaryWoods_MapInitScript
    .word BinaryWoods_MapName
    .word 0x0b18

BinaryWoods_MapLayout:
    .word 38
    .word 38
    .word BinaryWoods_MapBorder
    .word BinaryWoods_MapData
    .word gTileset_General
    .word gTileset_Mossdeep

.align 4
BinaryWoods_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_OLD_WOMAN, 0, 26, 24, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, BinaryWoods_Script1, 0
    object_event 2, OBJ_EVENT_GFX_BUG_CATCHER, 0, 16, 22, 3, MOVEMENT_TYPE_WANDER_UP_AND_DOWN, 0, 2, TRAINER_TYPE_NONE, 0, BinaryWoods_Script2, 0
    object_event 3, OBJ_EVENT_GFX_BOY_3, 0, 11, 8, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, BinaryWoods_Script3, 0
    object_event 4, OBJ_EVENT_GFX_PICNICKER, 0, 3, 22, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, BinaryWoods_Script4, 0
    object_event 5, OBJ_EVENT_GFX_ITEM_BALL, 0, 3, 3, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, BinaryWoods_ItemBall, FLAG_RECEIVED_BALL5

.align 4
BinaryWoods_MapCoordEvents:
BinaryWoods_WarpCoordEvents:
    coord_event 8, 30, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 9, 30, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 10, 30, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 30, 27, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 30, 26, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 30, 25, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
BinaryWoods_MapBGEvents:
    bg_event 16, 15, 0, BG_EVENT_PLAYER_FACING_ANY, BinaryWoods_Script5

.align 4
BinaryWoods_MapEvts:
    map_events 5, BinaryWoods_MapObjectEvents, 0, 0, 6, BinaryWoods_MapCoordEvents, 1, BinaryWoods_MapBGEvents

.align 4
BinaryWoods_MapBorder:
    .byte 0x1a, 0x03, 0x1b, 0x03, 0x22, 0x03, 0x23, 0x03

.align 4
BinaryWoods_MapData:
    .hword 0xc71a, 0xc71b, 0xa71a, 0xa71b, 0xc71a, 0xb71b, 0xb71a, 0xb71b, 0xb71a, 0xb71b, 0xa71a, 0xb71b, 0xb71a, 0xb71b, 0xc71a, 0xa71b, 0xc71a, 0xa71b, 0xa71a, 0xb71b, 0xa71a, 0xa71b, 0xc71a, 0xb71b, 0xa71a, 0xb71b, 0xc71a, 0xc71b, 0xc71a, 0xa71b, 0xa71a, 0xb71b, 0xc71a, 0xb71b, 0xb71a, 0xb71b, 0xc71a, 0xc71b
    .hword 0xb722, 0xc723, 0xa722, 0xb723, 0xa722, 0xc723, 0xb722, 0xa723, 0xb722, 0xb723, 0xa722, 0xb723, 0xb722, 0xc723, 0xa722, 0xa723, 0xc722, 0xc723, 0xa722, 0xc723, 0xb722, 0xa723, 0xb722, 0xa723, 0xc722, 0xa723, 0xc722, 0xc723, 0xb722, 0xa723, 0xa722, 0xc723, 0xb722, 0xa723, 0xc722, 0xb723, 0xb722, 0xc723
    .hword 0xa71a, 0xc71b, 0x300d, 0x300d, 0x300d, 0x300d, 0xb71a, 0xb71b, 0xb71a, 0xc71b, 0x3001, 0x3001, 0xc71a, 0xb71b, 0x3001, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0xb71a, 0xb71b, 0x300d, 0x300d, 0x300d, 0x300d, 0xc71a, 0xa71b, 0xa71a, 0xc71b, 0xb71a, 0xc71b, 0xc71a, 0xc71b, 0xa71a, 0xb71b, 0xc71a, 0xc71b
    .hword 0xb722, 0xa723, 0x300d, 0x300d, 0x300d, 0x300d, 0xc722, 0xc723, 0xb722, 0xa723, 0x3001, 0x300d, 0xa722, 0xa723, 0x3001, 0x3001, 0x300d, 0x300d, 0x300d, 0x300d, 0xc722, 0xb723, 0x300d, 0x300d, 0x300d, 0x300d, 0xb722, 0xc723, 0xa722, 0xb723, 0xc722, 0xa723, 0xb722, 0xa723, 0xa722, 0xa723, 0xb722, 0xb723
    .hword 0xb71a, 0xc71b, 0x300d, 0x300d, 0x300d, 0x300d, 0xa71a, 0xa71b, 0x3001, 0x300d, 0x300d, 0x300d, 0xa71a, 0xb71b, 0xc71a, 0xc71b, 0x3001, 0x3001, 0x3001, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0xb71a, 0xc71b, 0xb71a, 0xc71b, 0xb71a, 0xc71b, 0xb71a, 0xa71b
    .hword 0xb722, 0xa723, 0x300d, 0x300d, 0x300d, 0x300d, 0xa722, 0xb723, 0x300d, 0x300d, 0x300d, 0x300d, 0xc722, 0xc723, 0xb722, 0xc723, 0x3001, 0x3001, 0x3001, 0x3001, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0xc722, 0xa723, 0xb722, 0xa723, 0xa722, 0xb723, 0xb722, 0xc723
    .hword 0xb71a, 0xc71b, 0x300d, 0x300d, 0xc71a, 0xb71b, 0xb71a, 0xc71b, 0x300d, 0x300d, 0xc71a, 0xa71b, 0xa71a, 0xa71b, 0xb71a, 0xa71b, 0xa71a, 0xb71b, 0xa71a, 0xc71b, 0xb71a, 0xc71b, 0x1188, 0x1189, 0x1189, 0x118a, 0x3001, 0x300d, 0x300d, 0x300d, 0xa71a, 0xc71b, 0xa71a, 0xa71b, 0xc71a, 0xa71b, 0xa71a, 0xa71b
    .hword 0xb722, 0xc723, 0x3001, 0x300d, 0xc722, 0xa723, 0xa722, 0xb723, 0x300d, 0x300d, 0xc722, 0xa723, 0xc722, 0xc723, 0xc722, 0xc723, 0xc722, 0xc723, 0xa722, 0xc723, 0xb722, 0xa723, 0x1190, 0x1170, 0x1170, 0x1192, 0x3001, 0x300d, 0x300d, 0x300d, 0xb722, 0xa723, 0xb722, 0xc723, 0xb722, 0xa723, 0xb722, 0xa723
    .hword 0xb71a, 0xa71b, 0x3001, 0x300d, 0xa71a, 0xb71b, 0xa71a, 0xb71b, 0x300d, 0x300d, 0x300d, 0x300d, 0xc71a, 0xa71b, 0xa71a, 0xb71b, 0xc71a, 0xa71b, 0x300d, 0x300d, 0x300d, 0x3001, 0x1190, 0x1170, 0x1170, 0x1192, 0x3001, 0x300d, 0xa71a, 0xb71b, 0xc71a, 0xc71b, 0xb71a, 0xb71b, 0xb71a, 0xa71b, 0xb71a, 0xb71b
    .hword 0xc722, 0xb723, 0x3001, 0x3001, 0xa722, 0xc723, 0xa722, 0xc723, 0x300d, 0x300d, 0x3001, 0x300d, 0xa722, 0xc723, 0xa722, 0xa723, 0xa722, 0xc723, 0x300d, 0x300d, 0x300d, 0x3001, 0x1190, 0x1170, 0x1170, 0x1192, 0x3001, 0x3001, 0xa722, 0xc723, 0xa722, 0xc723, 0xc722, 0xc723, 0xa722, 0xc723, 0xb722, 0xa723
    .hword 0xc71a, 0xb71b, 0x3001, 0x3001, 0xc71a, 0xb71b, 0xc71a, 0xc71b, 0x300d, 0x300d, 0x3001, 0x3001, 0x3001, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x3001, 0x3001, 0x1190, 0x1170, 0x1170, 0x1192, 0x3001, 0x3001, 0xa71a, 0xa71b, 0xa71a, 0xa71b, 0xb71a, 0xb71b, 0xb71a, 0xb71b, 0xc71a, 0xb71b
    .hword 0xa722, 0xb723, 0x3001, 0x3001, 0xb722, 0xa723, 0xb722, 0xc723, 0x300d, 0x3001, 0x3001, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x3001, 0x3001, 0x3001, 0x3001, 0x1190, 0x1170, 0x1170, 0x1192, 0x3001, 0x3001, 0xb722, 0xc723, 0xc722, 0xc723, 0xa722, 0xa723, 0xb722, 0xc723, 0xa722, 0xb723
    .hword 0xb71a, 0xb71b, 0x300d, 0x3001, 0x1188, 0x1189, 0x1189, 0x118a, 0x3001, 0x3001, 0x3001, 0x300d, 0xb71a, 0xa71b, 0xb71a, 0xa71b, 0xb71a, 0xa71b, 0xc71a, 0xc71b, 0x300d, 0x3001, 0x3002, 0x3002, 0xc71e, 0xc71f, 0x3001, 0x300d, 0xc71a, 0xc71b, 0xc71a, 0xa71b, 0xa71a, 0xc71b, 0xc71a, 0xc71b, 0xb71a, 0xb71b
    .hword 0xa722, 0xa723, 0x300d, 0x300d, 0x1190, 0x1170, 0x1170, 0x1192, 0x3001, 0x3001, 0x3001, 0x300d, 0xa722, 0xc723, 0xa722, 0xb723, 0xb722, 0xb723, 0xa722, 0xa723, 0x300d, 0x300d, 0x3001, 0x300d, 0xb722, 0xa723, 0x3001, 0x300d, 0xc722, 0xb723, 0xb722, 0xa723, 0xa722, 0xb723, 0xc722, 0xb723, 0xa722, 0xb723
    .hword 0xa71a, 0xa71b, 0xc71a, 0xc71b, 0x1190, 0x1170, 0x1170, 0x1192, 0x3001, 0x3001, 0xc71a, 0xb71b, 0xc71a, 0xb71b, 0xb71a, 0xa71b, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0xb71a, 0xc71b, 0x3001, 0x300d, 0xb71a, 0xb71b, 0xb71a, 0xb71b, 0xb71a, 0xa71b, 0xc71a, 0xc71b, 0xc71a, 0xb71b
    .hword 0xa722, 0xa723, 0xc722, 0xc723, 0x1190, 0x1170, 0x1170, 0x1192, 0x3001, 0x300d, 0xb722, 0xa723, 0xb722, 0xc723, 0xb722, 0xa723, 0xa41b, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0xb722, 0xb723, 0x300d, 0x300d, 0xb722, 0xa723, 0xb722, 0xb723, 0xc722, 0xa723, 0xa722, 0xb723, 0xc722, 0xc723
    .hword 0xa71a, 0xb71b, 0xc71a, 0xb71b, 0x3002, 0x3002, 0x3002, 0x3002, 0x3001, 0x300d, 0x300d, 0x300d, 0xa71a, 0xb71b, 0x3001, 0x3001, 0x3001, 0x300d, 0x300d, 0x3001, 0x300d, 0x300d, 0xb71a, 0xa71b, 0xc71a, 0xa71b, 0x300d, 0x300d, 0x300d, 0x300d, 0xa71a, 0xa71b, 0xc71a, 0xb71b, 0xa71a, 0xa71b, 0xc71a, 0xb71b
    .hword 0xa722, 0xa723, 0xb722, 0xc723, 0x3001, 0x3001, 0x3001, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0xc722, 0xa723, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x300d, 0x300d, 0xa722, 0xc723, 0xb722, 0xa723, 0x300d, 0x31d0, 0x31d2, 0x300d, 0xc722, 0xb723, 0xa722, 0xa723, 0xc722, 0xc723, 0xc722, 0xc723
    .hword 0xa71a, 0xb71b, 0xb71a, 0xa71b, 0x300d, 0x3001, 0x3001, 0x300d, 0xc71a, 0xb71b, 0x1188, 0x1189, 0x1189, 0x1189, 0x1189, 0x118a, 0x3001, 0x3001, 0xc71a, 0xb71b, 0xb71a, 0xa71b, 0xa71a, 0xa71b, 0xa71a, 0xa71b, 0x300d, 0x31d8, 0x31da, 0x300d, 0xa71a, 0xa71b, 0xa71a, 0xb71b, 0xb71a, 0xb71b, 0xb71a, 0xb71b
    .hword 0xc722, 0xb723, 0xc722, 0xa723, 0x300d, 0x300d, 0x300d, 0x300d, 0xa722, 0xa723, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x3001, 0x3001, 0xc722, 0xa723, 0xa722, 0xc723, 0xa722, 0xc723, 0xa722, 0xb723, 0x300d, 0x31d8, 0x31da, 0x300d, 0xb722, 0xc723, 0xb722, 0xc723, 0xa722, 0xa723, 0xc722, 0xb723
    .hword 0xa71a, 0xb71b, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0xc71a, 0xc71b, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x300d, 0x300d, 0xc71a, 0xc71b, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x31d8, 0x31da, 0x300d, 0xb71a, 0xb71b, 0xa71a, 0xc71b, 0xa71a, 0xb71b, 0xc71a, 0xa71b
    .hword 0xc722, 0xc723, 0x3001, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0xb722, 0xb723, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x300d, 0x300d, 0xb722, 0xa723, 0x300d, 0x31d0, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d9, 0x31da, 0x300d, 0xb722, 0xb723, 0xb722, 0xc723, 0xa722, 0xc723, 0xc722, 0xa723
    .hword 0xa71a, 0xa71b, 0x3001, 0x3001, 0x300d, 0x300d, 0xc71a, 0xa71b, 0xb71a, 0xa71b, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x300d, 0x300d, 0xb71a, 0xa71b, 0x300d, 0x31d8, 0x31d9, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31d9, 0x31da, 0x300d, 0xb71a, 0xb71b, 0xc71a, 0xb71b, 0xc71a, 0xb71b, 0xa71a, 0xa71b
    .hword 0xc722, 0xa723, 0x3001, 0x3001, 0x3001, 0x3001, 0xb722, 0xc723, 0xa722, 0xc723, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x300d, 0x300d, 0xb722, 0xc723, 0x300d, 0x31d8, 0x31da, 0x300d, 0x300d, 0x300d, 0x300d, 0x31d8, 0x31da, 0x300d, 0xc722, 0xa723, 0xa722, 0xa723, 0xc722, 0xc723, 0xc722, 0xc723
    .hword 0xc71a, 0xb71b, 0xa71a, 0xa71b, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x300d, 0x300d, 0xb71a, 0xc71b, 0x300d, 0x31d8, 0x31da, 0x300d, 0xc71a, 0xb71b, 0x3001, 0x31d8, 0x31da, 0x300d, 0xb71a, 0xa71b, 0xb71a, 0xa71b, 0xa71a, 0xb71b, 0xc71a, 0xb71b
    .hword 0xb722, 0xa723, 0xb722, 0xb723, 0x300d, 0x31d0, 0x31d1, 0x31d1, 0x31d2, 0x3001, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x300d, 0x300d, 0xb722, 0xa723, 0x3001, 0x31d8, 0x31da, 0x300d, 0xa722, 0xb723, 0x3001, 0x31d8, 0x31da, 0x300d, 0xc722, 0xa723, 0xc722, 0xb723, 0xa722, 0xa723, 0xc722, 0xb723
    .hword 0xc71a, 0xa71b, 0xc71a, 0xc71b, 0x300d, 0x31e0, 0x31e1, 0x31d9, 0x31d9, 0x31d2, 0x3002, 0x3002, 0xc71e, 0xc71f, 0xb71e, 0xc71f, 0x300d, 0x300d, 0x3001, 0x3001, 0x3001, 0x31e0, 0x31e2, 0x300d, 0xa71a, 0xc71b, 0x3001, 0x31d8, 0x31d9, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1
    .hword 0xc722, 0xb723, 0xc722, 0xa723, 0x300d, 0x300d, 0x300d, 0x31e0, 0x31d9, 0x31da, 0x3001, 0x300d, 0xc722, 0xb723, 0xa722, 0xa723, 0x300d, 0x300d, 0x300d, 0x300d, 0x3001, 0x300d, 0x300d, 0x300d, 0xa722, 0xb723, 0x3001, 0x31e0, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1
    .hword 0xc71a, 0xc71b, 0xa71a, 0xa71b, 0xa71a, 0xa71b, 0x300d, 0x300d, 0x31d8, 0x31da, 0x300d, 0x300d, 0xc71a, 0xa71b, 0xc71a, 0xb71b, 0xb71a, 0xc71b, 0x300d, 0x300d, 0x300d, 0x300d, 0xb71a, 0xa71b, 0xc71a, 0xb71b, 0x300d, 0x300d, 0x300d, 0x300d, 0xa71a, 0xb71b, 0xc71a, 0xb71b, 0xa71a, 0xa71b, 0xc71a, 0xa71b
    .hword 0xa722, 0xb723, 0xa722, 0xa723, 0xa722, 0xb723, 0x300d, 0x300d, 0x31d8, 0x31da, 0x300d, 0x300d, 0xc722, 0xa723, 0xb722, 0xc723, 0xc722, 0xb723, 0x300d, 0x300d, 0x300d, 0x300d, 0xa722, 0xa723, 0xb722, 0xc723, 0x300d, 0x300d, 0x300d, 0x300d, 0xb722, 0xa723, 0xb722, 0xa723, 0xa722, 0xa723, 0xa722, 0xa723
    .hword 0xc71a, 0xb71b, 0xc71a, 0xb71b, 0xa71a, 0xb71b, 0xb71a, 0xc71b, 0x31d8, 0x31da, 0xa71a, 0xb71b, 0xc71a, 0xa71b, 0xc71a, 0xa71b, 0xb71a, 0xa71b, 0xc71a, 0xb71b, 0xc71a, 0xa71b, 0xc71a, 0xa71b, 0xa71a, 0xa71b, 0xb71a, 0xa71b, 0xa71a, 0xc71b, 0xc71a, 0xc71b, 0xa71a, 0xc71b, 0xa71a, 0xb71b, 0xb71a, 0xa71b
    .hword 0xc722, 0xc723, 0xa722, 0xa723, 0xb722, 0xb723, 0xa722, 0xb723, 0x31d8, 0x31da, 0xa722, 0xb723, 0xa722, 0xb723, 0xa722, 0xa723, 0xc722, 0xa723, 0xb722, 0xb723, 0xa722, 0xb723, 0xb722, 0xc723, 0xb722, 0xb723, 0xb722, 0xc723, 0xa722, 0xb723, 0xb722, 0xc723, 0xb722, 0xa723, 0xb722, 0xb723, 0xc722, 0xb723
    .hword 0xb71a, 0xc71b, 0xa71a, 0xc71b, 0xa71a, 0xa71b, 0xc71a, 0xa71b, 0x31d8, 0x31da, 0xc71a, 0xb71b, 0xb71a, 0xa71b, 0xc71a, 0xa71b, 0xa71a, 0xc71b, 0xa71a, 0xc71b, 0xc71a, 0xb71b, 0xb71a, 0xc71b, 0xc71a, 0xc71b, 0xc71a, 0xb71b, 0xa71a, 0xb71b, 0xc71a, 0xa71b, 0xb71a, 0xc71b, 0xb71a, 0xc71b, 0xc71a, 0xc71b
    .hword 0xa722, 0xb723, 0xc722, 0xa723, 0xb722, 0xb723, 0xc722, 0xc723, 0x31d8, 0x31da, 0xa722, 0xb723, 0xa722, 0xc723, 0xc722, 0xb723, 0xa722, 0xa723, 0xb722, 0xb723, 0xa722, 0xc723, 0xa722, 0xb723, 0xc722, 0xb723, 0xa722, 0xb723, 0xc722, 0xa723, 0xa722, 0xb723, 0xa722, 0xb723, 0xc722, 0xc723, 0xb722, 0xb723
    .hword 0xb71a, 0xc71b, 0xa71a, 0xa71b, 0xc71a, 0xb71b, 0xc71a, 0xa71b, 0x31d8, 0x31da, 0xc71a, 0xc71b, 0xb71a, 0xa71b, 0xc71a, 0xb71b, 0xc71a, 0xc71b, 0xb71a, 0xa71b, 0xb71a, 0xc71b, 0xb71a, 0xc71b, 0xc71a, 0xa71b, 0xc71a, 0xc71b, 0xc71a, 0xa71b, 0xc71a, 0xc71b, 0xa71a, 0xb71b, 0xc71a, 0xb71b, 0xc71a, 0xc71b
    .hword 0xb722, 0xc723, 0xb722, 0xb723, 0xb722, 0xb723, 0xb722, 0xc723, 0x31d8, 0x31da, 0xc722, 0xb723, 0xa722, 0xc723, 0xc722, 0xb723, 0xb722, 0xa723, 0xc722, 0xc723, 0xb722, 0xb723, 0xb722, 0xb723, 0xa722, 0xa723, 0xc722, 0xa723, 0xb722, 0xc723, 0xc722, 0xb723, 0xb722, 0xb723, 0xb722, 0xb723, 0xa722, 0xb723
    .hword 0xb71a, 0xa71b, 0xa71a, 0xc71b, 0xc71a, 0xb71b, 0xc71a, 0xb71b, 0x31d8, 0x31da, 0xb71a, 0xa71b, 0xa71a, 0xb71b, 0xc71a, 0xa71b, 0xa71a, 0xc71b, 0xa71a, 0xb71b, 0xb71a, 0xa71b, 0xa71a, 0xb71b, 0xc71a, 0xa71b, 0xb71a, 0xc71b, 0xa71a, 0xb71b, 0xc71a, 0xb71b, 0xa71a, 0xa71b, 0xb71a, 0xb71b, 0xc71a, 0xb71b
    .hword 0xa722, 0xb723, 0xa722, 0xb723, 0xc722, 0xa723, 0xa722, 0xb723, 0x31d8, 0x31da, 0xb722, 0xa723, 0xb722, 0xc723, 0xb722, 0xc723, 0xb722, 0xa723, 0xb722, 0xb723, 0xb722, 0xa723, 0xc722, 0xc723, 0xc722, 0xa723, 0xc722, 0xc723, 0xa722, 0xa723, 0xa722, 0xc723, 0xa722, 0xb723, 0xa722, 0xb723, 0xc722, 0xb723

.align 4
BinaryWoods_MapConnections:
    .hword 0x4528
    .byte 7, 7
    .hword 0x4528
    .byte 7, 7
    .hword 0x4528
    .byte 7, 7
    .hword 0x4530
    .byte 135, 146
    .hword 0x4530
    .byte 135, 146
    .hword 0x4530
    .byte 135, 146

.align 4
BinaryWoods_MapName:
    .string "BINARY WOODS$"

# scripts/4585_BinaryWoods.s

.align 4

BinaryWoods_MapInitCode:
    bx lr

BinaryWoods_MapInitScript:
    end

BinaryWoods_Script1:
    lock
    faceplayer
    msgbox BinaryWoods_Script1_Text
    release
    end

BinaryWoods_Script1_Text:
    .string "IT IS SAID THERE IS A SPIRIT\n"
    .string "IN THE FOREST.\l"
    .string "DON'T SERVE THE DEVIL.$"

BinaryWoods_Script2:
    lock
    faceplayer
    msgbox BinaryWoods_Script2_Text
    release
    end

BinaryWoods_Script2_Text:
    .string "I bet if we had wild encounters, there\n"
    .string "would be tons of bugs in this forest!$"

BinaryWoods_Script3:
    lock
    faceplayer
    msgbox BinaryWoods_Script3_Text
    release
    end

BinaryWoods_Script3_Text:
    .string "The ability to SURF would be very\n"
    .string "useful. It makes going through the\l"
    .string "forest much less painful!$"

BinaryWoods_Script4:
    lock
    faceplayer
    msgbox BinaryWoods_Script4_Text
    release
    end

BinaryWoods_Script4_Text:
    .string "Wow, you tell me that the exit was\n"
    .string "just a few steps from here?\p"
    .string "I've been lost here for a week, and\n"
    .string "now you tell me?\p"
    .string "I shouldn't have used a depth-first\n"
    .string "search while looking for the exit...$"

BinaryWoods_Script5:
    lock
    msgbox BinaryWoods_Script5_Text
    release
    end

BinaryWoods_Script5_Text:
    .string "Please respect the nature!\p"
    .string "Do not make the trees imbalanced, or\n"
    .string "they'll become harder to traverse.\p"
    .string "Be careful with the roots. Breaking\n"
    .string "them could split the trees in half.\p"
    .string "Hope you enjoy your stay at the\n"
    .string "Binary Woods.$"

BinaryWoods_ItemBall:
    lock
    removeobject 5
    giveitem 4
    setflag FLAG_RECEIVED_BALL5
    call SyncProgressScript
    release
    end

