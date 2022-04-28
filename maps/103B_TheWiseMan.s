# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x103B_TheWiseMan/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

TheWiseMan_MapHeader:
    .word TheWiseMan_MapLayout
    .word TheWiseMan_MapEvts
    .word NULL
    .word NULL
    .hword MUS_RG_FUCHSIA
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word TheWiseMan_MapInitCode+1
    .word TheWiseMan_MapConnections
    .word TheWiseMan_MapInitScript
    .word TheWiseMan_MapName
    .word 0x2819

TheWiseMan_MapLayout:
    .word 14
    .word 18
    .word TheWiseMan_MapBorder
    .word TheWiseMan_MapData
    .word gTileset_General
    .word gTileset_Mossdeep

.align 4
TheWiseMan_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_OLD_MAN, 0, 9, 14, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, TheWiseMan_Script1, 0

.align 4
TheWiseMan_MapCoordEvents:
TheWiseMan_WarpCoordEvents:
    coord_event 4, 5, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 5, 5, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 3, 13, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
TheWiseMan_MapBGEvents:

.align 4
TheWiseMan_MapEvts:
    map_events 1, TheWiseMan_MapObjectEvents, 0, 0, 3, TheWiseMan_MapCoordEvents, 0, TheWiseMan_MapBGEvents

.align 4
TheWiseMan_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
TheWiseMan_MapData:
    .hword 0xa5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0x3004, 0x3001, 0xb5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xa5d5
    .hword 0xb5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0x3001, 0x3004, 0xc5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xb5dd
    .hword 0xb5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0x3004, 0x3001, 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xc5d5
    .hword 0xb5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0x3001, 0x3004, 0xb5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xc5dd
    .hword 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0x3004, 0x3001, 0xa5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xc5d5
    .hword 0xc5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0x3001, 0x3004, 0xb5e4, 0xa5e5, 0xb5e4, 0xb5e5, 0xb5e4, 0xc5e5, 0xa5dc, 0xc5dd
    .hword 0xc5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0x3004, 0x3001, 0x31d0, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d2, 0xc5d4, 0xa5d5
    .hword 0xb5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0x3001, 0x3004, 0x31d8, 0x31d9, 0x31d9, 0x31d9, 0x31e1, 0x31e2, 0xc5dc, 0xa5dd
    .hword 0xc5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0x31d0, 0x31d1, 0x31d9, 0x31d9, 0x31d9, 0x31da, 0x3004, 0x3001, 0xc5d4, 0xa5d5
    .hword 0xc5dc, 0xb5dd, 0xa5e4, 0xb5e5, 0x31e0, 0x31e1, 0x31d9, 0x31d9, 0x31e1, 0x31e2, 0x3001, 0x3004, 0xb5dc, 0xa5dd
    .hword 0xc5d4, 0xa5d5, 0xc694, 0xa695, 0xb696, 0xc697, 0x31d8, 0x31da, 0x3001, 0x3001, 0x3001, 0x3001, 0xb5d4, 0xc5d5
    .hword 0xc5dc, 0xc5dd, 0xb690, 0xc691, 0xa692, 0xa693, 0x31e0, 0x31e2, 0xb702, 0xc703, 0xa704, 0x3001, 0xb5dc, 0xb5dd
    .hword 0xa5d4, 0xb5d5, 0xa698, 0xb699, 0xa69a, 0xa69b, 0x3004, 0x3001, 0xb70a, 0xc70b, 0xc70c, 0x3001, 0xb5d4, 0xc5d5
    .hword 0xc5dc, 0xc5dd, 0xb6a0, 0x32a1, 0xa6a2, 0xc6a3, 0x3001, 0x3004, 0xa712, 0xb713, 0xb714, 0x3004, 0xc5dc, 0xa5dd
    .hword 0xa5d4, 0xb5d5, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0xc5d4, 0xa5d5
    .hword 0xa5dc, 0xc5dd, 0x31c6, 0x31c7, 0x31c6, 0x31c7, 0x31c6, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0xc5dc, 0xa5dd
    .hword 0xc5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5
    .hword 0xa5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xa5dd

.align 4
TheWiseMan_MapConnections:
    .hword 0x0F3B
    .byte 7, 156
    .hword 0x0F3B
    .byte 7, 156
    .hword 4205
    .byte 4, 136

.align 4
TheWiseMan_MapName:
    .string "THE WISE MAN$"

# scripts/103B_TheWiseMan.s

.align 4

TheWiseMan_MapInitCode:
    bx lr

TheWiseMan_MapInitScript:
    end

TheWiseMan_Script1:
    lock
    faceplayer
    msgbox TheWiseMan_Script1_Text
    release
    end

TheWiseMan_Script1_Text:
    .string "Hello, young traveler.\n"
    .string "Back in the day, I used to be an\l"
    .string "adventurer, just like you.\p"
    .string "But after all these years, my\n"
    .string "enthusiasm is long gone.\p"
    .string "All that remains is my knowledge, which\n"
    .string "I distilled into my Adventure Log.\p"
    .string "Come to my house and read it. You\n"
    .string "might find some useful tips if you do.$"

TheWiseMan_Door:
    lock
    faceplayer
    msgbox TheWiseMan_Door_Text
    release
    end

TheWiseMan_Door_Text:
    .string "The door is closed.$"
