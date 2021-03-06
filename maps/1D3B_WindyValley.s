# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x1D3B_WindyValley/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

WindyValley_MapHeader:
    .word WindyValley_MapLayout
    .word WindyValley_MapEvts
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
    .word WindyValley_MapInitCode+1
    .word WindyValley_MapConnections
    .word WindyValley_MapInitScript
    .word WindyValley_MapName
    .word 0x2819

WindyValley_MapLayout:
    .word 30
    .word 42
    .word WindyValley_MapBorder
    .word WindyValley_MapData
    .word gTileset_General
    .word gTileset_Mauville

.align 4
WindyValley_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_PSYCHIC_M, 0, 11, 13, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, WindyValley_Script1, 0
    object_event 2, OBJ_EVENT_GFX_POKEFAN_F, 0, 18, 28, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, WindyValley_Script4, 0
    object_event 3, OBJ_EVENT_GFX_GIRL_2, 0, 11, 28, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, WindyValley_Script3, 0
    object_event 4, OBJ_EVENT_GFX_CYCLING_TRIATHLETE_M, 0, 19, 13, 3, MOVEMENT_TYPE_WALK_UP_AND_DOWN, 0, 2, TRAINER_TYPE_NONE, 0, WindyValley_Script2, 0

.align 4
WindyValley_MapCoordEvents:
WindyValley_WarpCoordEvents:
    coord_event 8, 19, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 8, 20, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 8, 21, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 8, 22, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 13, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 13, 33, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 14, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 14, 33, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 15, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 15, 33, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 16, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 16, 33, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 21, 19, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 21, 20, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 21, 21, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 21, 22, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
WindyValley_MapBGEvents:

.align 4
WindyValley_MapEvts:
    map_events 4, WindyValley_MapObjectEvents, 0, 0, 16, WindyValley_MapCoordEvents, 0, WindyValley_MapBGEvents

.align 4
WindyValley_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
WindyValley_MapData:
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x3004, 0x3001, 0x3220, 0x3222, 0x3001, 0x3004, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x3001, 0x3001, 0x3220, 0x3222, 0x3001, 0x3001, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x3001, 0x3001, 0x3220, 0x3222, 0x3001, 0x3001, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x3004, 0x3001, 0x3220, 0x3222, 0x3001, 0x3004, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x3001, 0x3001, 0x3220, 0x3222, 0x3001, 0x3001, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x3001, 0x3001, 0x3220, 0x3222, 0x3001, 0x3001, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x3004, 0x3001, 0x3220, 0x3222, 0x3001, 0x3004, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01e4, 0x01e5, 0x01e4, 0x01e5, 0x3001, 0x3001, 0x3220, 0x3222, 0x3001, 0x3001, 0x01e4, 0x01e5, 0x01e4, 0x01e5, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xc680, 0xb691, 0xb691, 0xb691, 0xb682, 0x3001, 0x3220, 0x3222, 0x3001, 0xb680, 0xb691, 0xb691, 0xa691, 0xc682, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0xb688, 0x3001, 0x3001, 0x3001, 0xc6b1, 0x3001, 0x3220, 0x3222, 0x3001, 0xa6b2, 0x3001, 0x3001, 0x3001, 0xc68a, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xb688, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3220, 0x3222, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xa68a, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0xa688, 0x3001, 0x3204, 0x3204, 0x3204, 0x3204, 0x3220, 0x3222, 0x3204, 0x3204, 0x3204, 0x3204, 0x3001, 0xa68a, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xa688, 0x3204, 0x3204, 0x3204, 0x3204, 0x3204, 0x3220, 0x3222, 0x3204, 0x3204, 0x3204, 0x3204, 0x3204, 0xc68a, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0xa688, 0x3204, 0x3204, 0x3218, 0x321a, 0x3204, 0x3220, 0x3222, 0x3204, 0x3218, 0x321a, 0x3204, 0x3204, 0xb68a, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xa688, 0x3204, 0x3204, 0x3228, 0x322a, 0x3204, 0x3220, 0x3222, 0x3204, 0x3228, 0x322a, 0x3204, 0x3204, 0xb68a, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0xc688, 0x3204, 0x3004, 0x3204, 0x3204, 0x3218, 0x3221, 0x3221, 0x321a, 0x3204, 0x3204, 0x3004, 0x3204, 0xa68a, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xc688, 0x3204, 0x3204, 0x3204, 0x3204, 0x3220, 0x3221, 0x3221, 0x3222, 0x3204, 0x3204, 0x3204, 0x3204, 0xb68a, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01e4, 0x01e5, 0x01e4, 0x01e5, 0x01e4, 0x01e5, 0x01e4, 0x01e5, 0xa688, 0x3001, 0x3204, 0x3204, 0x3218, 0x3221, 0x3229, 0x3229, 0x3221, 0x321a, 0x3204, 0x3204, 0x3001, 0xa68a, 0x01e4, 0x01e5, 0x01e4, 0x01e5, 0x01e4, 0x01e5, 0x01e4, 0x01e5
    .hword 0xb691, 0xc691, 0xa691, 0xa691, 0xb691, 0xa691, 0xc691, 0xb691, 0xb690, 0xc691, 0x3001, 0x3001, 0x3220, 0x3222, 0xb40e, 0xa40f, 0x3220, 0x3222, 0x3001, 0x3001, 0xb691, 0xc692, 0xb691, 0xb691, 0xc691, 0xb691, 0xb691, 0xa691, 0xc691, 0xc691
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3218, 0x3221, 0x322a, 0xb4c7, 0xc4c7, 0x3228, 0x3221, 0x321a, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0x3219, 0x3219, 0x3219, 0x3219, 0x3219, 0x3219, 0x3219, 0x3219, 0x3219, 0x3219, 0x3219, 0x3221, 0x3222, 0xc40e, 0xc4c7, 0xc4c7, 0xc40f, 0x3220, 0x3221, 0x3219, 0x3219, 0x3219, 0x3219, 0x3219, 0x3219, 0x3219, 0x3219, 0x3219, 0x3219, 0x3219
    .hword 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3221, 0x3222, 0xa416, 0xc4c7, 0xb4c7, 0xa417, 0x3220, 0x3221, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229
    .hword 0x3004, 0x3001, 0x3001, 0x3004, 0x3001, 0x3001, 0x3004, 0x3001, 0x3001, 0x3001, 0x3001, 0x3228, 0x3221, 0x321a, 0xc4c7, 0xc4c7, 0x3218, 0x3221, 0x322a, 0x3001, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0x3001, 0x3004, 0x3001, 0x3001, 0x3004
    .hword 0x01ce, 0x01cf, 0x01ce, 0x01cf, 0x01ce, 0x01cf, 0x01ce, 0x01cf, 0xb680, 0xc691, 0x3001, 0x3001, 0x3220, 0x3222, 0xa416, 0xb417, 0x3220, 0x3222, 0x3001, 0x3001, 0xa691, 0xc682, 0x01ce, 0x01cf, 0x01ce, 0x01cf, 0x01ce, 0x01cf, 0x01ce, 0x01cf
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xc688, 0x3001, 0x3204, 0x3204, 0x3228, 0x3221, 0x3219, 0x3219, 0x3221, 0x322a, 0x3204, 0x3204, 0x3001, 0xc68a, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0xa688, 0x3204, 0x3204, 0x3204, 0x3204, 0x3220, 0x3221, 0x3221, 0x3222, 0x3204, 0x3204, 0x3204, 0x3204, 0xa68a, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xb688, 0x3204, 0x3004, 0x3204, 0x3204, 0x3228, 0x3221, 0x3221, 0x322a, 0x3204, 0x3204, 0x3004, 0x3204, 0xb68a, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0xa688, 0x3204, 0x3204, 0x3218, 0x321a, 0x3204, 0x3220, 0x3222, 0x3204, 0x3218, 0x321a, 0x3204, 0x3204, 0xb68a, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xc688, 0x3204, 0x3204, 0x3228, 0x322a, 0x3204, 0x3220, 0x3222, 0x3204, 0x3228, 0x322a, 0x3204, 0x3204, 0xc68a, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0xb688, 0x3204, 0x3204, 0x3204, 0x3204, 0x3204, 0x3220, 0x3222, 0x3204, 0x3204, 0x3204, 0x3204, 0x3204, 0xa68a, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xc688, 0x3001, 0x3204, 0x3204, 0x3204, 0x3204, 0x3220, 0x3222, 0x3204, 0x3204, 0x3204, 0x3204, 0x3001, 0xa68a, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0xa688, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3220, 0x3222, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xc68a, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xa688, 0x3001, 0x3001, 0x3001, 0xa6b9, 0x3001, 0x3220, 0x3222, 0x3001, 0xb6ba, 0x3001, 0x3001, 0x3001, 0xa68a, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0xc690, 0xc691, 0xa691, 0xb691, 0xb692, 0x3001, 0x3220, 0x3222, 0x3001, 0xc690, 0xa691, 0xa691, 0xc691, 0xa692, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x3004, 0x3001, 0x3004, 0x3001, 0x3001, 0x3001, 0x3220, 0x3222, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0x3004, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01ce, 0x01cf, 0x01ce, 0x01cf, 0x3004, 0x3001, 0x3220, 0x3222, 0x3001, 0x3004, 0x01ce, 0x01cf, 0x01ce, 0x01cf, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x3001, 0x3001, 0x3220, 0x3222, 0x3001, 0x3001, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x3001, 0x3001, 0x3220, 0x3222, 0x3001, 0x3001, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x3004, 0x3001, 0x3220, 0x3222, 0x3001, 0x3004, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x3001, 0x3001, 0x3220, 0x3222, 0x3001, 0x3001, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x3001, 0x3001, 0x3220, 0x3222, 0x3001, 0x3001, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x3004, 0x3001, 0x3220, 0x3222, 0x3001, 0x3004, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd

.align 4
WindyValley_MapConnections:
    .hword 0x223a
    .byte 152, 14
    .hword 0x223a
    .byte 152, 14
    .hword 0x223a
    .byte 152, 14
    .hword 0x223a
    .byte 152, 14
    .hword 0x1c2c
    .byte 15, 149
    .hword 0x1e33
    .byte 8, 7
    .hword 0x1c2c
    .byte 15, 149
    .hword 0x1e33
    .byte 8, 7
    .hword 0x1c2c
    .byte 15, 149
    .hword 0x1e33
    .byte 8, 7
    .hword 0x1c2c
    .byte 15, 149
    .hword 0x1e33
    .byte 8, 7
    .hword 0x2125
    .byte 135, 134
    .hword 0x2125
    .byte 135, 134
    .hword 0x2125
    .byte 135, 134
    .hword 0x2125
    .byte 135, 134

.align 4
WindyValley_MapName:
    .string "WINDY VALLEY$"

# scripts/1D3B_WindyValley.s

.align 4

WindyValley_MapInitCode:
    bx lr

WindyValley_MapInitScript:
    end

WindyValley_Script1:
    lock
    faceplayer
    msgbox WindyValley_Script1_Text
    release
    end

WindyValley_Script1_Text:
    .string "Wow, this place is beautiful!\n"
    .string "Where's my potato quality camera?\l"
    .string "I need to post this on the Web!$"

WindyValley_Script2:
    lock
    faceplayer
    msgbox WindyValley_Script2_Text
    release
    end

WindyValley_Script2_Text:
    .string "Hah, you're probably wondering, where\n"
    .string "did I get such a dank bike?\p"
    .string "There's a bike shop to the east, but\n"
    .string "the bikes can be quite expensive.$"

WindyValley_Script3:
    lock
    faceplayer
    msgbox WindyValley_Script3_Text
    release
    end

WindyValley_Script3_Text:
    .string "Look, this translation software\n"
    .string "allows me to easily speak multiple\l"
    .string "languages with a press of a button!\p"
    .string "Est{AACUTE}s usando este software de\n"
    .string "traducci{OACUTE}n de forma incorrecta.\l"
    .string "Por favor, consulta el manual.$"

WindyValley_Script4:
    lock
    faceplayer
    msgbox WindyValley_Script4_Text
    release
    end

WindyValley_Script4_Text:
    .string "In order to reach the Western Edge,\n"
    .string "you have to get through the Dark Cave.\p"
    .string "This can be an arduous journey, so\n"
    .string "make sure you're adequately prepared!$"

