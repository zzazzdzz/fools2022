# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x2E2B_EasternPass/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

EasternPass_MapHeader:
    .word EasternPass_MapLayout
    .word EasternPass_MapEvts
    .word NULL
    .word NULL
    .hword MUS_RG_ROUTE24
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word EasternPass_MapInitCode+1
    .word EasternPass_MapConnections
    .word EasternPass_MapInitScript
    .word EasternPass_MapName
    .word 0x2819

EasternPass_MapLayout:
    .word 30
    .word 24
    .word EasternPass_MapBorder
    .word EasternPass_MapData
    .word gTileset_General
    .word gTileset_Mauville

.align 4
EasternPass_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_TWIN, 0, 15, 13, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, EasternPass_Script1, 0
    object_event 2, OBJ_EVENT_GFX_WOMAN_4, 0, 9, 18, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, EasternPass_Script2, 0

.align 4
EasternPass_MapCoordEvents:
EasternPass_WarpCoordEvents:
    coord_event 22, 17, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 22, 18, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 22, 19, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 22, 20, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 22, 21, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 4, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 5, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 6, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
EasternPass_MapBGEvents:

.align 4
EasternPass_MapEvts:
    map_events 2, EasternPass_MapObjectEvents, 0, 0, 9, EasternPass_MapCoordEvents, 0, EasternPass_MapBGEvents

.align 4
EasternPass_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
EasternPass_MapData:
    .hword 0xb5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xb5d5
    .hword 0xb5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0xb5e4, 0xc5e5, 0xc5e4, 0xb5e5, 0xb5e4, 0xc5e5, 0xa5e4, 0xa5e5, 0xc5e4, 0xb5e5, 0xa5e4, 0xa5e5, 0xc5e4, 0xb5e5, 0xc5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xb5dd
    .hword 0xb5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xb691, 0xc691, 0xc691, 0xc691, 0xc691, 0xa691, 0xc691, 0xa691, 0xb691, 0xb691, 0xb691, 0xb691, 0xc691, 0xc682, 0xc5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xc5d5
    .hword 0xa5e4, 0xa5e5, 0xa5e4, 0xa5e5, 0xc5e4, 0xb5e5, 0xb5e4, 0xb5e5, 0xa5e4, 0xb5e5, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0xc68a, 0xb5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xa5dd
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0x3001, 0xb68a, 0xc5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xb5d5
    .hword 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d2, 0x3001, 0x3001, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x3001, 0x3004, 0x3001, 0xa68a, 0xb5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd
    .hword 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31d9, 0x31da, 0x3001, 0xc6ba, 0xa5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0x3001, 0x3001, 0x3001, 0xc68a, 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xb5d5
    .hword 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x3001, 0x3001, 0x3001, 0x3001, 0x31d8, 0x31da, 0x3001, 0xa688, 0xa5e4, 0xa5e5, 0xb5e4, 0xc5e5, 0x31ce, 0x31cf, 0x3001, 0xa68a, 0xb5dc, 0xc5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xc5dd
    .hword 0xb5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0x3001, 0x3001, 0x3004, 0x3001, 0x31d8, 0x31da, 0x3001, 0xb690, 0xa691, 0xc691, 0xb691, 0xc682, 0xc5d4, 0xa5d5, 0x3001, 0xc68a, 0xa5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xc5d5
    .hword 0xc5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0x31ce, 0x31cf, 0x3001, 0x3004, 0x31d8, 0x31da, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0xc6b1, 0xc5e4, 0xc5e5, 0x3001, 0xb68a, 0xc5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xc5dd
    .hword 0xb5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0x3001, 0x3001, 0x31d8, 0x31d9, 0x31d1, 0x31d1, 0x31d1, 0x31d2, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xb6b1, 0xb5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xb5d5
    .hword 0xb5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0x3001, 0x3001, 0x31e0, 0x31e1, 0x31e1, 0x31e1, 0x31d9, 0x31da, 0x3001, 0x3001, 0x3001, 0x3001, 0x31ce, 0x31cf, 0xb5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xc5dd
    .hword 0xb5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xc6b9, 0x3001, 0x3004, 0x3001, 0x3001, 0x3001, 0x31d8, 0x31da, 0x3004, 0x3001, 0x3001, 0xc6ba, 0xc5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xa5d5
    .hword 0xa5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xc5e4, 0xc5e5, 0xa68a, 0x3001, 0x3001, 0x3004, 0x3001, 0x3001, 0x31d8, 0x31da, 0x3001, 0x3004, 0x3001, 0xc688, 0xa5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xb5dd
    .hword 0xa5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xb691, 0xa691, 0xb692, 0x300d, 0x3001, 0x3001, 0x3004, 0x3001, 0x31d8, 0x31da, 0x3004, 0x3001, 0x3001, 0xa688, 0xb5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xb5d5
    .hword 0xc5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0x300d, 0x300d, 0x300d, 0x300d, 0x3001, 0x3001, 0x3001, 0x3004, 0x31d8, 0x31da, 0x3001, 0x3004, 0x3001, 0xb688, 0xa5e4, 0xa5e5, 0xb5e4, 0xc5e5, 0xc5e4, 0xa5e5, 0xb5e4, 0xc5e5
    .hword 0xa5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0x300d, 0x300d, 0x300d, 0x300d, 0x3004, 0x3001, 0x3001, 0x3001, 0x31d8, 0x31da, 0x3001, 0x3001, 0x3001, 0xc690, 0xb691, 0xb691, 0xa691, 0xb691, 0xc691, 0xa691, 0xc691, 0xb691
    .hword 0xc5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0x300d, 0x300d, 0x31ce, 0x31cf, 0x3001, 0x3004, 0x3001, 0x3001, 0x31d8, 0x31da, 0x3001, 0x3001, 0x3004, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0xc5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0x300d, 0x300d, 0xc5d4, 0xa5d5, 0x3001, 0x3001, 0x3001, 0x3001, 0x31d8, 0x31d9, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1
    .hword 0xa5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0x300d, 0x300d, 0xa5dc, 0xc5dd, 0x31ce, 0x31cf, 0x3001, 0x3001, 0x31e0, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1
    .hword 0xc5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0x300d, 0x300d, 0xb5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0xa5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0x300d, 0x300d, 0xb5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xb5ce, 0xc5cf, 0xa5ce, 0xa5cf, 0xa5ce, 0xb5cf, 0xa5ce, 0xc5cf, 0xc5ce, 0xa5cf, 0xb5ce, 0xa5cf, 0xc5ce, 0xa5cf, 0xa5ce, 0xa5cf
    .hword 0xa5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xa5d5
    .hword 0xb5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xc5dd

.align 4
EasternPass_MapConnections:
    .hword 0x2f38
    .byte 137, 134
    .hword 0x2f38
    .byte 137, 134
    .hword 0x2f38
    .byte 137, 134
    .hword 0x2f38
    .byte 137, 134
    .hword 0x2f38
    .byte 137, 134
    .hword 0x0100
    .byte 155, 18
    .hword 0x0100
    .byte 155, 18
    .hword 0x0100
    .byte 155, 18
    .hword 0x0100
    .byte 155, 18

.align 4
EasternPass_MapName:
    .string "EASTERN PASS$"

# scripts/2E2B_EasternPass.s

.align 4

EasternPass_MapInitCode:
    bx lr

EasternPass_MapInitScript:
    end

EasternPass_Script1:
    lock
    faceplayer
    msgbox EasternPass_Script1_Text
    release
    end

EasternPass_Script1_Text:
    .string "Glitchland is so big, it's very easy\n"
    .string "to get lost.\p"
    .string "But no worries! A quick reset of the\n"
    .string "game will bring you back to the start!$"

EasternPass_Script2:
    lock
    faceplayer
    msgbox EasternPass_Script2_Text
    release
    end

EasternPass_Script2_Text:
    .string "Be vewwy, vewwy quiet.\n"
    .string "I'm hunting Pok{EACUTE}mon.$"

