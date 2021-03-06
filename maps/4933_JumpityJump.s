# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x4933_JumpityJump/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

JumpityJump_MapHeader:
    .word JumpityJump_MapLayout
    .word JumpityJump_MapEvts
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
    .word JumpityJump_MapInitCode+1
    .word JumpityJump_MapConnections
    .word JumpityJump_MapInitScript
    .word JumpityJump_MapName
    .word 0x2819

JumpityJump_MapLayout:
    .word 22
    .word 30
    .word JumpityJump_MapBorder
    .word JumpityJump_MapData
    .word gTileset_General
    .word gTileset_Rustboro

.align 4
JumpityJump_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_WOMAN_2, 0, 9, 6, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, JumpityJump_Script1, 0
    object_event 2, OBJ_EVENT_GFX_MART_EMPLOYEE, 0, 4, 22, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, JumpityJump_Script2, 0

.align 4
JumpityJump_MapCoordEvents:
JumpityJump_WarpCoordEvents:
    coord_event 14, 25, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 14, 26, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 14, 27, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 4, 5, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 3, 5, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 2, 5, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
JumpityJump_MapBGEvents:
    bg_event 15, 15, 0, BG_EVENT_PLAYER_FACING_ANY, JumpityJump_Sign

.align 4
JumpityJump_MapEvts:
    map_events 2, JumpityJump_MapObjectEvents, 0, 0, 6, JumpityJump_MapCoordEvents, 1, JumpityJump_MapBGEvents

.align 4
JumpityJump_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
JumpityJump_MapData:
    .hword 0xb5d4, 0xa5d5, 0x3001, 0x3001, 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xa5d5
    .hword 0xb5dc, 0xb5dd, 0x3001, 0x3001, 0xc5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xa5dd
    .hword 0xb5d4, 0xb5d5, 0x3001, 0x3001, 0xb5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xa5d5
    .hword 0xc5dc, 0xa5dd, 0x3001, 0x3001, 0xc5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xa5dd
    .hword 0xc5d4, 0xc5d5, 0x3001, 0x3001, 0xa5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xb5d5
    .hword 0xa5dc, 0xb5dd, 0x3001, 0x3001, 0xa5e4, 0xa5e5, 0xb5e4, 0xa5e5, 0xc5e4, 0xb5e5, 0xc5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xa5dd
    .hword 0xa5d4, 0xc5d5, 0x31d0, 0x31d2, 0x3001, 0xc4ff, 0x3001, 0x3001, 0x3004, 0x3001, 0xa5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xc5d5
    .hword 0xb5dc, 0xb5dd, 0x31e0, 0x31e2, 0x3001, 0xc507, 0x31ce, 0x31cf, 0x3001, 0x3004, 0xb5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xb5dd
    .hword 0xc5d4, 0xb5d5, 0x3001, 0x3001, 0x3001, 0x3001, 0xb5d4, 0xc5d5, 0x3001, 0x3001, 0xa5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xa5d5
    .hword 0xc5dc, 0xc5dd, 0x3001, 0x3001, 0x31ce, 0x31cf, 0xc5dc, 0xa5dd, 0xb4d5, 0xb4d6, 0xb5e4, 0xa5e5, 0xa5e4, 0xc5e5, 0xa5e4, 0xa5e5, 0xb5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xa5dd
    .hword 0xb5d4, 0xa5d5, 0xa4d5, 0xa4d6, 0xb5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0x31d0, 0x31d2, 0x3001, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0xb5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xb5d5
    .hword 0xc5dc, 0xb5dd, 0x3001, 0x3001, 0xa5e4, 0xa5e5, 0xa5e4, 0xb5e5, 0x31e0, 0x31e2, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x3001, 0x3004, 0xc5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xa5dd
    .hword 0xb5d4, 0xb5d5, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xa4ff, 0x3001, 0x3001, 0xb5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0x3001, 0x3001, 0xc5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xb5d5
    .hword 0xb5dc, 0xc5dd, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0xc4d5, 0xb48e, 0x3001, 0x3001, 0xb5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xa4d5, 0xa4d6, 0xb5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xc5dc, 0xa5dd
    .hword 0xb5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0x3001, 0x3001, 0x3001, 0x3001, 0xb5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0x3001, 0x3001, 0xb5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xb5d5
    .hword 0xb5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xc5e4, 0xc5e5, 0xa549, 0xb549, 0xa4d5, 0xc4d6, 0xa5e4, 0xb5e5, 0xa5e4, 0xc5e5, 0x3001, 0xc403, 0xc5dc, 0xc5dd, 0xc5dc, 0xa5dd, 0xc5dc, 0xc5dd
    .hword 0xa5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0x3001, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0x31d0, 0x31d2, 0xc4fe, 0x3001, 0x3001, 0x3001, 0xa5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xa5d5
    .hword 0xb5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0x3001, 0x3001, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31e0, 0x31e2, 0xc48d, 0xa4d6, 0x31ce, 0x31cf, 0xa5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xb5dd
    .hword 0xc5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0x3001, 0x3001, 0xc5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0x3001, 0x3001, 0x3001, 0x3001, 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xc5d5
    .hword 0xa5dc, 0xc5dd, 0xc5dc, 0xa5dd, 0xc4d5, 0xc4d6, 0xc5dc, 0xc5dd, 0xc5dc, 0xa5dd, 0x3001, 0x3001, 0x31ce, 0x31cf, 0xa5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xc5dd
    .hword 0xb5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0x31d0, 0x31d2, 0xc5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0x3001, 0x3001, 0xb5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xb5d5
    .hword 0xa5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0x31e0, 0x31e2, 0xb5e4, 0xa5e5, 0xa5e4, 0xb5e5, 0xa4d5, 0xa4d6, 0xa5e4, 0xc5e5, 0xa5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xa5dd
    .hword 0xa5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0x3001, 0x3001, 0x3001, 0xa4ff, 0x3001, 0x3001, 0x3001, 0x3001, 0x31d0, 0x31d2, 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xa5d5
    .hword 0xa5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0x31ce, 0x31cf, 0xb4d5, 0xb48e, 0x3001, 0x3001, 0x31ce, 0x31cf, 0x31e0, 0x31e2, 0xb5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xb5dc, 0xb5dd
    .hword 0xa5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0x3001, 0x3001, 0x3004, 0x3001, 0xb5d4, 0xa5d5, 0x3001, 0x3001, 0xc5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xa5d5
    .hword 0xb5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xa5dd, 0x31ce, 0x31cf, 0x3001, 0x3004, 0xa5e4, 0xa5e5, 0xc4d5, 0xb4d6, 0xb5e4, 0xa5e5, 0xa5e4, 0xa5e5, 0xa5e4, 0xb5e5, 0xb5e4, 0xb5e5
    .hword 0xc5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0x3004, 0x3001, 0x3001, 0xb4ff, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0xb5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0x31ce, 0x31cf, 0x3001, 0xa507, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf
    .hword 0xb5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0x3004, 0x3001, 0xc5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xc5d5
    .hword 0xa5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0x31ce, 0x31cf, 0xa5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xc5dd

.align 4
JumpityJump_MapConnections:
    .hword 0x223a
    .byte 135, 140
    .hword 0x223a
    .byte 135, 140
    .hword 0x223a
    .byte 135, 140
    .hword 0x2731
    .byte 17, 151
    .hword 0x2731
    .byte 17, 151
    .hword 0x2731
    .byte 17, 151

.align 4
JumpityJump_MapName:
    .string "JUMPITY JUMP$"

# scripts/4933_JumpityJump.s

.align 4

JumpityJump_MapInitCode:
    bx lr

JumpityJump_MapInitScript:
    end

JumpityJump_Script1:
    lock
    faceplayer
    msgbox JumpityJump_Script1_Text
    release
    end

JumpityJump_Script1_Text:
    .string "One needs to be very careful about\n"
    .string "their decisions here.\l"
    .string "Once you jump, there is no return!$"

JumpityJump_Script2:
    lock
    faceplayer
    checkflag FLAG_RECEIVED_BALL8
    goto_if TRUE, JumpityJump_Script2_GotBall
    setflag FLAG_RECEIVED_BALL8
    msgbox JumpityJump_Script2_Text
    giveitem 4
    call SyncProgressScript
    release
    end
JumpityJump_Script2_GotBall:
    msgbox JumpityJump_Script2_Text2
    release
    end

JumpityJump_Script2_Text:
    .string "Hi!\n"
    .string "I work at a POK{EACUTE}MON MART.\p"
    .string "It's part of a convenient chain\n"
    .string "selling all sorts of items.\p"
    .string "I know, I'll give you a sample.\n"
    .string "Here you go!$"

JumpityJump_Script2_Text2:
    .string "Please come see us if you need\n"
    .string "POK{EACUTE} BALLS for catching POK{EACUTE}MON.$"

JumpityJump_Sign:
    lock
    msgbox JumpityJump_Sign_Text
    release
    end

JumpityJump_Sign_Text:
    .string "This sign just has a poorly drawn\n"
    .string "trollface on it.\p"
    .string "They probably hoped you would miss\n"
    .string "this sign and come all the way back\l"
    .string "through the Dark Cave to read it.$"

