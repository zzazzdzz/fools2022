# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x1B37_WesternPass/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

WesternPass_MapHeader:
    .word WesternPass_MapLayout
    .word WesternPass_MapEvts
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
    .word WesternPass_MapInitCode+1
    .word WesternPass_MapConnections
    .word WesternPass_MapInitScript
    .word WesternPass_MapName
    .word 0x2819

WesternPass_MapLayout:
    .word 40
    .word 18
    .word WesternPass_MapBorder
    .word WesternPass_MapData
    .word gTileset_General
    .word gTileset_Petalburg

.align 4
WesternPass_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_WOMAN_3, 0, 28, 8, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 1, 0, TRAINER_TYPE_NONE, 0, WesternPass_Script2, 0
    object_event 2, OBJ_EVENT_GFX_MAN_2, 0, 17, 10, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, WesternPass_Script1, 0

.align 4
WesternPass_MapCoordEvents:
WesternPass_WarpCoordEvents:
    coord_event 7, 12, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 13, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 14, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 15, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 32, 12, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 32, 13, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 32, 14, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 32, 15, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
WesternPass_MapBGEvents:

.align 4
WesternPass_MapEvts:
    map_events 2, WesternPass_MapObjectEvents, 0, 0, 8, WesternPass_MapCoordEvents, 0, WesternPass_MapBGEvents

.align 4
WesternPass_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
WesternPass_MapData:
    .hword 0xb471, 0xa471, 0xa471, 0xb471, 0xc471, 0xb471, 0xc471, 0xa471, 0xc471, 0xb471, 0xb471, 0xc471, 0xc471, 0xb471, 0xc471, 0xc471, 0xb471, 0xa471, 0xa471, 0xb471, 0xa471, 0xb471, 0xb471, 0xc471, 0xc471, 0xb471, 0xa471, 0xa471, 0xb471, 0xa471, 0xc471, 0xa471, 0xb471, 0xa471, 0xb471, 0xb471, 0xb471, 0xb471, 0xc471, 0xb471
    .hword 0xb471, 0xc471, 0xc471, 0xc471, 0xa471, 0xb471, 0xb471, 0xa471, 0xa471, 0xc471, 0xb471, 0xb471, 0xb471, 0xc471, 0xc471, 0xa471, 0xa471, 0xc471, 0xa471, 0xb471, 0xa471, 0xa471, 0xb471, 0xb471, 0xc471, 0xc471, 0xb471, 0xb471, 0xc471, 0xc471, 0xa471, 0xb471, 0xa471, 0xc471, 0xc471, 0xb471, 0xb471, 0xa471, 0xb471, 0xa471
    .hword 0xa471, 0xb471, 0xb471, 0xc471, 0xb471, 0xc471, 0xa471, 0xb471, 0xb471, 0xc471, 0xb471, 0xb471, 0xb471, 0xa471, 0xb471, 0xc471, 0xb471, 0xa471, 0xa471, 0xb471, 0xa471, 0xb471, 0xb471, 0xa471, 0xb471, 0xc471, 0xc471, 0xb471, 0xc471, 0xc471, 0xa471, 0xc471, 0xb471, 0xa471, 0xa471, 0xc471, 0xa471, 0xc471, 0xa471, 0xc471
    .hword 0xa471, 0xc471, 0xc471, 0xc471, 0xa471, 0xc471, 0xc471, 0xa471, 0xa471, 0xc471, 0xc471, 0xb471, 0xa471, 0xc471, 0xb471, 0xb471, 0xa471, 0xa471, 0xb471, 0xc471, 0xa471, 0xb471, 0xa471, 0xc471, 0xc471, 0xc471, 0xb471, 0xc471, 0xc471, 0xa471, 0xc471, 0xa471, 0xb471, 0xa471, 0xc471, 0xb471, 0xb471, 0xb471, 0xa471, 0xa471
    .hword 0xa47c, 0xc47c, 0xb47c, 0xa47c, 0xb47c, 0xb47c, 0xc47c, 0xa47c, 0xb47c, 0xa47c, 0xb47c, 0xb47c, 0xa47c, 0xa489, 0xb471, 0xa471, 0xc471, 0xa471, 0xc471, 0xc471, 0xb471, 0xb471, 0xb471, 0xb471, 0xc474, 0xa47c, 0xb47c, 0xc47c, 0xc47c, 0xc47c, 0xa47c, 0xc47c, 0xa47c, 0xa47c, 0xa47c, 0xb47c, 0xa47c, 0xc47c, 0xc47c, 0xa47c
    .hword 0xc5ee, 0xc5ef, 0xc5ee, 0xa5ef, 0xc5ee, 0xa5ef, 0xc5ee, 0xa5ef, 0xb5ee, 0xb5ef, 0xa5ee, 0xc5ef, 0xc489, 0xc473, 0xb471, 0xc471, 0xc471, 0xb471, 0xc46b, 0xc46c, 0xb46c, 0xc46c, 0xb46c, 0xc46d, 0xb475, 0xb474, 0xa5ee, 0xc5ef, 0xa5ee, 0xa5ef, 0xa5ee, 0xa5ef, 0xb5ee, 0xa5ef, 0xc5ee, 0xa5ef, 0xa5ee, 0xb5ef, 0xb5ee, 0xc5ef
    .hword 0xb5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xa470, 0xb47b, 0xa47c, 0xb47c, 0xc47c, 0xc489, 0xc473, 0xc471, 0xc471, 0xb471, 0xb471, 0xa475, 0xb475, 0xc472, 0xa5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xa5d5
    .hword 0xc5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xc478, 0xb479, 0xb479, 0xb479, 0xc489, 0xa473, 0xa47b, 0xc47c, 0xa47c, 0xc47c, 0xb47c, 0xb47d, 0xb475, 0xc472, 0xb5e4, 0xc5e5, 0xa5e4, 0xb5e5, 0xc5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xb5dd
    .hword 0xa5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0x300d, 0x300d, 0x300d, 0x300d, 0xc470, 0xa47b, 0xc47c, 0xb47c, 0xa47c, 0xb47c, 0xb47c, 0xc47c, 0xb47d, 0xc472, 0x300d, 0x300d, 0x300d, 0x300d, 0xa5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xb5d5
    .hword 0xc5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xa5e4, 0xc5e5, 0xa5e4, 0xb5e5, 0x300d, 0x300d, 0x300d, 0x300d, 0xc478, 0xb479, 0xa479, 0xa479, 0xc479, 0xc479, 0xa479, 0xc479, 0xb479, 0xc47a, 0x300d, 0x300d, 0x300d, 0x300d, 0xb5e4, 0xc5e5, 0xc5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xa5dd
    .hword 0xb5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0x3004, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x300d, 0x300d, 0x300d, 0xb5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xc5d5
    .hword 0xc5e4, 0xb5e5, 0xc5e4, 0xa5e5, 0xb5e4, 0xa5e5, 0xa5e4, 0xb5e5, 0x3001, 0x3001, 0x31d0, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d2, 0x3001, 0x3001, 0x3001, 0xc5e4, 0xa5e5, 0xc5e4, 0xa5e5, 0xc5e4, 0xa5e5, 0xa5e4, 0xc5e5
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x31d0, 0x31d9, 0x31d9, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31d9, 0x31d9, 0x31d2, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d9, 0x31d9, 0x31e2, 0x3001, 0x3001, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x3001, 0x31e0, 0x31d9, 0x31d9, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1
    .hword 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e2, 0x3001, 0x300d, 0x300d, 0xc5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0x3001, 0x3001, 0x31e0, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1
    .hword 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31c7, 0x31c6, 0x31c7, 0xb5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xc5ce, 0xc5cf, 0xa5ce, 0xb5cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf
    .hword 0xb5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xc5d5
    .hword 0xa5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xb5dd

.align 4
WesternPass_MapConnections:
    .hword 0x1c2c
    .byte 148, 15
    .hword 0x1c2c
    .byte 148, 15
    .hword 0x1c2c
    .byte 148, 15
    .hword 0x1c2c
    .byte 148, 15
    .hword 0x0100
    .byte 135, 145
    .hword 0x0100
    .byte 135, 145
    .hword 0x0100
    .byte 135, 145
    .hword 0x0100
    .byte 135, 145

.align 4
WesternPass_MapName:
    .string "WESTERN PASS$"

# scripts/1B37_WesternPass.s

.align 4

WesternPass_MapInitCode:
    bx lr

WesternPass_MapInitScript:
    end

WesternPass_Script1:
    lock
    faceplayer
    msgbox WesternPass_Script1_Text
    release
    end

WesternPass_Script1_Text:
    .string "You wouldn't believe this!\n"
    .string "Some time ago, I saw a suspicious guy\l"
    .string "walking down this road.\p"
    .string "He kept walking around confusingly,\n"
    .string "rearranging his items for hours.\p"
    .string "Then, he stood right where I am, and\n"
    .string "peeked at his Pok{EACUTE}dex.\p"
    .string "Right afterwards, he started flying\n"
    .string "through walls. Then, his BAG started\l"
    .string "overflowing with candy, and smooth\l"
    .string "jazz played from the clouds!\p"
    .string "To this day, I have no idea what\n"
    .string "happened. Was it just a dream?$"

WesternPass_Script2:
    lock
    faceplayer
    msgbox WesternPass_Script2_Text
    release
    end

WesternPass_Script2_Text:
    .string "I'm sure there is some way to light up\n"
    .string "the Dark Cave.\p"
    .string "But if you're determined, maybe you can\n"
    .string "make your way through completely blind?$"
