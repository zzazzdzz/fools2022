# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x1C2C_CrossingField/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

CrossingField_MapHeader:
    .word CrossingField_MapLayout
    .word CrossingField_MapEvts
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
    .word CrossingField_MapInitCode+1
    .word CrossingField_MapConnections
    .word CrossingField_MapInitScript
    .word CrossingField_MapName
    .word 0x2819

CrossingField_MapLayout:
    .word 30
    .word 30
    .word CrossingField_MapBorder
    .word CrossingField_MapData
    .word gTileset_General
    .word gTileset_Mauville

.align 4
CrossingField_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_TWIN, 0, 9, 12, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, CrossingField_Script1, 0
    object_event 2, OBJ_EVENT_GFX_BOY_3, 0, 10, 12, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, CrossingField_Script3, 0
    object_event 3, OBJ_EVENT_GFX_RICH_BOY, 0, 11, 12, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, CrossingField_Script2, 0

.align 4
CrossingField_MapCoordEvents:
CrossingField_WarpCoordEvents:
    coord_event 13, 9, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 14, 9, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 15, 9, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 16, 9, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 20, 13, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 20, 14, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 20, 15, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 20, 16, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 13, 21, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 14, 21, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 15, 21, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 16, 21, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
CrossingField_MapBGEvents:

.align 4
CrossingField_MapEvts:
    map_events 3, CrossingField_MapObjectEvents, 0, 0, 12, CrossingField_MapCoordEvents, 0, CrossingField_MapBGEvents

.align 4
CrossingField_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
CrossingField_MapData:
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x31d8, 0x31da, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x31d8, 0x31da, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x31d8, 0x31da, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x31d8, 0x31da, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x31d8, 0x31da, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x31d8, 0x31da, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x31d8, 0x31da, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01e4, 0x01e5, 0x01e4, 0x01e5, 0x01e4, 0x01e5, 0x31d8, 0x31da, 0x01e4, 0x01e5, 0x01e4, 0x01e5, 0x01e4, 0x01e5, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xb680, 0xc691, 0xa691, 0xb691, 0xa682, 0x3001, 0x31d8, 0x31da, 0x3001, 0xc680, 0xc691, 0xc691, 0xa691, 0xc682, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0xb688, 0x3001, 0x31ce, 0x31cf, 0xb6b1, 0x3001, 0x31d8, 0x31da, 0x3001, 0xb6b2, 0x31ce, 0x31cf, 0x3001, 0xc68a, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xa688, 0x3001, 0xb5d6, 0xa5d7, 0x3001, 0x3001, 0x31d8, 0x31da, 0x3001, 0x3001, 0xc5d6, 0xc5d7, 0x3001, 0xb68a, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0xc688, 0x3001, 0xb5e4, 0xc5e5, 0x3001, 0x3004, 0x31d8, 0x31da, 0x3004, 0x3001, 0xa5e4, 0xa5e5, 0x3001, 0xc68a, 0x01e4, 0x01e5, 0x01e4, 0x01e5, 0x01e4, 0x01e5, 0x01e4, 0x01e5
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xc688, 0x3001, 0x3001, 0x3001, 0x31d0, 0x31d1, 0x31d9, 0x31d9, 0x31d1, 0x31d2, 0x3001, 0x3001, 0xb691, 0xa692, 0xb691, 0xc691, 0xb691, 0xc691, 0xa691, 0xb691, 0xa691, 0xa691
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0xc688, 0x3001, 0x3001, 0x3004, 0x31d8, 0x31d9, 0x31e1, 0x31e1, 0x31d9, 0x31da, 0x3004, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xc688, 0x3001, 0x31d0, 0x31d1, 0x31d9, 0x31da, 0x3100, 0x3102, 0x31d8, 0x31d9, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0xc688, 0x3001, 0x31e0, 0x31e1, 0x31d9, 0x31da, 0x3110, 0x3112, 0x31d8, 0x31d9, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xc688, 0x3001, 0x3001, 0x3004, 0x31d8, 0x31d9, 0x31d1, 0x31d1, 0x31d9, 0x31da, 0x3004, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0xb688, 0x3001, 0x31ce, 0x31cf, 0x31e0, 0x31e1, 0x31d9, 0x31d9, 0x31e1, 0x31e2, 0x31ce, 0x31cf, 0xc691, 0xb682, 0xb691, 0xc691, 0xc691, 0xb691, 0xa691, 0xa691, 0xc691, 0xa691
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xc688, 0x3001, 0xa5d6, 0xc5d7, 0x3001, 0x3004, 0x31d8, 0x31da, 0x3004, 0x3001, 0xa5d6, 0xc5d7, 0x3001, 0xc68a, 0x3001, 0x3004, 0x3001, 0x3004, 0x3001, 0x3004, 0x3001, 0x3004
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0xa688, 0x3001, 0xc5e4, 0xb5e5, 0x3001, 0x3001, 0x31d8, 0x31da, 0x3001, 0x3001, 0xb5e4, 0xa5e5, 0x3001, 0xa68a, 0x01ce, 0x01cf, 0x01ce, 0x01cf, 0x01ce, 0x01cf, 0x01ce, 0x01cf
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0xc688, 0x3001, 0x3001, 0x3001, 0xc6b9, 0x3001, 0x31d8, 0x31da, 0x3001, 0xc6ba, 0x3001, 0x3001, 0x3001, 0xa68a, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0xa690, 0xa691, 0xb691, 0xa691, 0xb692, 0x3001, 0x31d8, 0x31da, 0x3001, 0xa690, 0xb691, 0xb691, 0xb691, 0xc692, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x3004, 0x3001, 0x3004, 0x3001, 0x3004, 0x3001, 0x31d8, 0x31da, 0x3001, 0x3004, 0x3001, 0x3004, 0x3001, 0x3004, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01ce, 0x01cf, 0x01ce, 0x01cf, 0x01ce, 0x01cf, 0x31d8, 0x31da, 0x01ce, 0x01cf, 0x01ce, 0x01cf, 0x01ce, 0x01cf, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x31d8, 0x31da, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x31d8, 0x31da, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x31d8, 0x31da, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x31d8, 0x31da, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd
    .hword 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x31d8, 0x31da, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5, 0x01d4, 0x01d5
    .hword 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x31d8, 0x31da, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd, 0x01dc, 0x01dd

.align 4
CrossingField_MapConnections:
    .hword 0x2725
    .byte 15, 144
    .hword 0x2725
    .byte 15, 144
    .hword 0x2725
    .byte 15, 144
    .hword 0x2725
    .byte 15, 144
    .hword 0x1b37
    .byte 135, 142
    .hword 0x1b37
    .byte 135, 142
    .hword 0x1b37
    .byte 135, 142
    .hword 0x1b37
    .byte 135, 142
    .hword 0x1d3b
    .byte 15, 8
    .hword 0x1d3b
    .byte 15, 8
    .hword 0x1d3b
    .byte 15, 8
    .hword 0x1d3b
    .byte 15, 8

.align 4
CrossingField_MapName:
    .string "CROSSING FIELD$"

# scripts/1C2C_CrossingField.s

.align 4

CrossingField_MapInitCode:
    bx lr

CrossingField_MapInitScript:
    end

CrossingField_Script1:
    lock
    faceplayer
    msgbox CrossingField_Script1_Text
    release
    end

CrossingField_Script1_Text:
    .string "We must save my family!$"

CrossingField_Script2:
    lock
    faceplayer
    msgbox CrossingField_Script2_Text
    release
    end

CrossingField_Script2_Text:
    .string "The bandits are coming!$"

CrossingField_Script3:
    lock
    faceplayer
    msgbox CrossingField_Script3_Text
    release
    end

CrossingField_Script3_Text:
    .string "Let me introduce you to my crew.\n"
    .string "I call them {LQUOT}the crew{RQUOT}, by the way.\p"
    .string "They are all NPCs I got from\n"
    .string "various quests.\p"
    .string "They help you fight, but as long as\n"
    .string "don't finish the quests, they stay\l"
    .string "with you forever!$"
