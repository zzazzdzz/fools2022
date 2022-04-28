# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x0E6C_TheTrendsetters/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

TheTrendsetters_MapHeader:
    .word TheTrendsetters_MapLayout
    .word TheTrendsetters_MapEvts
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
    .word TheTrendsetters_MapInitCode+1
    .word TheTrendsetters_MapConnections
    .word TheTrendsetters_MapInitScript
    .word TheTrendsetters_MapName
    .word 0x2819

TheTrendsetters_MapLayout:
    .word 10
    .word 9
    .word TheTrendsetters_MapBorder
    .word TheTrendsetters_MapData
    .word gTileset_Building
    .word gTileset_GenericBuilding

.align 4
TheTrendsetters_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_CAMPER, 0, 2, 5, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, TheTrendsetters_Script3, 0
    object_event 2, OBJ_EVENT_GFX_MAN_3, 0, 5, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, TheTrendsetters_Script1, 0
    object_event 3, OBJ_EVENT_GFX_EXPERT_M, 0, 5, 5, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, TheTrendsetters_Script2, 0
    object_event 4, OBJ_EVENT_GFX_WINGULL, 0, 8, 4, 3, MOVEMENT_TYPE_WALK_IN_PLACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, TheTrendsetters_Script4, 0

.align 4
TheTrendsetters_MapCoordEvents:
TheTrendsetters_WarpCoordEvents:
    coord_event 3, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 4, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
TheTrendsetters_MapBGEvents:

.align 4
TheTrendsetters_MapEvts:
    map_events 4, TheTrendsetters_MapObjectEvents, 0, 0, 2, TheTrendsetters_MapCoordEvents, 0, TheTrendsetters_MapBGEvents

.align 4
TheTrendsetters_MapBorder:
    .byte 0x01, 0x02, 0x01, 0x02, 0x01, 0x02, 0x01, 0x02

.align 4
TheTrendsetters_MapData:
    .hword 0xc686, 0xc687, 0xc679, 0xa67a, 0xc605, 0xa607, 0xa605, 0xc605, 0xb605, 0xc605
    .hword 0xb68e, 0xb68f, 0xb681, 0xc682, 0xb60d, 0xa60f, 0xa60d, 0xa60d, 0xc690, 0xb690
    .hword 0x3296, 0x3297, 0x3289, 0x328a, 0x3224, 0x3224, 0x3224, 0x3224, 0xb698, 0xa698
    .hword 0x3239, 0x3235, 0x3236, 0x3236, 0x3236, 0x3236, 0x3236, 0x3237, 0x3223, 0x3223
    .hword 0x3239, 0x323d, 0x32e1, 0xb648, 0xc649, 0x32e2, 0x323e, 0x323f, 0x3223, 0x3223
    .hword 0x3239, 0x323d, 0x32e1, 0xc650, 0xb651, 0x32e2, 0x323e, 0x323f, 0x3223, 0x3223
    .hword 0x3239, 0x3245, 0x3246, 0x3246, 0x3246, 0x3246, 0x3246, 0x3247, 0x3223, 0x3223
    .hword 0x3239, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3222
    .hword 0x3239, 0x3223, 0x3223, 0x0208, 0x0209, 0x3223, 0x3223, 0x3223, 0x3223, 0xa62a

.align 4
TheTrendsetters_MapConnections:
    .hword 3644
    .byte 9, 13
    .hword 3644
    .byte 9, 13

.align 4
TheTrendsetters_MapName:
    .string "THE TRENDSETTERS$"

# scripts/0E6C_TheTrendsetters.s

.align 4

TheTrendsetters_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

TheTrendsetters_MapInitScript:
    end

TheTrendsetters_Script1:
    lock
    faceplayer
    bufferstring STR_VAR_2, TrendyPhraseString
    msgbox TheTrendsetters_Script1_Text
    release
    end

TheTrendsetters_Script1_Text:
    .string "I told my kids all about\n"
    .string "{STR_VAR_2}.\p"
    .string "I also bought them a lot of\n"
    .string "{LQUOT}{STR_VAR_2}{RQUOT}\l"
    .string "themed merchandise.$"

TheTrendsetters_Script2:
    lock
    faceplayer
    bufferstring STR_VAR_2, TrendyPhraseString
    msgbox TheTrendsetters_Script2_Text
    release
    end

TheTrendsetters_Script2_Text:
    .string "I just can't stop thinking about\n"
    .string "{STR_VAR_2}!\p"
    .string "{STR_VAR_2} is really\n"
    .string "the best thing ever conceived!$"

TheTrendsetters_Script3:
    lock
    faceplayer
    bufferstring STR_VAR_2, TrendyPhraseString
    msgbox TheTrendsetters_Script3_Text
    release
    end

TheTrendsetters_Script3_Text:
    .string "I got into {STR_VAR_2},\n"
    .string "and I lost 10 pounds with no effort!\p"
    .string "I believe {STR_VAR_2}\n"
    .string "is truly the cure for everything.$"

TheTrendsetters_Script4:
    lock
    faceplayer
    bufferstring STR_VAR_2, TrendyPhraseString
    msgbox TheTrendsetters_Script4_Text
    release
    end

TheTrendsetters_Script4_Text:
    .string "This WINGULL is daydreaming about\n"
    .string "{STR_VAR_2}.$"

TrendyPhraseString:
    .ascii "--TRENDYPHRASEPLACEHOLDER--"
	.byte 0xff
