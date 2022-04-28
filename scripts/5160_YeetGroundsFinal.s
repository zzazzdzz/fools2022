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
