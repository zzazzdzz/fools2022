# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x1670_NorthernEncampment/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

NorthernEncampment_MapHeader:
    .word NorthernEncampment_MapLayout
    .word NorthernEncampment_MapEvts
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
    .word NorthernEncampment_MapInitCode+1
    .word NorthernEncampment_MapConnections
    .word NorthernEncampment_MapInitScript
    .word NorthernEncampment_MapName
    .word 0x0700

NorthernEncampment_MapLayout:
    .word 10
    .word 9
    .word NorthernEncampment_MapBorder
    .word NorthernEncampment_MapData
    .word gTileset_Building
    .word gTileset_GenericBuilding

.align 4
NorthernEncampment_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_PHOEBE, 0, 2, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, NorthernEncampment_Interior_Script1, 0

.align 4
NorthernEncampment_MapCoordEvents:
NorthernEncampment_WarpCoordEvents:
    coord_event 3, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 4, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
NorthernEncampment_MapBGEvents:

.align 4
NorthernEncampment_MapEvts:
    map_events 1, NorthernEncampment_MapObjectEvents, 0, 0, 2, NorthernEncampment_MapCoordEvents, 0, NorthernEncampment_MapBGEvents

.align 4
NorthernEncampment_MapBorder:
    .byte 0x01, 0x02, 0x01, 0x02, 0x01, 0x02, 0x01, 0x02

.align 4
NorthernEncampment_MapData:
    .hword 0xc686, 0xa687, 0xa679, 0xc67a, 0xb605, 0xc607, 0xc605, 0xa605, 0xb605, 0xa605
    .hword 0xb68e, 0xc68f, 0xc681, 0xa682, 0xb60d, 0xb60f, 0xa60d, 0xb60d, 0xb690, 0xc690
    .hword 0x3296, 0x3297, 0x3289, 0x328a, 0x3224, 0x3224, 0x3224, 0x3224, 0xb698, 0xa698
    .hword 0x3239, 0x3235, 0x3236, 0x3236, 0x3236, 0x3236, 0x3236, 0x3237, 0x3223, 0x3223
    .hword 0x3239, 0x323d, 0x32e1, 0xc648, 0xb649, 0x32e2, 0x323e, 0x323f, 0x3223, 0x3223
    .hword 0x3239, 0x323d, 0x32e1, 0xc650, 0xb651, 0x32e2, 0x323e, 0x323f, 0x3223, 0x3223
    .hword 0x3239, 0x3245, 0x3246, 0x3246, 0x3246, 0x3246, 0x3246, 0x3247, 0x3223, 0x3223
    .hword 0x3239, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3222
    .hword 0x3239, 0x3223, 0x3223, 0x0208, 0x0209, 0x3223, 0x3223, 0x3223, 0x3223, 0xb62a

.align 4
NorthernEncampment_MapConnections:
    .hword 5681
    .byte 18, 7
    .hword 5681
    .byte 18, 7

.align 4
NorthernEncampment_MapName:
    .string "NORTHERN CAMP$"

# scripts/1670_NorthernEncampment.s

.align 4

NorthernEncampment_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

NorthernEncampment_MapInitScript:
    end

NorthernEncampment_Interior_Script1:
    lock
    faceplayer
    bufferstring STR_VAR_2, NorthernEncampment_Interior_FunValue
    msgbox NorthernEncampment_Interior_Script1_Text
    release
    end

NorthernEncampment_Interior_Script1_Text:
    .string "Hello, young one. You surely give off\n"
    .string "a quite mysterious aura.\p"
    .string "If I were to judge, it has a grade of\n"
    .string "exactly {STR_VAR_2} points.\l"
    .string "That's really impressive...$"

NorthernEncampment_Interior_FunValue:
    .ascii "--FUNVALSTR--"
	.byte 0xff

