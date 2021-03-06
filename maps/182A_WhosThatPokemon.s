# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x182A_WhosThatPokemon/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

WhosThatPokemon_MapHeader:
    .word WhosThatPokemon_MapLayout
    .word WhosThatPokemon_MapEvts
    .word NULL
    .word NULL
    .hword MUS_RG_ROUTE3
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word WhosThatPokemon_MapInitCode+1
    .word WhosThatPokemon_MapConnections
    .word WhosThatPokemon_MapInitScript
    .word WhosThatPokemon_MapName
    .word 0x1000

WhosThatPokemon_MapLayout:
    .word 18
    .word 28
    .word WhosThatPokemon_MapBorder
    .word WhosThatPokemon_MapData
    .word gTileset_General
    .word gTileset_Petalburg

.align 4
WhosThatPokemon_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_MAN_3, 0, 15, 19, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, WhosThatPokemon_GuardScript, 0
    object_event 2, OBJ_EVENT_GFX_MAN_3, 0, 8, 15, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, WhosThatPokemon_GuardScript, 0
    object_event 3, OBJ_EVENT_GFX_MAN_3, 0, 15, 9, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, WhosThatPokemon_GuardScript, 0
    object_event 4, OBJ_EVENT_GFX_BOY_1, 0, 13, 24, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, WhosThatPokemon_Script4, 0

.align 4
WhosThatPokemon_MapCoordEvents:
    coord_event 14, 9, 0, VAR_TEMP_0, 0, WhosThatPokemon_Script3
    coord_event 9, 15, 0, VAR_TEMP_0, 0, WhosThatPokemon_Script2
    coord_event 14, 19, 0, VAR_TEMP_0, 0, WhosThatPokemon_Script1
WhosThatPokemon_WarpCoordEvents:
    coord_event 14, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 15, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 22, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 23, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 24, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 25, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
WhosThatPokemon_MapBGEvents:

.align 4
WhosThatPokemon_MapEvts:
    map_events 4, WhosThatPokemon_MapObjectEvents, 0, 0, 9, WhosThatPokemon_MapCoordEvents, 0, WhosThatPokemon_MapBGEvents

.align 4
WhosThatPokemon_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
WhosThatPokemon_MapData:
    .hword 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0x3108, 0x310a, 0xc5d4, 0xa5d5
    .hword 0xb5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0x3108, 0x310a, 0xc5dc, 0xa5dd
    .hword 0xc5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0x3108, 0x310a, 0xb5d4, 0xb5d5
    .hword 0xa5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0x3108, 0x310a, 0xb5dc, 0xa5dd
    .hword 0xb5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0x3108, 0x310a, 0xa5d4, 0xa5d5
    .hword 0xa5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0x3108, 0x310a, 0xa5dc, 0xa5dd
    .hword 0xc5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0x3108, 0x310a, 0xb5d4, 0xc5d5
    .hword 0xc5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xa5e4, 0xa5e5, 0xa5e4, 0xa5e5, 0xa5e4, 0xa5e5, 0x3108, 0x310a, 0xc5dc, 0xc5dd
    .hword 0xb5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0x3004, 0x3001, 0x3004, 0x3001, 0x3001, 0xc541, 0x3108, 0x310a, 0xc5d4, 0xc5d5
    .hword 0xb5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xa549, 0xb549, 0xb549, 0xb549, 0xa549, 0xc54a, 0x3108, 0x310a, 0xb5dc, 0xb5dd
    .hword 0xa5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0x3100, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3109, 0x310a, 0xb5d4, 0xb5d5
    .hword 0xb5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0x3108, 0x3109, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3112, 0xc5dc, 0xb5dd
    .hword 0xa5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0x3108, 0x310a, 0xa538, 0xc549, 0xc549, 0xa549, 0xb549, 0xb549, 0xc5d4, 0xb5d5
    .hword 0xc5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0x3108, 0x310a, 0xc540, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xc5dc, 0xa5dd
    .hword 0xc5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0x3108, 0x310a, 0xb540, 0x3001, 0x3004, 0x3001, 0x3004, 0x3001, 0xa5d4, 0xb5d5
    .hword 0xc5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0x3108, 0x310a, 0xa532, 0x3001, 0x3001, 0x3004, 0x3001, 0x3004, 0xb5dc, 0xb5dd
    .hword 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0x3108, 0x3109, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3102, 0xb5d4, 0xc5d5
    .hword 0xc5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0x3110, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3109, 0x310a, 0xa5dc, 0xc5dd
    .hword 0xa5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xa549, 0xc549, 0xb549, 0xb549, 0xc549, 0xa53a, 0x3108, 0x310a, 0xb5d4, 0xc5d5
    .hword 0xc5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xa533, 0x3108, 0x310a, 0xb5dc, 0xb5dd
    .hword 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0x3004, 0x3001, 0x3100, 0x3101, 0x3101, 0x3101, 0x3109, 0x310a, 0xb5d4, 0xc5d5
    .hword 0xc5e4, 0xa5e5, 0xa5e4, 0xb5e5, 0xb5e4, 0xc5e5, 0xa5e4, 0xa5e5, 0x3001, 0x3004, 0x3108, 0x3109, 0x3111, 0x3111, 0x3111, 0x3112, 0xa5e4, 0xa5e5
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3108, 0x310a, 0x3001, 0x3001, 0xa468, 0xc469, 0xa469, 0xa46a
    .hword 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3109, 0x310a, 0x3001, 0x3001, 0xb470, 0xa471, 0xc471, 0xb472
    .hword 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3112, 0x3001, 0x3001, 0xc470, 0xb471, 0xa471, 0xc472
    .hword 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0xc470, 0xc471, 0xa471, 0xc472
    .hword 0xa5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xc478, 0xb479, 0xc479, 0xb47a
    .hword 0xa5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0x31ce, 0x31cf, 0x31ce, 0x31cf

.align 4
WhosThatPokemon_MapConnections:
    .hword 0x1927
    .byte 8, 140
    .hword 0x1927
    .byte 8, 140
    .hword 0x1720
    .byte 172, 4
    .hword 0x1720
    .byte 172, 4
    .hword 0x1720
    .byte 172, 4
    .hword 0x1720
    .byte 172, 4

.align 4
WhosThatPokemon_MapName:
    .string "POK{EACUTE}MON QUIZ$"

# scripts/182A_WhosThatPokemon.s

.align 4

WhosThatPokemon_MapInitCode:
    bx lr

WhosThatPokemon_MapInitScript:
    end

WhosThatPokemon_GuardScript:
    lock
    faceplayer
    msgbox WhosThatPokemon_GuardScript_Text
    release
    end

WhosThatPokemon_GuardScript_Text:
    .string "Answer me these questions three,\n"
    .string "and you can pass through this path\l"
    .string "guarded by me!$"

WhosThatPokemon_Script4:
    lock
    faceplayer
    msgbox WhosThatPokemon_Script4_Text
    release
    end

WhosThatPokemon_Script4_Text:
    .string "Man, I really suck at remembering\n"
    .string "Pok{EACUTE}mon names.\p"
    .string "Maybe I could just cheat by looking\n"
    .string "things up on the Internet.\p"
    .string "You're probably doing this right now.\n"
    .string "Did I getcha?$"

WhosThatPokemon_Script_Incorrect:
    msgbox WhosThatPokemon_FailureText
    closemessage
    applymovement 0xff, WhosThatPokemon_MoveDown
    waitmovement 0xff
WhosThatPokemon_Script_End:
    release
    end
WhosThatPokemon_MoveDown:
    walk_down
    step_end

WhosThatPokemon_Script1:
    checkflag 0x0011
    goto_if TRUE, WhosThatPokemon_Script_End
    checkflag FLAG_DONE_MON_QUIZ
    goto_if TRUE, WhosThatPokemon_Script_End
    lock
    msgbox WhosThatPokemon_Script1_Text
    callnative GenericNamingScreen
    waitstate
    bufferstring STR_VAR_1, WhosThatPokemon_Script1_CorrectAnswer
    callnative CompareStrings
    compare VAR_RESULT, 0
    goto_if TRUE, WhosThatPokemon_Script1_Correct
    goto WhosThatPokemon_Script_Incorrect
WhosThatPokemon_Script1_Correct:
    setflag 0x0011
    msgbox WhosThatPokemon_SuccessText
    release
    end

WhosThatPokemon_Script1_CorrectAnswer:
    .string "ODDISH$"

WhosThatPokemon_Script1_Text:
    .string "Who's that Pok{EACUTE}mon!\n"
    .string "Challenge number one!\p"
    .string "Its scientific name is {LQUOT}Oddium\n"
    .string "Wanderus{RQUOT}. At night, it's said to walk\l"
    .string "nearly 1,000 feet on its two roots.\p"
    .string "So, which Pok{EACUTE}mon is that?\n"
    .string "What's your guess?$"

WhosThatPokemon_Script2:
    checkflag 0x0012
    goto_if TRUE, WhosThatPokemon_Script_End
    checkflag FLAG_DONE_MON_QUIZ
    goto_if TRUE, WhosThatPokemon_Script_End
    lock
    msgbox WhosThatPokemon_Script2_Text
    callnative GenericNamingScreen
    waitstate
    bufferstring STR_VAR_1, WhosThatPokemon_Script2_CorrectAnswer
    callnative CompareStrings
    compare VAR_RESULT, 0
    goto_if TRUE, WhosThatPokemon_Script2_Correct
    goto WhosThatPokemon_Script_Incorrect
WhosThatPokemon_Script2_Correct:
    setflag 0x0012
    msgbox WhosThatPokemon_SuccessText
    release
    end

WhosThatPokemon_Script2_CorrectAnswer:
    .string "TORKOAL$"

WhosThatPokemon_Script2_Text:
    .string "Who's that Pok{EACUTE}mon!\n"
    .string "Challenge number two!\p"
    .string "It digs through mountains in search\n"
    .string "of coal. If it finds some, it fills\l"
    .string "hollow spaces on its shell with it.\p"
    .string "So, which Pok{EACUTE}mon is that?\n"
    .string "What's your guess?$"

WhosThatPokemon_Script3:
    checkflag 0x0013
    goto_if TRUE, WhosThatPokemon_Script_End
    checkflag FLAG_DONE_MON_QUIZ
    goto_if TRUE, WhosThatPokemon_Script_End
    lock
    msgbox WhosThatPokemon_Script3_Text
    callnative GenericNamingScreen
    waitstate
    bufferstring STR_VAR_1, WhosThatPokemon_Script3_CorrectAnswer
    callnative CompareStrings
    compare VAR_RESULT, 0
    goto_if TRUE, WhosThatPokemon_Script3_Correct
    goto WhosThatPokemon_Script_Incorrect
WhosThatPokemon_Script3_Correct:
    setflag 0x0013
    setflag FLAG_DONE_MON_QUIZ
    msgbox WhosThatPokemon_SuccessText
    release
    end

WhosThatPokemon_Script3_CorrectAnswer:
    .string "CACTURNE$"

WhosThatPokemon_Script3_Text:
    .string "Who's that Pok{EACUTE}mon!\n"
    .string "Challenge number three!\p"
    .string "During the daytime, it remains\n"
    .string "umoving so that it does not lose\l"
    .string "any moisture to the harsh desert sun.\p"
    .string "So, which Pok{EACUTE}mon is that?\n"
    .string "What's your guess?$"

WhosThatPokemon_SuccessText:
    .string "Ding dong! That's correct!\n"
    .string "Go on through!$"

WhosThatPokemon_FailureText:
    .string "Unfortunately, your answer is wrong.\n"
    .string "Try again!$"

