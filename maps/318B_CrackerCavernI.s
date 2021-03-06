# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x318B_CrackerCavernI/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

CrackerCavernI_MapHeader:
    .word CrackerCavernI_MapLayout
    .word CrackerCavernI_MapEvts
    .word NULL
    .word NULL
    .hword MUS_VICTORY_ROAD
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word CrackerCavernI_MapInitCode+1
    .word CrackerCavernI_MapConnections
    .word CrackerCavernI_MapInitScript
    .word CrackerCavernI_MapName
    .word 0x0010

CrackerCavernI_MapLayout:
    .word 12
    .word 12
    .word CrackerCavernI_MapBorder
    .word CrackerCavernI_MapData
    .word gTileset_General
    .word gTileset_Cave

.align 4
CrackerCavernI_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_NOLAND, 0, 9, 2, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, CrackerCavern_Wello, 0

.align 4
CrackerCavernI_MapCoordEvents:
CrackerCavernI_WarpCoordEvents:
    coord_event 2, 2, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 9, 9, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
CrackerCavernI_MapBGEvents:
    bg_event 6, 2, 0, BG_EVENT_PLAYER_FACING_ANY, CrackerCavernI_Script1

.align 4
CrackerCavernI_MapEvts:
    map_events 1, CrackerCavernI_MapObjectEvents, 0, 0, 2, CrackerCavernI_MapCoordEvents, 1, CrackerCavernI_MapBGEvents

.align 4
CrackerCavernI_MapBorder:
    .byte 0x11, 0x02, 0x11, 0x02, 0x11, 0x02, 0x11, 0x02

.align 4
CrackerCavernI_MapData:
    .hword 0xc21b, 0xc219, 0xc219, 0xc219, 0xc219, 0xc219, 0xc219, 0xc219, 0xc219, 0xc219, 0xc219, 0xc21c
    .hword 0xc212, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0xc210
    .hword 0xc212, 0x3201, 0x323e, 0x3201, 0x3201, 0x3201, 0xa403, 0x3201, 0x3201, 0x3201, 0x3201, 0xc210
    .hword 0xc212, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0xc210
    .hword 0xc212, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0xc210
    .hword 0xc212, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0xc210
    .hword 0xc212, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0xc210
    .hword 0xc212, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0xc202, 0xc202, 0xc203, 0xc202, 0xc210
    .hword 0xc212, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0xc21f, 0x3201, 0x3201, 0x3201, 0xc210
    .hword 0xc212, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0xc227, 0x3201, 0x323f, 0x3201, 0xc210
    .hword 0xc212, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0xc203, 0x3201, 0x3201, 0x3201, 0xc210
    .hword 0xc209, 0xc209, 0xc209, 0xc209, 0xc209, 0xc209, 0xc209, 0xc209, 0xc209, 0xc209, 0xc209, 0xc209

.align 4
CrackerCavernI_MapConnections:
    .hword 12576
    .byte 6, 9
    .hword 12684
    .byte 2, 2

.align 4
CrackerCavernI_MapName:
    .string "CAVERN FLOOR I$"

# scripts/318B_CrackerCavernI.s

.align 4

CrackerCavernI_MapInitCode:
    ldr r0, =CrackerCavern_ClearFlag
    ldrb r0, [r0]
    cmp r0, #0
    bne CrackerCavernI_MapInitCode_MakePassage
    bx lr
CrackerCavernI_MapInitCode_MakePassage:
    ldr r0, =CrackerCavernI_MapData+(7*12+9)*2
    ldr r1, =0x3201
    strh r1, [r0]
    bx lr

CrackerCavernI_SetTile:
    push {lr}
    mov r0, #9+7
    mov r1, #7+7
    ldr r2, =0x3201
    ldr r3, =MapGridSetMetatileEntryAt+1
    bl CrackerCavernI_SetTile_BXR3
    pop {r3}
CrackerCavernI_SetTile_BXR3:
    bx r3

.align 4
.ltorg

CrackerCavernI_MapInitScript:
    end

CrackerCavernI_Script1:
    lock
    msgbox CrackerCavernI_Script1_Text
    release
    end

CrackerCavernI_Script1_Text:
    .string "CRACKER CAVERN REBORN\n"
    .string "CHALLENGE I\p"
    .string "Before we get into the real deal,\n"
    .string "let's begin with an easy task.\p"
    .string "Use whatever methods you desire\n"
    .string "to go through the rock barrier below\l"
    .string "and reach the next floor.\p"
    .string "Note - basic protections against\n"
    .string "cheating are implemented.\p"
    .string "The person on the right can help\n"
    .string "you achieve your goal, but it's not\l"
    .string "necessary to use their help. Good luck!$"

CrackerCavern_Wello:
    lock
    faceplayer
    msgbox CrackerCavern_Wello_Text
    checkitem 11, 1
    compare VAR_RESULT, TRUE
    goto_if TRUE, CrackerCavern_Wello_OK
    release
    end

CrackerCavern_Wello_OK:
    msgbox CrackerCavern_Wello_Text2
	playse SE_ICE_STAIRS
    callnative CrackerCavernI_SetTile
    callnative DrawWholeMapView
    release
    end

CrackerCavern_Wello_Text:
    .string "Wello!\p"
    .string "If you have a LUXURY BALL, I will\n"
    .string "unlock the next area.$"

CrackerCavern_Wello_Text2:
    .string "Wow, you have a LUXURY BALL!\n"
    .string "I opened up a passage for you.$"

CrackerCavern_ClearFlag:
    .ascii "--CC1CLEAR--"
	.byte 0xff

