# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x318C_CrackerCavernII/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

CrackerCavernII_MapHeader:
    .word CrackerCavernII_MapLayout
    .word CrackerCavernII_MapEvts
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
    .word CrackerCavernII_MapInitCode+1
    .word CrackerCavernII_MapConnections
    .word CrackerCavernII_MapInitScript
    .word CrackerCavernII_MapName
    .word 0x0010

CrackerCavernII_MapLayout:
    .word 12
    .word 12
    .word CrackerCavernII_MapBorder
    .word CrackerCavernII_MapData
    .word gTileset_General
    .word gTileset_Cave

.align 4
CrackerCavernII_MapObjectEvents:

.align 4
CrackerCavernII_MapCoordEvents:
CrackerCavernII_WarpCoordEvents:
    coord_event 2, 2, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 9, 9, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
CrackerCavernII_MapBGEvents:
    bg_event 6, 2, 0, BG_EVENT_PLAYER_FACING_ANY, CrackerCavernI_Script1

.align 4
CrackerCavernII_MapEvts:
    map_events 0, CrackerCavernII_MapObjectEvents, 0, 0, 2, CrackerCavernII_MapCoordEvents, 1, CrackerCavernII_MapBGEvents

.align 4
CrackerCavernII_MapBorder:
    .byte 0x11, 0x02, 0x11, 0x02, 0x11, 0x02, 0x11, 0x02

.align 4
CrackerCavernII_MapData:
    .hword 0xc21b, 0xc219, 0xc219, 0xc219, 0xc219, 0xc219, 0xc219, 0xc219, 0xc219, 0xc219, 0xc219, 0xc21c
    .hword 0xc212, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0xc210
    .hword 0xc212, 0x3201, 0x323e, 0x3201, 0x3201, 0x3201, 0xc403, 0x3201, 0x3201, 0x3201, 0x3201, 0xc210
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
CrackerCavernII_MapConnections:
    .hword 12683
    .byte 9, 137
    .hword 12685
    .byte 2, 2

.align 4
CrackerCavernII_MapName:
    .string "CAVERN FLOOR II$"

# scripts/318C_CrackerCavernII.s

.align 4

CrackerCavernII_MapInitCode:
    ldr r0, =CrackerCavern_ClearFlag
    ldrb r0, [r0]
    cmp r0, #0
    bne CrackerCavernII_MapInitCode_MakePassage
    bx lr
CrackerCavernII_MapInitCode_MakePassage:
    ldr r0, =CrackerCavernII_MapData+(7*12+9)*2
    ldr r1, =0x3201
    strh r1, [r0]
    bx lr

CrackerCavernII_MapInitScript:
    end

CrackerCavernI_Script1:
    lock
    msgbox CrackerCavernI_Script1_Text
    release
    end

CrackerCavernI_Script1_Text:
    .string "CRACKER CAVERN REBORN\n"
    .string "CHALLENGE II\p"
    .string "As you may have noticed, this entire\n"
    .string "world is made of many different small\l"
    .string "maps, loaded on demand.\p"
    .string "Use whatever tools you desire to\n"
    .string "reach the map with identifier 0x1337.\p"
    .string "Once this is done, return here and\n"
    .string "take the bottom exit to continue.\p"
    .string "Note - bypassing the barrier with\n"
    .string "client-side hacks won't work anymore.\l"
    .string "Checks are done server-side.\p"
    .string "Next challenge will not load until\n"
    .string "this one is completed. Good luck!$"

CrackerCavern_ClearFlag:
    .ascii "--CC2CLEAR--"
	.byte 0xff

