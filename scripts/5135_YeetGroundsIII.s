.align 4

YeetGroundsIII_MapInitCode:
    bx lr

YeetGroundsIII_PrepareRetire:
    ldr r0, =zWarpTargetData
    ldr r1, =0x1d045135
    str r1, [r0]
    ldr r0, =zWarpTargetDirection
    mov r1, #1
    strb r1, [r0]
    bx lr

.align 4
.ltorg

YeetGroundsIII_MapInitScript:
    end

.macro question_script q1:req a1:req q2:req a2:req flag:req tx:req ty:req
    lock
    faceplayer
    checkflag \flag
    goto_if TRUE, YeetGrounds_JustOK
    msgbox YeetGrounds_Q
    closemessage
    delay 10
    applymovement VAR_LAST_TALKED, Route110_TrickHousePuzzle5_Movement_MechadollShake
    waitmovement 0
    faceplayer
    delay 10
    random 2
    compare VAR_RESULT, 0
    goto_if_eq YeetGroundsIII_Script1_Q2_\q1
    msgbox \q1, MSGBOX_YESNO
    compare VAR_RESULT, \a1
    goto_if_eq YeetGroundsIII_Script1_OK_\q1
    goto YeetGrounds_AnswerWrong
YeetGroundsIII_Script1_Q2_\q1:
    msgbox \q2, MSGBOX_YESNO
    compare VAR_RESULT, \a2
    goto_if_eq YeetGroundsIII_Script1_OK_\q1
    goto YeetGrounds_AnswerWrong
YeetGroundsIII_Script1_OK_\q1:
    setflag \flag
	waitse
	playse SE_SUCCESS
    msgbox YeetGrounds_OK
    closemessage
    delay 15
    playse SE_DOOR
    setmetatile \tx, \ty, 0x26a, FALSE
	callnative DrawWholeMapView
    delay 20
    release
    end
.endm

YeetGroundsIII_Script1:
    question_script YeetGrounds_Q1_1, NO, YeetGrounds_Q1_2, YES, 0x0011, 18, 25

YeetGroundsIII_Script2:
    question_script YeetGrounds_Q2_1, NO, YeetGrounds_Q2_2, YES, 0x0012, 26, 25

YeetGroundsIII_Script3:
    question_script YeetGrounds_Q3_1, YES, YeetGrounds_Q3_2, NO, 0x0013, 30, 21

YeetGroundsIII_Script4:
    question_script YeetGrounds_Q4_1, NO, YeetGrounds_Q4_2, YES, 0x0014, 30, 11

YeetGroundsIII_Script5:
    question_script YeetGrounds_Q5_1, NO, YeetGrounds_Q5_2, YES, 0x0015, 18, 16

YeetGroundsIII_Script6:
    question_script YeetGrounds_Q6_1, YES, YeetGrounds_Q6_2, NO, 0x0016, 26, 7

YeetGroundsIII_Script7:
    question_script YeetGrounds_Q7_1, YES, YeetGrounds_Q7_2, NO, 0x0017, 18, 7

YeetGrounds_Intro:
    lock
    faceplayer
    msgbox YeetGrounds_Intro_Text
    release
    end

YeetGrounds_Intro_Text:
    .string "You call yourself an explorer?\n"
    .string "Glitchland holds no secrets for you?\p"
    .string "Allow me to check that with my\n"
    .string "special Glitchland Knowledge Quiz!\p"
    .string "Answer the questions correctly, and\n"
    .string "you get to pass through!\p"
    .string "I unfortunately had problems finding\n"
    .string "enough people to help me with quizzing,\l"
    .string "so I hired some underpaid Delirians.\p"
    .string "Hopefully their unusual manner of\n"
    .string "speaking won't distract you too much!$"

YeetGrounds_TheCode:
    compare VAR_TEMP_4, 1
    goto_if_eq Route110_TrickHousePuzzle_EventScript_ReadScrollAgain
	setvar VAR_TEMP_4, 1
	goto Route110_TrickHousePuzzle_EventScript_FoundScroll

YeetGrounds_TheDoor:
    compare VAR_TEMP_4, 2
    goto_if_eq YeetGrounds_TheDoor_End
    compare VAR_TEMP_4, 0
    goto_if_eq Route110_TrickHousePuzzle_EventScript_DoorLocked
    msgbox YeetGrounds_TheDoor_Text
	playse SE_PIN
	setvar VAR_TEMP_4, 2
    setmetatile 13, 5, 0x20b, FALSE
    setmetatile 13, 4, 0x203, FALSE
	callnative DrawWholeMapView
    releaseall
YeetGrounds_TheDoor_End:
    end

YeetGrounds_JustOK:
    msgbox YeetGrounds_OK
    release
    end

YeetGrounds_AnswerWrong:
	waitse
	playse SE_FAILURE
    msgbox YeetGrounds_Nope
    callnative YeetGroundsIII_PrepareRetire
    goto WarpScript

YeetGrounds_TheDoor_Text:
    .string "You write down the secret code on\n"
    .string "the door...\p"
    .string "The lock clicked open!$"

YeetGrounds_Q:
    .string "{JPN}heyooo !\n"
    .string "i ask question !\p"
    .string "pass you through if good !\n"
    .string "yAYA!!\p"
    .string "but if bad, return all\n"
    .string "to start ...$"

YeetGrounds_OK:
    .string "{JPN}yaYA !\n"
    .string "you answer .. GOOD !\p"
    .string "i will be open path\n"
    .string "for you !$"

YeetGrounds_Nope:
    .string "{JPN}oh nos ..\n"
    .string "you answer .. WRONG !\p"
    .string "go back to start !\n"
    .string "sorry! VERY !!$"

YeetGrounds_Q1_1:
    # N
    .string "{JPN}sooo .. my hometown ..\n"
    .string "is it in south part ?$"

YeetGrounds_Q1_2:
    # Y
    .string "{JPN}sooo .. that boy who\n"
    .string "plays flute ..\l"
    .string "is it in south part ?$"

YeetGrounds_Q2_1:
    # N
    .string "{JPN}yay .. the north..\n"
    .string "very big .. vERY!\l"
    .string "but is east smolest?$"

YeetGrounds_Q2_2:
    # Y
    .string "{JPN}the map of designer\n"
    .string "vERY BIG !!\p"
    .string "but .. there ..\n"
    .string "was five of signs?$"

YeetGrounds_Q3_1:
    # Y
    .string "{JPN}so in north ..\n"
    .string "they ask for pokemans.!\p"
    .string "any of them is\n"
    .string "grass type yes ?$"

YeetGrounds_Q3_2:
    # N
    .string "{JPN}crossroads in north\n"
    .string "very cool map !\p"
    .string "but has it\n"
    .string "three peopel stand?$"

YeetGrounds_Q4_1:
    # N
    .string "{JPN}sooo.. in all\n"
    .string "north towns ..\l"
    .string "is there 5 house ?$"

YeetGrounds_Q4_2:
    # Y
    .string "{JPN}altering cave\n"
    .string "has 3 forms yes ?$"

YeetGrounds_Q5_1:
    # N
    .string "{JPN}in old glitchland ..\n"
    .string "very VERY old !\p"
    .string "it was 4F item\n"
    .string "to teleport ??$"

YeetGrounds_Q5_2:
    # Y
    .string "{JPN}in current library ..\n"
    .string "are 14 bookshelf?$"

YeetGrounds_Q6_1:
    # Y
    .string "{JPN}are here 3 peopel\n"
    .string "in the trendy hous ??$"

YeetGrounds_Q6_2:
    # N
    .string "{JPN}in glitchland ..\n"
    .string "yet another maps..\p"
    .string "there 3 of them\n"
    .string "right ??$"

YeetGrounds_Q7_1:
    # Y
    .string "{JPN}this person of \n"
    .string "boardwalk ..\p"
    .string "asking about star !\n"
    .string "they is girl ?$"

YeetGrounds_Q7_2:
    # N
    .string "{JPN}is there any mon in\n"
    .string "houses of south ?$"
