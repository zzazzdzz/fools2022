# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x1672_NorthernEncampment/map.json

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
    object_event 1, OBJ_EVENT_GFX_RICH_BOY, 0, 5, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, NorthernEncampment_Interior_Script3, 0
    object_event 2, OBJ_EVENT_GFX_GIRL_2, 0, 2, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, NorthernEncampment_Interior_Script1, 0
    object_event 3, OBJ_EVENT_GFX_WOMAN_4, 0, 5, 5, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, NorthernEncampment_Interior_Script2, 0

.align 4
NorthernEncampment_MapCoordEvents:
NorthernEncampment_WarpCoordEvents:
    coord_event 3, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 4, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
NorthernEncampment_MapBGEvents:

.align 4
NorthernEncampment_MapEvts:
    map_events 3, NorthernEncampment_MapObjectEvents, 0, 0, 2, NorthernEncampment_MapCoordEvents, 0, NorthernEncampment_MapBGEvents

.align 4
NorthernEncampment_MapBorder:
    .byte 0x01, 0x02, 0x01, 0x02, 0x01, 0x02, 0x01, 0x02

.align 4
NorthernEncampment_MapData:
    .hword 0xb686, 0xc687, 0xb679, 0xa67a, 0xc605, 0xc607, 0xb605, 0xa605, 0xc605, 0xa605
    .hword 0xa68e, 0xc68f, 0xb681, 0xb682, 0xb60d, 0xc60f, 0xb60d, 0xb60d, 0xa690, 0xb690
    .hword 0x3296, 0x3297, 0x3289, 0x328a, 0x3224, 0x3224, 0x3224, 0x3224, 0xb698, 0xc698
    .hword 0x3239, 0x3235, 0x3236, 0x3236, 0x3236, 0x3236, 0x3236, 0x3237, 0x3223, 0x3223
    .hword 0x3239, 0x323d, 0x32e1, 0xa648, 0xb649, 0x32e2, 0x323e, 0x323f, 0x3223, 0x3223
    .hword 0x3239, 0x323d, 0x32e1, 0xc650, 0xa651, 0x32e2, 0x323e, 0x323f, 0x3223, 0x3223
    .hword 0x3239, 0x3245, 0x3246, 0x3246, 0x3246, 0x3246, 0x3246, 0x3247, 0x3223, 0x3223
    .hword 0x3239, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3222
    .hword 0x3239, 0x3223, 0x3223, 0x0208, 0x0209, 0x3223, 0x3223, 0x3223, 0x3223, 0xc62a

.align 4
NorthernEncampment_MapConnections:
    .hword 5681
    .byte 26, 13
    .hword 5681
    .byte 26, 13

.align 4
NorthernEncampment_MapName:
    .string "NORTHERN CAMP$"

# scripts/1672_NorthernEncampment.s

.align 4

NorthernEncampment_MapInitCode:
    push {lr}
    ldr r2, =SetCoins+1
    mov r0, #200
    bl NorthernEncampment_BXR2
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    pop {r2}
NorthernEncampment_BXR2:
    bx r2

.align 4
.ltorg

NorthernEncampment_MapInitScript:
    end

NorthernEncampment_Interior_Script1:
    lock
    faceplayer
    msgbox NorthernEncampment_Interior_Script1_Text
    release
    end

NorthernEncampment_Interior_Script1_Text:
    .string "It might not look like it, but we're\n"
    .string "all professional gamblers.\p"
    .string "Did you know? Some machines in the\n"
    .string "Glitchland Game Corner have better\l"
    .string "odds than others.\p"
    .string "I heard one of the machines in the\n"
    .string "bottom right is especially rigged.$"

NorthernEncampment_Interior_Script2:
    lock
    faceplayer
    msgbox NorthernEncampment_Interior_Script2_Text
    release
    end

NorthernEncampment_Interior_Script2_Text:
    .string "You want to participate in all YEETs\n"
    .string "in Glitchland Game Corner?\p"
    .string "They are chosen randomly, but there\n"
    .string "is still some pattern to it.\p"
    .string "If you participate 10 times in a row,\n"
    .string "you'll see every YEET at least once!$"

NorthernEncampment_Interior_Script3:
    lock
    faceplayer
    msgbox NorthernEncampment_Interior_Script3_Text
    release
    end

NorthernEncampment_Interior_Script3_Text:
    .string "Hah, I think I finally found a way\n"
    .string "to game the system!\p"
    .string "You see, longer usernames with a lot\n"
    .string "of distinct characters have better\l"
    .string "odds at the Glitchland Lottery.\p"
    .string "So I changed my name. From now on, my\n"
    .string "name is Abcdefghijklmno.\p"
    .string "It's not even pronounceable, but it's\n"
    .string "very well worth it!$"

