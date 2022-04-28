# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x0364_GlitchedHouse/map.json

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
    .word 10
    .word 9
    .word GlitchedHouse_MapBorder
    .word GlitchedHouse_MapData
    .word gTileset_Building
    .word gTileset_GenericBuilding

.align 4
GlitchedHouse_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_WOMAN_4, 0, 5, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, GlitchedHouse_Int_Script1, 0

.align 4
GlitchedHouse_MapCoordEvents:
GlitchedHouse_WarpCoordEvents:
    coord_event 3, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 4, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
GlitchedHouse_MapBGEvents:

.align 4
GlitchedHouse_MapEvts:
    map_events 1, GlitchedHouse_MapObjectEvents, 0, 0, 2, GlitchedHouse_MapCoordEvents, 0, GlitchedHouse_MapBGEvents

.align 4
GlitchedHouse_MapBorder:
    .byte 0x01, 0x02, 0x01, 0x02, 0x01, 0x02, 0x01, 0x02

.align 4
GlitchedHouse_MapData:
    .hword 0xb686, 0xa687, 0xb679, 0xa67a, 0xc605, 0xa607, 0xb605, 0xc605, 0xb605, 0xa605
    .hword 0xc68e, 0xa68f, 0xc681, 0xa682, 0xc60d, 0xa60f, 0xa60d, 0xa60d, 0xa690, 0xa690
    .hword 0x3296, 0x3297, 0x3289, 0x328a, 0x3224, 0x3224, 0x3224, 0x3224, 0xb698, 0xc698
    .hword 0x3239, 0x3235, 0x3236, 0x3236, 0x3236, 0x3236, 0x3236, 0x3237, 0x3223, 0x3223
    .hword 0x3239, 0x323d, 0x32e1, 0xb648, 0xc649, 0x32e2, 0x323e, 0x323f, 0x3223, 0x3223
    .hword 0x3239, 0x323d, 0x32e1, 0xc650, 0xa651, 0x32e2, 0x323e, 0x323f, 0x3223, 0x3223
    .hword 0x3239, 0x3245, 0x3246, 0x3246, 0x3246, 0x3246, 0x3246, 0x3247, 0x3223, 0x3223
    .hword 0x3239, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3222
    .hword 0x3239, 0x3223, 0x3223, 0x0208, 0x0209, 0x3223, 0x3223, 0x3223, 0x3223, 0xa62a

.align 4
GlitchedHouse_MapConnections:
    .hword 807
    .byte 17, 5
    .hword 807
    .byte 17, 5

.align 4
GlitchedHouse_MapName:
    .string "GLITCHED HOUSE$"

# scripts/0364_GlitchedHouse.s

.align 4

GlitchedHouse_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

GlitchedHouse_MapInitScript:
    end

GlitchedHouse_Int_Script1:
    lock
    faceplayer
    msgbox GlitchedHouse_Int_Script1_Text
    release
    end

GlitchedHouse_Int_Script1_Text:
    .string "My husband is so clingy, it really\n"
    .string "infuriates me.\p"
    .string "I tried to give myself some space by\n"
    .string "planting these trees, but someone\l"
    .string "obviously had to cut them.\p"
    .string "What am I going to do now?\n"
    .string "I should probably just divorce him.$"
