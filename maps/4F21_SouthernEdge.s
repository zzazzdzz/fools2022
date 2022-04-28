# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x4F21_SouthernEdge/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

SouthernEdge_MapHeader:
    .word SouthernEdge_MapLayout
    .word SouthernEdge_MapEvts
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
    .word SouthernEdge_MapInitCode+1
    .word SouthernEdge_MapConnections
    .word SouthernEdge_MapInitScript
    .word SouthernEdge_MapName
    .word 0x2819

SouthernEdge_MapLayout:
    .word 11
    .word 16
    .word SouthernEdge_MapBorder
    .word SouthernEdge_MapData
    .word gTileset_General
    .word gTileset_Petalburg

.align 4
SouthernEdge_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_NORMAN, 0, 5, 13, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, SouthernEdge_Script1, 0

.align 4
SouthernEdge_MapCoordEvents:
SouthernEdge_WarpCoordEvents:
    coord_event 4, 6, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 5, 6, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 6, 6, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
SouthernEdge_MapBGEvents:

.align 4
SouthernEdge_MapEvts:
    map_events 1, SouthernEdge_MapObjectEvents, 0, 0, 3, SouthernEdge_MapCoordEvents, 0, SouthernEdge_MapBGEvents

.align 4
SouthernEdge_MapBorder:
    .byte 0x70, 0x01, 0x70, 0x01, 0x70, 0x01, 0x70, 0x01

.align 4
SouthernEdge_MapData:
    .hword 0xb592, 0xc540, 0xc5dc, 0xb5dd, 0x3001, 0x3001, 0x3001, 0xc5dc, 0xb5dd, 0xb542, 0xc590
    .hword 0xc592, 0xc540, 0xa5d4, 0xb5d5, 0x3001, 0x3001, 0x3001, 0xa5d4, 0xb5d5, 0xa542, 0xb590
    .hword 0xc592, 0xb540, 0xc5dc, 0xa5dd, 0x3001, 0x3001, 0x3001, 0xc5dc, 0xc5dd, 0xa542, 0xb590
    .hword 0xc592, 0xa540, 0xb5d4, 0xb5d5, 0x3001, 0x3001, 0x3001, 0xb5d4, 0xb5d5, 0xc542, 0xb590
    .hword 0xb592, 0xc540, 0xc5dc, 0xa5dd, 0x3001, 0x3001, 0x3001, 0xb5dc, 0xb5dd, 0xa542, 0xc590
    .hword 0xc592, 0xa540, 0xb5d4, 0xc5d5, 0x3001, 0x3001, 0x3001, 0xc5d4, 0xb5d5, 0xb542, 0xa590
    .hword 0xc592, 0xa540, 0xa5e4, 0xb5e5, 0x31d0, 0x31d1, 0x31d2, 0xa5e4, 0xa5e5, 0xc542, 0xb590
    .hword 0xc592, 0xa540, 0x3001, 0x31d0, 0x31d9, 0x31d9, 0x31d9, 0x31d2, 0x3001, 0x3142, 0xc590
    .hword 0xb592, 0xc540, 0x31d0, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d2, 0x3142, 0xa590
    .hword 0xc592, 0xc540, 0x31e0, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31e2, 0x3142, 0xb590
    .hword 0xa592, 0xc540, 0x3001, 0x31d8, 0x31d9, 0x31d9, 0x31d9, 0x31da, 0x3001, 0x3142, 0xb590
    .hword 0xa592, 0xa540, 0x3001, 0x31e0, 0x31d9, 0x31d9, 0x31d9, 0x31e2, 0x3001, 0x3142, 0xc590
    .hword 0xb592, 0xa540, 0x3001, 0x3001, 0x31e0, 0x31e1, 0x31e2, 0x3001, 0x3001, 0x3142, 0xa590
    .hword 0xc592, 0xa540, 0x3001, 0x3001, 0xb602, 0x3001, 0xc602, 0x3001, 0x3001, 0x3142, 0xc590
    .hword 0xb592, 0xa548, 0xc549, 0xb549, 0xc549, 0xb549, 0xa549, 0xa549, 0xa549, 0xc54a, 0xc590
    .hword 0xa59a, 0xb589, 0xb589, 0xc589, 0xb589, 0xa589, 0xa589, 0xa589, 0xa589, 0xb589, 0xc598

.align 4
SouthernEdge_MapConnections:
    .hword 0x4d3a
    .byte 14, 150
    .hword 0x4d3a
    .byte 14, 150
    .hword 0x4d3a
    .byte 14, 150

.align 4
SouthernEdge_MapName:
    .string "SOUTHERN EDGE$"

# scripts/4F21_SouthernEdge.s

.align 4

SouthernEdge_MapInitCode:
    bx lr

SouthernEdge_MapInitScript:
    end

SouthernEdge_Script1:
    lock
    faceplayer
    checkflag FLAG_SOUTHERN_EDGE
    goto_if TRUE, SouthernEdge_Script1_Finished
    msgbox SouthernEdge_Script1_Text
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
    message SouthernEdge_Script1_Text2
    setflag 0x867
    setflag FLAG_SOUTHERN_EDGE
    playfanfare MUS_SLOTS_JACKPOT
    waitfanfare
    call SyncProgressScript
    release
    end
SouthernEdge_Script1_Finished:
    msgbox SouthernEdge_Script1_Text3
    release
    end

SouthernEdge_Script1_Text:
    .string "Ah, our great land, abundant in lush\n"
    .string "vegetation.\p"
    .string "Many seek the power to move through\n"
    .string "blockades sent by the nature.\p"
    .string "That monumental power.\n"
    .string "This is what I grant you.$"

SouthernEdge_Script1_Text2:
    .string "The CUT ability was granted!$"
    
SouthernEdge_Script1_Text3:
    .string "Hope I see you another time...$"
