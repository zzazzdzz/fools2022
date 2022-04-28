# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x318F_CrackerCavernV/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

CrackerCavernV_MapHeader:
    .word CrackerCavernV_MapLayout
    .word CrackerCavernV_MapEvts
    .word NULL
    .word NULL
    .hword MUS_END
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word CrackerCavernV_MapInitCode+1
    .word CrackerCavernV_MapConnections
    .word CrackerCavernV_MapInitScript
    .word CrackerCavernV_MapName
    .word 0x2819

CrackerCavernV_MapLayout:
    .word 12
    .word 12
    .word CrackerCavernV_MapBorder
    .word CrackerCavernV_MapData
    .word gTileset_General
    .word gTileset_Cave

.align 4
CrackerCavernV_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_NORMAN, 0, 6, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, CrackerCavern_Gratz, 0

.align 4
CrackerCavernV_MapCoordEvents:
CrackerCavernV_WarpCoordEvents:
    coord_event 6, 9, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
CrackerCavernV_MapBGEvents:

.align 4
CrackerCavernV_MapEvts:
    map_events 1, CrackerCavernV_MapObjectEvents, 0, 0, 1, CrackerCavernV_MapCoordEvents, 0, CrackerCavernV_MapBGEvents

.align 4
CrackerCavernV_MapBorder:
    .byte 0x11, 0x02, 0x11, 0x02, 0x11, 0x02, 0x11, 0x02

.align 4
CrackerCavernV_MapData:
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
CrackerCavernV_MapConnections:
    .hword 12688
    .byte 9, 137

.align 4
CrackerCavernV_MapName:
    .string "CAVERN DEPTHS$"

# scripts/318F_CrackerCavernV.s

.align 4

CrackerCavernV_MapInitCode:
    bx lr

CrackerCavernV_MapInitScript:
    end

CrackerCavern_Gratz:
    lock
    faceplayer
    checkflag FLAG_HACKER_BACKGROUND
    goto_if TRUE, CrackerCavern_Gratz_Finished
    msgbox CrackerCavern_Gratz_Text
    waitmessage
	closemessage
    delay 60
    playse SE_M_DETECT
    delay 20
	setvar VAR_RESULT, 3
	playse SE_ORB
	callnative DoOrbEffect
    delay 150
    callnative FadeOutOrbEffect
    waitstate
    delay 10
    message CrackerCavern_Gratz_Text2
    setflag FLAG_HACKER_BACKGROUND
    playfanfare MUS_SLOTS_JACKPOT
    waitfanfare
    call SyncProgressScript
CrackerCavern_Gratz_Finished:
    msgbox CrackerCavern_Gratz_Text3
    release
    end

CrackerCavern_Gratz_Text:
    .string "x$"

CrackerCavern_Gratz_Text2:
    .string "x$"

CrackerCavern_Gratz_Text3:
    .string "x$"
