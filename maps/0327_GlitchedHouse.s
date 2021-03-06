# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x0327_GlitchedHouse/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

GlitchedHouse_MapHeader:
    .word GlitchedHouse_MapLayout
    .word GlitchedHouse_MapEvts
    .word NULL
    .word NULL
    .hword MUS_RG_ROUTE3
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word GlitchedHouse_MapInitCode+1
    .word GlitchedHouse_MapConnections
    .word GlitchedHouse_MapInitScript
    .word GlitchedHouse_MapName
    .word 0x2819

GlitchedHouse_MapLayout:
    .word 34
    .word 23
    .word GlitchedHouse_MapBorder
    .word GlitchedHouse_MapData
    .word gTileset_General
    .word gTileset_Mauville

.align 4
GlitchedHouse_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_CUTTABLE_TREE, 0, 16, 6, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, EventScript_CutTree, 0x11
    object_event 2, OBJ_EVENT_GFX_RICH_BOY, 0, 14, 12, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 2, 0, TRAINER_TYPE_NONE, 0, GlitchedHouse_Script1, 0
    object_event 3, OBJ_EVENT_GFX_CUTTABLE_TREE, 0, 17, 7, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, EventScript_CutTree, 0x12
    object_event 4, OBJ_EVENT_GFX_CUTTABLE_TREE, 0, 18, 6, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, EventScript_CutTree, 0x13
    object_event 5, OBJ_EVENT_GFX_MAN_1, 0, 20, 5, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, GlitchedHouse_Script2, 0

.align 4
GlitchedHouse_MapCoordEvents:
GlitchedHouse_WarpCoordEvents:
    coord_event 26, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 26, 9, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 26, 10, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 26, 11, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 9, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 10, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 11, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 17, 5, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
GlitchedHouse_MapBGEvents:

.align 4
GlitchedHouse_MapEvts:
    map_events 5, GlitchedHouse_MapObjectEvents, 0, 0, 9, GlitchedHouse_MapCoordEvents, 0, GlitchedHouse_MapBGEvents

.align 4
GlitchedHouse_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
GlitchedHouse_MapData:
    .hword 0xc5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d6, 0xb5d7, 0xc5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xa5d5
    .hword 0xb5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xa5e4, 0xb5e5, 0xa5e4, 0xc5e5, 0xa5e4, 0xc5e5, 0xb5e4, 0xc5e5, 0xb5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xa5dd
    .hword 0xc5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0x3208, 0x3206, 0xb788, 0xa789, 0xa789, 0xc78a, 0x3208, 0x3206, 0xa5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xa5d5
    .hword 0xa5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xa5dd, 0x3206, 0x3211, 0xa790, 0xb791, 0xb791, 0xa792, 0x3206, 0x3211, 0xa5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xa5dd
    .hword 0xb5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0x3205, 0x3205, 0xc798, 0xa799, 0xa79a, 0xb79b, 0x3001, 0x3205, 0xc5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xb5d5
    .hword 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xa5e4, 0xa5e5, 0xa5e4, 0xc5e5, 0xb5e4, 0xb5e5, 0x3205, 0x3205, 0xb7a0, 0x33a1, 0xa7a2, 0xb7a3, 0x3001, 0x3205, 0xb5e4, 0xa5e5, 0xc5e4, 0xb5e5, 0xa5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xa5dd
    .hword 0xc5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0x3001, 0x3001, 0x3001, 0x3001, 0x3205, 0x3205, 0x3205, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3205, 0x3205, 0x3205, 0x3001, 0x3001, 0xc5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xb5d5
    .hword 0xc5e4, 0xc5e5, 0xa5e4, 0xc5e5, 0xc5e4, 0xb5e5, 0xb5e4, 0xa5e5, 0x320d, 0x3001, 0x320c, 0x3001, 0x320f, 0x3001, 0x320e, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x320a, 0x3205, 0x320f, 0x3205, 0x320e, 0x3001, 0xb5e4, 0xa5e5, 0xb5e4, 0xb5e5, 0xb5e4, 0xa5e5, 0xb5e4, 0xb5e5
    .hword 0x3001, 0x3215, 0x3001, 0x3215, 0x3001, 0x3216, 0x3001, 0x3217, 0x3001, 0x3214, 0x3001, 0x3215, 0x3001, 0x3216, 0x3001, 0x3217, 0x3001, 0x3001, 0x3001, 0x3214, 0x3205, 0x3211, 0x3205, 0x3216, 0x3001, 0x3217, 0x3001, 0x3214, 0x3205, 0x3211, 0x3205, 0x3216, 0x3001, 0x3217
    .hword 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119
    .hword 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129
    .hword 0x320e, 0x3001, 0x320e, 0x3205, 0x320c, 0x3205, 0x320f, 0x3205, 0x320e, 0x3205, 0x320e, 0x3001, 0x320c, 0x3001, 0x320f, 0x3205, 0x320e, 0x3205, 0x320d, 0x3205, 0x320b, 0x3205, 0x320a, 0x3205, 0x320f, 0x3001, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf
    .hword 0xa469, 0xa469, 0xa469, 0xa469, 0xc469, 0xc469, 0xa469, 0xa46a, 0x3205, 0x3217, 0x3001, 0x3217, 0x3001, 0x3215, 0x3001, 0x3216, 0x3205, 0x3217, 0x3205, 0x3214, 0x3205, 0x3212, 0x3205, 0x3211, 0x3001, 0x3216, 0xb5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xb5d5
    .hword 0xc471, 0xb471, 0xc471, 0xb471, 0xa471, 0xb471, 0xb471, 0xa472, 0x3001, 0x3205, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3205, 0x3205, 0x3205, 0x3205, 0x3205, 0x3205, 0x3001, 0x3001, 0x3001, 0xb5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xb5dd
    .hword 0xa471, 0xa471, 0xc471, 0xa471, 0xb471, 0xc471, 0xb471, 0xa46c, 0xa469, 0xa469, 0xa469, 0xb469, 0xa469, 0xa469, 0xc469, 0xb469, 0xa46a, 0x3205, 0x3205, 0x300d, 0x300d, 0x300d, 0x300d, 0x3001, 0x3001, 0x3001, 0xa5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xa5d5
    .hword 0xb471, 0xc471, 0xc471, 0xb471, 0xa471, 0xa471, 0xa471, 0xc471, 0xa471, 0xc471, 0xc471, 0xc471, 0xc471, 0xc471, 0xa471, 0xb471, 0xc46c, 0xa469, 0xa469, 0xc469, 0xb469, 0xc46a, 0x300d, 0x300d, 0x3001, 0x3001, 0xc5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xc5dd
    .hword 0xa471, 0xa471, 0xb471, 0xc471, 0xc471, 0xa471, 0xc471, 0xc471, 0xb471, 0xc471, 0xb471, 0xb471, 0xb471, 0xb471, 0xb471, 0xb471, 0xc471, 0xb471, 0xa471, 0xc471, 0xc471, 0xb472, 0x300d, 0x300d, 0x300d, 0x3001, 0xc5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xb5d5
    .hword 0xb471, 0xb471, 0xb471, 0xb471, 0xb471, 0xc471, 0xb471, 0xa471, 0xc471, 0xa471, 0xb471, 0xc471, 0xb471, 0xa471, 0xb471, 0xa471, 0xb471, 0xc471, 0xb471, 0xa471, 0xb471, 0xb46c, 0xc469, 0xa469, 0xa469, 0xa46a, 0xa5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xa5dd
    .hword 0xb471, 0xa471, 0xb471, 0xc471, 0xc471, 0xc471, 0xa471, 0xb471, 0xb471, 0xc471, 0xa471, 0xb471, 0xb471, 0xc471, 0xc471, 0xb471, 0xc471, 0xb471, 0xc471, 0xa471, 0xc471, 0xc471, 0xc471, 0xa471, 0xc471, 0xb472, 0xa5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xc5d5
    .hword 0xc471, 0xa471, 0xa471, 0xc471, 0xb471, 0xa471, 0xa471, 0xc471, 0xa471, 0xb471, 0xa471, 0xc471, 0xa471, 0xc471, 0xb471, 0xc471, 0xa471, 0xb471, 0xb471, 0xc471, 0xa471, 0xa471, 0xc471, 0xc471, 0xb471, 0xb472, 0xb5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xb5dd
    .hword 0xa471, 0xb471, 0xa471, 0xa471, 0xb471, 0xc471, 0xc471, 0xc471, 0xc471, 0xb471, 0xb471, 0xa471, 0xb471, 0xc471, 0xb471, 0xc471, 0xc471, 0xa471, 0xb471, 0xc471, 0xb471, 0xa471, 0xa471, 0xb471, 0xc471, 0xa472, 0xc5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xc5d5
    .hword 0xa471, 0xb471, 0xa471, 0xb471, 0xa471, 0xb471, 0xc471, 0xa471, 0xc471, 0xa471, 0xc471, 0xa471, 0xb471, 0xa471, 0xa471, 0xc471, 0xa471, 0xa471, 0xa471, 0xa471, 0xb471, 0xc471, 0xc471, 0xa471, 0xa471, 0xa472, 0xa5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xc5dd
    .hword 0xc471, 0xa471, 0xc471, 0xa471, 0xb471, 0xc471, 0xb471, 0xc471, 0xc471, 0xc471, 0xc471, 0xa471, 0xc471, 0xa471, 0xc471, 0xc471, 0xb471, 0xb471, 0xc471, 0xa471, 0xa471, 0xc471, 0xb471, 0xa471, 0xb471, 0xb472, 0xb5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xb5d5

.align 4
GlitchedHouse_MapConnections:
    .hword 528
    .byte 135, 148
    .hword 528
    .byte 135, 148
    .hword 528
    .byte 135, 148
    .hword 528
    .byte 135, 148
    .hword 1082
    .byte 150, 13
    .hword 1082
    .byte 150, 13
    .hword 1082
    .byte 150, 13
    .hword 1082
    .byte 150, 13
    .hword 868
    .byte 4, 136

.align 4
GlitchedHouse_MapName:
    .string "GLITCHED HOUSE$"

# scripts/0327_GlitchedHouse.s

.align 4

GlitchedHouse_MapInitCode:
    bx lr

GlitchedHouse_MapInitScript:
    end

GlitchedHouse_Script1:
    lock
    faceplayer
    msgbox GlitchedHouse_Script1_Text
    release
    end

GlitchedHouse_Script1_Text:
    .string "Eh, some whippersnappers keep planting\n"
    .string "trees in key map locations.\p"
    .string "I heard there's a special field move\n"
    .string "that could help clean this mess up...$"

GlitchedHouse_Script2:
    lock
    faceplayer
    msgbox GlitchedHouse_Script2_Text
    release
    end

GlitchedHouse_Script2_Text:
    .string "Oh no, some idiot literally planted\n"
    .string "trees right in front of my house!\p"
    .string "My wife is locked inside. Could you\n"
    .string "help save my beloved wife?\l"
    .string "I bet she feels pretty lonely...$"

