# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x0000_MysteryZone/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

MysteryZone_MapHeader:
    .word MysteryZone_MapLayout
    .word MysteryZone_MapEvts
    .word NULL
    .word NULL
    .hword MUS_OLDALE
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word MysteryZone_MapInitCode+1
    .word MysteryZone_MapConnections
    .word MysteryZone_MapInitScript
    .word MysteryZone_MapName
    .word 0x2819

MysteryZone_MapLayout:
    .word 8
    .word 8
    .word MysteryZone_MapBorder
    .word MysteryZone_MapData
    .word gTileset_General
    .word gTileset_Petalburg

.align 4
MysteryZone_MapObjectEvents:

.align 4
MysteryZone_MapCoordEvents:
MysteryZone_WarpCoordEvents:
    coord_event 1, 3, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
MysteryZone_MapBGEvents:

.align 4
MysteryZone_MapEvts:
    map_events 0, MysteryZone_MapObjectEvents, 0, 0, 1, MysteryZone_MapCoordEvents, 0, MysteryZone_MapBGEvents

.align 4
MysteryZone_MapBorder:
    .byte 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02

.align 4
MysteryZone_MapData:
    .hword 0xb448, 0xb449, 0xc44a, 0xc44b, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0xa450, 0xb451, 0xa452, 0xc453, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0xc458, 0xc459, 0xc45a, 0xc45b, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0xa460, 0x3061, 0xc462, 0xc463, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0x3001, 0x3001
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0x3001
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3004

.align 4
MysteryZone_MapConnections:
    .hword 256
    .byte 17, 22

.align 4
MysteryZone_MapName:
    .string "MYSTERY ZONE$"

# scripts/0000_MysteryZone.s

.align 4

MysteryZone_MapInitCode:
    bx lr

StrangeSign_SetTargetMap:
    ldr r0, =zWarpTargetData
    ldr r1, =0x18110100
    str r1, [r0]
    ldr r0, =zWarpTargetDirection
    mov r1, #0
    strb r1, [r0]
    ldr r0, =zSkipMapExitMovement
    mov r1, #0
    strb r1, [r0]
    bx lr

.align 4
.ltorg

MysteryZone_MapInitScript:
    end

MysteryZone_Script1:
    lock
    faceplayer
    msgbox MysteryZone_Script1_Text, MSGBOX_YESNO
    compare VAR_RESULT, YES
    goto_if_eq MysteryZone_WarpOut
    release
    end
MysteryZone_WarpOut:
    callnative StrangeSign_SetTargetMap
    goto WarpScript

MysteryZone_Script1_Text:
    .string "You have attempted to load an\n"
    .string "invalid or inexistent map.\p"
    .string "Either you found a serious bug, or\n"
    .string "you're just a dirty hacker.\p"
    .string "Warp back to Central Square?$"
