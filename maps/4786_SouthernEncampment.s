# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x4786_SouthernEncampment/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

SouthernEncampment_MapHeader:
    .word SouthernEncampment_MapLayout
    .word SouthernEncampment_MapEvts
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
    .word SouthernEncampment_MapInitCode+1
    .word SouthernEncampment_MapConnections
    .word SouthernEncampment_MapInitScript
    .word SouthernEncampment_MapName
    .word 0x0400

SouthernEncampment_MapLayout:
    .word 10
    .word 9
    .word SouthernEncampment_MapBorder
    .word SouthernEncampment_MapData
    .word gTileset_Building
    .word gTileset_GenericBuilding

.align 4
SouthernEncampment_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_MANIAC, 0, 2, 5, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, SouthernEncampment_Script1, 0
    object_event 2, OBJ_EVENT_GFX_GIRL_2, 0, 5, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, SouthernEncampment_Script2, 0

.align 4
SouthernEncampment_MapCoordEvents:
SouthernEncampment_WarpCoordEvents:
    coord_event 3, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 4, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
SouthernEncampment_MapBGEvents:

.align 4
SouthernEncampment_MapEvts:
    map_events 2, SouthernEncampment_MapObjectEvents, 0, 0, 2, SouthernEncampment_MapCoordEvents, 0, SouthernEncampment_MapBGEvents

.align 4
SouthernEncampment_MapBorder:
    .byte 0x01, 0x02, 0x01, 0x02, 0x01, 0x02, 0x01, 0x02

.align 4
SouthernEncampment_MapData:
    .hword 0xa686, 0xc687, 0xc679, 0xc67a, 0xc605, 0xa607, 0xb605, 0xc605, 0xa605, 0xc605
    .hword 0xb68e, 0xc68f, 0xb681, 0xb682, 0xc60d, 0xa60f, 0xa60d, 0xa60d, 0xa690, 0xa690
    .hword 0x3296, 0x3297, 0x3289, 0x328a, 0x3224, 0x3224, 0x3224, 0x3224, 0xa698, 0xc698
    .hword 0x3239, 0x3235, 0x3236, 0x3236, 0x3236, 0x3236, 0x3236, 0x3237, 0x3223, 0x3223
    .hword 0x3239, 0x323d, 0x32e1, 0xb648, 0xa649, 0x32e2, 0x323e, 0x323f, 0x3223, 0x3223
    .hword 0x3239, 0x323d, 0x32e1, 0xb650, 0xb651, 0x32e2, 0x323e, 0x323f, 0x3223, 0x3223
    .hword 0x3239, 0x3245, 0x3246, 0x3246, 0x3246, 0x3246, 0x3246, 0x3247, 0x3223, 0x3223
    .hword 0x3239, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3222
    .hword 0x3239, 0x3223, 0x3223, 0x0208, 0x0209, 0x3223, 0x3223, 0x3223, 0x3223, 0xc62a

.align 4
SouthernEncampment_MapConnections:
    .hword 18219
    .byte 15, 9
    .hword 18219
    .byte 15, 9

.align 4
SouthernEncampment_MapName:
    .string "SOUTHERN CAMP$"

# scripts/4786_SouthernEncampment.s

.align 4

SouthernEncampment_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

SouthernEncampment_SetTargetMap:
    ldr r0, =zWarpTargetData
    ldr r1, =0x0a0f472b
    str r1, [r0]
    mov r1, #0
    ldr r0, =zWarpTargetDirection
    strb r1, [r0]
    ldr r0, =zSkipMapExitMovement
    strb r1, [r0]
    bx lr

.align 4
.ltorg

SouthernEncampment_MapInitScript:
    end

SouthernEncampment_Script1:
    lock
    faceplayer
    msgbox SouthernEncampment_Script1_Text, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq SouthernEncampment_Script1_Nope
    msgbox SouthernEncampment_Script1_Text2
    fadescreen 1
    fadeoutbgm 2
    delay 60
    msgbox SouthernEncampment_Script1_Text3
    closemessage
    delay 60
    fadeinbgm 1
    callnative SouthernEncampment_SetTargetMap
    goto WARP_SCRIPT
SouthernEncampment_Script1_Nope:
    msgbox SouthernEncampment_Script1_Text1
    release
    end

SouthernEncampment_Script1_Text:
    .string "Welcome. Do you wish to try our\n"
    .string "Spirit Releasing Therapy?$"

SouthernEncampment_Script1_Text1:
    .string "I understand...\n"
    .string "Come again...$"

SouthernEncampment_Script1_Text2:
    .string "Okay...\n"
    .string "Let's begin...$"

SouthernEncampment_Script1_Text3:
    .string "As the man begins chanting some kind\n"
    .string "of spell, the reality slowly starts\l"
    .string "to peel away.\p"
    .string "You feel your soul leaving your body\n"
    .string "and entering a brand new one.\p"
    .string "You wake up shortly afterwards,\n"
    .string "feeling newly born...$"

SouthernEncampment_Script2:
    lock
    faceplayer
    msgbox SouthernEncampment_Script2_Text
    release
    end

SouthernEncampment_Script2_Text:
    .string "We, the adepts of the Spirit Releasing\n"
    .string "Therapy, strongly believe in something\l"
    .string "we like to call {LQUOT}Fun Values{RQUOT}.\p"
    .string "Apparently, some things in Glitchland\n"
    .string "may be different for every person.\p"
    .string "People might say different things, or\n"
    .string "appear in different locations.\p"
    .string "It's all determined by a single number,\n"
    .string "chosen when you first appear.\p"
    .string "But here we can change that number,\n"
    .string "so maybe you discover something new.\p"
    .string "At least, that's the theory. We don't\n"
    .string "know if that's really the truth.$"

