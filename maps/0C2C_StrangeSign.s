# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x0C2C_StrangeSign/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

StrangeSign_MapHeader:
    .word StrangeSign_MapLayout
    .word StrangeSign_MapEvts
    .word NULL
    .word NULL
    .hword MUS_MT_PYRE_EXTERIOR
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word StrangeSign_MapInitCode+1
    .word StrangeSign_MapConnections
    .word StrangeSign_MapInitScript
    .word StrangeSign_MapName
    .word 0x1518

StrangeSign_MapLayout:
    .word 16
    .word 10
    .word StrangeSign_MapBorder
    .word StrangeSign_MapData
    .word gTileset_General
    .word gTileset_Petalburg

.align 4
StrangeSign_MapObjectEvents:

.align 4
StrangeSign_MapCoordEvents:
StrangeSign_WarpCoordEvents:
    coord_event 8, 2, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 8, 3, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 8, 4, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 8, 5, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
StrangeSign_MapBGEvents:
    bg_event 1, 4, 0, BG_EVENT_PLAYER_FACING_ANY, StrangeSign_Script

.align 4
StrangeSign_MapEvts:
    map_events 0, StrangeSign_MapObjectEvents, 0, 0, 4, StrangeSign_MapCoordEvents, 1, StrangeSign_MapBGEvents

.align 4
StrangeSign_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
StrangeSign_MapData:
    .hword 0xb5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xc5d5
    .hword 0xa5e4, 0xa5e5, 0xb5e4, 0xc5e5, 0xa5e4, 0xa5e5, 0xa5e4, 0xb5e5, 0xa5e4, 0xc5e5, 0xb5e4, 0xc5e5, 0xa5e4, 0xa5e5, 0xc5e4, 0xb5e5
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0x3001, 0x3004, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x31d0, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1
    .hword 0x3001, 0xc41b, 0x31d0, 0x31d1, 0x31d1, 0x31d9, 0x31d9, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1
    .hword 0x3001, 0x3001, 0x31e0, 0x31e1, 0x31e1, 0x31e1, 0x31e2, 0x3001, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf
    .hword 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0x3001, 0x3004, 0x3001, 0xb5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xa5d5
    .hword 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0xb5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xa5dd
    .hword 0xc5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xa5d5
    .hword 0xb5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xc5dd

.align 4
StrangeSign_MapConnections:
    .hword 0x0932
    .byte 135, 150
    .hword 0x0932
    .byte 135, 150
    .hword 0x0932
    .byte 135, 150
    .hword 0x0932
    .byte 135, 150

.align 4
StrangeSign_MapName:
    .string "STRANGE SIGN$"

# scripts/0C2C_StrangeSign.s

.align 4

StrangeSign_MapInitCode:
    bx lr

StrangeSign_SetTargetMap:
    ldr r0, =zWarpTargetData
    ldr r1, =0x0208098A
    str r1, [r0]
    ldr r0, =zWarpTargetDirection
    mov r1, #0
    strb r1, [r0]
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.ltorg
.align 4

StrangeSign_MapInitScript:
    end

StrangeSign_Script:
    lock
    braillemessage StrangeSign_Braille
	waitbuttonpress
	closebraillemessage
    checkflag FLAG_UNDERGROUND_CAVE_PUZZLE1
    goto_if FALSE, StrangeSign_Script_Nope
    checkflag FLAG_UNDERGROUND_CAVE_PUZZLE2
    goto_if FALSE, StrangeSign_Script_Nope
    checkplayergender
    compare_var_to_value VAR_RESULT, 1
    goto_if_eq StrangeSign_Success
StrangeSign_Script_Nope:
    releaseall
    end

StrangeSign_Success:
	fadeoutbgm 0
    playse SE_TRUCK_MOVE
	callnative DoSealedChamberShakingEffect1
	waitstate
	delay 40
	playse SE_DOOR
	delay 40
    msgbox StrangeSign_Script_Text
    callnative StrangeSign_SetTargetMap
    goto WARP_SCRIPT

StrangeSign_Script_Text:
    .string "You fall down, as the ground\n"
    .string "beneath you crumbles!$"

StrangeSign_Braille:
    .byte 13, 37, 69, 4, 2, 0
    .braille "FINALLY\n"
    .braille "YOU WILL\n"
    .braille "BECOME FEMBOY$"
