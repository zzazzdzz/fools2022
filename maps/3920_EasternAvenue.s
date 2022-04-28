# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x3920_EasternAvenue/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

EasternAvenue_MapHeader:
    .word EasternAvenue_MapLayout
    .word EasternAvenue_MapEvts
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
    .word EasternAvenue_MapInitCode+1
    .word EasternAvenue_MapConnections
    .word EasternAvenue_MapInitScript
    .word EasternAvenue_MapName
    .word 0x2819

EasternAvenue_MapLayout:
    .word 26
    .word 32
    .word EasternAvenue_MapBorder
    .word EasternAvenue_MapData
    .word gTileset_General
    .word gTileset_Petalburg

.align 4
EasternAvenue_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_BEAUTY, 0, 9, 15, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, EasternAvenue_Script1, 0
    object_event 2, OBJ_EVENT_GFX_MAN_2, 0, 13, 18, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, EasternAvenue_Script2, 0

.align 4
EasternAvenue_MapCoordEvents:
EasternAvenue_WarpCoordEvents:
    coord_event 8, 24, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 9, 24, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 10, 24, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 11, 24, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 18, 19, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 18, 18, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 18, 17, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 18, 16, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 8, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 9, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 10, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 11, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
EasternAvenue_MapBGEvents:

.align 4
EasternAvenue_MapEvts:
    map_events 2, EasternAvenue_MapObjectEvents, 0, 0, 12, EasternAvenue_MapCoordEvents, 0, EasternAvenue_MapBGEvents

.align 4
EasternAvenue_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
EasternAvenue_MapData:
    .hword 0xc5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0x3001, 0x3108, 0x310a, 0x3001, 0xc5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xc5d5
    .hword 0xa5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0x3001, 0x3108, 0x310a, 0x3001, 0xa5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xb5dd
    .hword 0xa5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0x3001, 0x3108, 0x310a, 0x3001, 0xc5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xa5d5
    .hword 0xb5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0x3001, 0x3108, 0x310a, 0x3001, 0xc5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xb5dd
    .hword 0xa5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0x3001, 0x3108, 0x310a, 0x3001, 0xc5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xa5d5
    .hword 0xc5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0x3001, 0x3108, 0x310a, 0x3001, 0xa5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xa5dd
    .hword 0xa5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0x3001, 0x3108, 0x310a, 0x3001, 0xa5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xa5d5
    .hword 0xc5dc, 0xc5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0x3001, 0x3108, 0x310a, 0x3001, 0xc5e4, 0xb5e5, 0xb5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xb5dd
    .hword 0xc5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0x3001, 0x3108, 0x310a, 0x3001, 0x300d, 0x300d, 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xb5d5
    .hword 0xb5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xa5e4, 0xb5e5, 0xc5e4, 0xc5e5, 0x3001, 0x3108, 0x310a, 0x3001, 0x3001, 0x300d, 0xb5e4, 0xc5e5, 0xa5e4, 0xb5e5, 0xb5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xa5dd
    .hword 0xc5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3108, 0x310a, 0x3001, 0x3001, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0xa5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xc5d5
    .hword 0xb5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3108, 0x310a, 0x3001, 0x3001, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0xc5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xb5dd
    .hword 0xc5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0x3001, 0x3100, 0x3101, 0x3101, 0x3101, 0x3109, 0x310a, 0x3001, 0x3001, 0x3001, 0x3100, 0x3102, 0x300d, 0x300d, 0xa5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xb5d5
    .hword 0xb5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0x3001, 0x3108, 0x3109, 0x3111, 0x3111, 0x3111, 0x3112, 0x3001, 0x3004, 0x3001, 0x3108, 0x310a, 0x300d, 0x300d, 0xc5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xc5dd
    .hword 0xa5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0x3001, 0x3108, 0x310a, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3108, 0x310a, 0x300d, 0x3001, 0xb5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xb5d5
    .hword 0xb5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0x3001, 0x3108, 0x310a, 0x3001, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x3001, 0x3001, 0x3108, 0x310a, 0x3001, 0x3001, 0xb5e4, 0xa5e5, 0xc5e4, 0xb5e5, 0xc5e4, 0xa5e5, 0xa5e4, 0xc5e5
    .hword 0xb5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0x3001, 0x3108, 0x310a, 0x3001, 0xa5d6, 0xc5d7, 0xc5d6, 0xb5d7, 0x3001, 0x3001, 0x3108, 0x310a, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0xb5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0x3001, 0x3108, 0x310a, 0x3001, 0xb5e4, 0xb5e5, 0xc5e4, 0xc5e5, 0x3001, 0x3001, 0x3108, 0x3109, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101
    .hword 0xa5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0x3001, 0x3108, 0x310a, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3108, 0x3109, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111
    .hword 0xb5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0x3001, 0x3108, 0x310a, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0x3108, 0x310a, 0x300d, 0x3001, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf
    .hword 0xb5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0x3001, 0x3108, 0x3109, 0x3101, 0x3101, 0x3101, 0x3102, 0x3001, 0x3001, 0x3001, 0x3108, 0x310a, 0x300d, 0x300d, 0xa5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xb5d5
    .hword 0xb5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0x3001, 0x3110, 0x3111, 0x3111, 0x3111, 0x3109, 0x310a, 0x3001, 0x3001, 0x300d, 0x3110, 0x3112, 0x300d, 0x300d, 0xb5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xc5dd
    .hword 0xb5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3108, 0x310a, 0x3001, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0xc5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xa5d5
    .hword 0xc5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x3001, 0x3108, 0x310a, 0x3001, 0x31c6, 0x31c7, 0x31c6, 0x31c7, 0x31c6, 0x31c7, 0xc5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xa5dd, 0xc5dc, 0xb5dd
    .hword 0xc5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0x3001, 0x3108, 0x310a, 0x3001, 0xc5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xb5d5
    .hword 0xb5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0x3001, 0x3108, 0x310a, 0x3001, 0xb5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xa5dd, 0xc5dc, 0xa5dd
    .hword 0xa5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0x3001, 0x3108, 0x310a, 0x3001, 0xc5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xc5d5
    .hword 0xb5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0x3001, 0x3108, 0x310a, 0x3001, 0xa5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xa5dd
    .hword 0xc5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0x3001, 0x3108, 0x310a, 0x3001, 0xb5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xc5d5
    .hword 0xb5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0x3001, 0x3108, 0x310a, 0x3001, 0xc5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xa5dd
    .hword 0xa5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0x3001, 0x3108, 0x310a, 0x3001, 0xa5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5
    .hword 0xc5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0x3001, 0x3108, 0x310a, 0x3001, 0xa5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0xc5dc, 0xb5dd

.align 4
EasternAvenue_MapConnections:
    .hword 0x3d20
    .byte 15, 7
    .hword 0x3d20
    .byte 15, 7
    .hword 0x3d20
    .byte 15, 7
    .hword 0x3d20
    .byte 15, 7
    .hword 0x3a3e
    .byte 135, 136
    .hword 0x3a3e
    .byte 135, 136
    .hword 0x3a3e
    .byte 135, 136
    .hword 0x3a3e
    .byte 135, 136
    .hword 0x3420
    .byte 9, 144
    .hword 0x3420
    .byte 9, 144
    .hword 0x3420
    .byte 9, 144
    .hword 0x3420
    .byte 9, 144

.align 4
EasternAvenue_MapName:
    .string "EASTERN AVENUE$"

# scripts/3920_EasternAvenue.s

.align 4

EasternAvenue_MapInitCode:
    bx lr

EasternAvenue_MapInitScript:
    end

EasternAvenue_Script1:
    lock
    faceplayer
    msgbox EasternAvenue_Script1_Text
    release
    end

EasternAvenue_Script1_Text:
    .string "I'm an expert. I haven't lost a single\n"
    .string "a single battle in my entire career!\p"
    .string "I also haven't won any battles, but\n"
    .string "that's far less important!$"

EasternAvenue_Script2:
    lock
    faceplayer
    msgbox EasternAvenue_Script2_Text
    release
    end

EasternAvenue_Script2_Text:
    .string "An aspiring level designer lives just\n"
    .string "south from here.\p"
    .string "Recently, I saw him work on his\n"
    .string "newest creation.\p"
    .string "I wonder how he's doing?\n"
    .string "Did he finish his project?\p"
    .string "Last time I checked, the map he\n"
    .string "designed was of abysmal quality.$"
