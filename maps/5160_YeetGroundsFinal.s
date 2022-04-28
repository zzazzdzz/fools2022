# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x5160_YeetGroundsFinal/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

YeetGroundsFinal_MapHeader:
    .word YeetGroundsFinal_MapLayout
    .word YeetGroundsFinal_MapEvts
    .word NULL
    .word NULL
    .hword MUS_SCHOOL
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word YeetGroundsFinal_MapInitCode+1
    .word YeetGroundsFinal_MapConnections
    .word YeetGroundsFinal_MapInitScript
    .word YeetGroundsFinal_MapName
    .word 0x001d

YeetGroundsFinal_MapLayout:
    .word 12
    .word 12
    .word YeetGroundsFinal_MapBorder
    .word YeetGroundsFinal_MapData
    .word gTileset_Building
    .word gTileset_GenericBuilding

.align 4
YeetGroundsFinal_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_MYSTERY_GIFT_MAN, 0, 8, 5, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, YeetGroundsFinal_Script1, 0x12

.align 4
YeetGroundsFinal_MapCoordEvents:
YeetGroundsFinal_WarpCoordEvents:
    coord_event 8, 4, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
YeetGroundsFinal_MapBGEvents:

.align 4
YeetGroundsFinal_MapEvts:
    map_events 1, YeetGroundsFinal_MapObjectEvents, 0, 0, 1, YeetGroundsFinal_MapCoordEvents, 0, YeetGroundsFinal_MapBGEvents

.align 4
YeetGroundsFinal_MapBorder:
    .byte 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00

.align 4
YeetGroundsFinal_MapData:
    .hword 0xb401, 0xc401, 0xb401, 0xc401, 0xb401, 0xa401, 0xc401, 0xc401, 0xb401, 0xa401, 0xc401, 0xa401
    .hword 0xc401, 0xb401, 0xa401, 0xb401, 0xc401, 0xc401, 0xb401, 0xc401, 0xb401, 0xc401, 0xb401, 0xa401
    .hword 0xc401, 0xc401, 0xb401, 0xb401, 0xb401, 0xb401, 0xb401, 0xa401, 0xc401, 0xb401, 0xc401, 0xc401
    .hword 0xb401, 0xc401, 0xc401, 0xb401, 0xc6e3, 0xb6be, 0xb6bf, 0xb6ed, 0xa6ee, 0xb6ef, 0xa6e4, 0xa401
    .hword 0xa401, 0xb401, 0xb401, 0xb401, 0xb6eb, 0xa6c6, 0xa6c7, 0xa6f5, 0x32f6, 0xa6f7, 0xb6ec, 0xa401
    .hword 0xa401, 0xa401, 0xc401, 0xc401, 0x32f3, 0x32ce, 0x32cf, 0x3221, 0x3221, 0x3221, 0x32f4, 0xb401
    .hword 0xa401, 0xb401, 0xa401, 0xc401, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0xa401
    .hword 0xb401, 0xa401, 0xb401, 0xa401, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0x3229, 0xc401
    .hword 0xb401, 0xb401, 0xa401, 0xa401, 0x3229, 0x3229, 0x3229, 0x3229, 0xa401, 0xa401, 0xa401, 0xc401
    .hword 0xc401, 0xb401, 0xc401, 0xa401, 0x3229, 0x3229, 0x3229, 0x3229, 0xb401, 0xa401, 0xc401, 0xa401
    .hword 0xb401, 0xb401, 0xc401, 0xa401, 0x3229, 0x3208, 0x3209, 0x3229, 0xc401, 0xb401, 0xb401, 0xa401
    .hword 0xa401, 0xb401, 0xa401, 0xc401, 0xb401, 0xc401, 0xb401, 0xb401, 0xb401, 0xc401, 0xc401, 0xc401

.align 4
YeetGroundsFinal_MapConnections:
    .hword 6771
    .byte 2, 136

.align 4
YeetGroundsFinal_MapName:
    .string "YEET GROUNDS$"

# scripts/5160_YeetGroundsFinal.s

.align 4

YeetGroundsFinal_MapInitCode:
    # fix the IRQ hook
    ldr r0, =0xe3a03301
    ldr r1, =IntrMain_Buffer
    str r0, [r1]
    bx lr

.align 4
.ltorg

YeetGroundsFinal_MapInitScript:
    end

YeetGroundsFinal_Script1:
    lock
    faceplayer
    bufferstring STR_VAR_1, Yeet_TimeBuffer
    bufferstring STR_VAR_2, Yeet_PlaceBuffer+1
    bufferstring STR_VAR_3, Yeet_TopScorerBuffer
    loadbytefromaddr 0, Yeet_PlaceBuffer
    compare_local_to_value 0, 0
    goto_if_eq YeetGroundsFinal_Script1_NoScore
    compare_local_to_value 0, 1
    goto_if_eq YeetGroundsFinal_Script1_GotFB
    compare_local_to_value 0, 0xff
    goto_if_eq YeetGroundsFinal_Script1_Desynced
YeetGroundsFinal_Script1_NoFB:
    msgbox YeetGroundsFinal_Script1_Text5_NFB
    goto YeetGroundsFinal_Script1_Common
YeetGroundsFinal_Script1_GotFB:
    setflag FLAG_WORDLE_MASTER_WORD
    message YeetGroundsFinal_Script1_Text_FB
    waitmessage
    playfanfare MUS_SLOTS_JACKPOT
    waitfanfare
    call SyncProgressScript
    goto YeetGroundsFinal_Script1_Common
YeetGroundsFinal_Script1_Desynced:
    msgbox YeetGroundsFinal_Script1_Text_Desync
    goto YeetGroundsFinal_Script1_Common
YeetGroundsFinal_Script1_NoScore:
    msgbox YeetGroundsFinal_Script1_Text4_AFB
    goto YeetGroundsFinal_Script1_Common
    # NotLikeThis
YeetGroundsFinal_Script1_Common:
    closemessage
    delay 20
    msgbox YeetGroundsFinal_Script1_Text_Out
    closemessage
    delay 20
	applymovement 1, Route110_TrickHouse_Movement_TrickMasterSpin
	waitmovement 0
	playse SE_M_EXPLOSION
	applymovement 1, Route110_TrickHouse_Movement_TrickMasterJumpAway
	waitmovement 0
    removeobject 1
    release
    end

YeetGroundsFinal_Script1_Text_FB:
    .string "And... YEET finished!\n"
    .string "Cleared after {STR_VAR_1}.\p"
    .string "This makes you the {STR_VAR_2} person\n"
    .string "to finish this YEET session.\p"
    .string "It seems you scored first blood on\n"
    .string "this challenge! Congratulations!$"

YeetGroundsFinal_Script1_Text_Out:
    .string "It's not like we have any rewards.\n"
    .string "The YEETS are for having fun!\p"
    .string "Keeping this in mind, I hope you had\n"
    .string "lots of fun. See you again!$"

YeetGroundsFinal_Script1_Text4_AFB:
    .string "And... YEET finished!\n"
    .string "Cleared after {STR_VAR_1}.\p"
    .string "This makes you the {STR_VAR_2} person\n"
    .string "to finish this YEET session.\p"
    .string "However, your results will not be saved.\n"
    .string "You already scored YEET first blood.$"
    
YeetGroundsFinal_Script1_Text5_NFB:
    .string "And... YEET finished!\n"
    .string "Cleared after {STR_VAR_1}.\p"
    .string "This makes you the {STR_VAR_2} person\n"
    .string "to finish this YEET session.\p"
    .string "It's a respectable place, but still,\n"
    .string "someone scored first blood before you.\l"
    .string "This person was... {STR_VAR_3}!$"

YeetGroundsFinal_Script1_Text_Desync:
    .string "And... YEET finished!\n"
    .string "Cleared after {STR_VAR_1}.\p"
    .string "Unfortunately, during your challenge,\n"
    .string "the active YEET has changed.\l"
    .string "Your score will not be saved.$"

Yeet_TimeBuffer:
    .ascii "--YEETTIMER____________--"
    .byte 0xff

Yeet_PlaceBuffer:
    .ascii "--YEETPLACE--"
    .byte 0xff

Yeet_TopScorerBuffer:
    .ascii "--YEETFIRSTBLOODNICK--"
    .byte 0xff

