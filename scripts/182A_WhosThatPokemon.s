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
