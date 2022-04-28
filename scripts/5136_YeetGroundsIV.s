.align 4

YeetGroundsIV_MapInitCode:
    bx lr

YeetGroundsIV_Wordle_SolutionHasLetter:
    ldr r1, =YeetGroundsIV_WordleSolution
    ldrb r2, [r1]
    cmp r2, r0
    beq YeetGroundsIV_Wordle_SolutionHasLetter_True
    ldrb r2, [r1, #1]
    cmp r2, r0
    beq YeetGroundsIV_Wordle_SolutionHasLetter_True
    ldrb r2, [r1, #2]
    cmp r2, r0
    beq YeetGroundsIV_Wordle_SolutionHasLetter_True
    ldrb r2, [r1, #3]
    cmp r2, r0
    beq YeetGroundsIV_Wordle_SolutionHasLetter_True
    ldrb r2, [r1, #4]
    cmp r2, r0
    beq YeetGroundsIV_Wordle_SolutionHasLetter_True
    mov r0, #0
    bx lr
YeetGroundsIV_Wordle_SolutionHasLetter_True:
    mov r0, #1
    bx lr

YeetGroundsIV_Wordle_CheckLetterAtPos:
    push {lr}
    ldr r1, =YeetGroundsIV_WordleSolution
    add r1, r0
    ldrb r2, [r1]
    ldr r1, =gStringVar2
    add r1, r0
    ldrb r0, [r1]
    cmp r0, r2
    beq YeetGroundsIV_Wordle_Correct
    bl YeetGroundsIV_Wordle_SolutionHasLetter
    cmp r0, #1
    beq YeetGroundsIV_Wordle_IncorrectButContains
YeetGroundsIV_Wordle_Incorrect:
    ldr r0, =#0x2bc
    pop {r1}
    bx r1
YeetGroundsIV_Wordle_IncorrectButContains:
    ldr r0, =#0x29c
    pop {r1}
    bx r1
YeetGroundsIV_Wordle_Correct:
    ldr r0, =#0x2ac
    pop {r1}
    bx r1

YeetGroundsIV_Wordle_ResultOfLetterVar8001ToVar8001:
    push {lr}
    ldr r0, =gSpecialVar_0x8001
    ldrh r0, [r0]
    bl YeetGroundsIV_Wordle_CheckLetterAtPos
    ldr r1, =gSpecialVar_0x8001
    strh r0, [r1]
    pop {r0}
    bx r0

YeetGroundsIV_Wordle_RandomTile:
    push {lr}
YeetGroundsIV_Wordle_RandomTile_Reroll:
    ldr r0, =Random+1
    bl YeetGroundsIV_Wordle_RandomTile_BXR0
    mov r1, #3
    and r0, r1
    cmp r0, #0
    beq YeetGroundsIV_Wordle_RandomTile_Reroll
    cmp r0, #1
    beq YeetGroundsIV_Wordle_Incorrect
    cmp r0, #2
    beq YeetGroundsIV_Wordle_IncorrectButContains
    b YeetGroundsIV_Wordle_Correct
YeetGroundsIV_Wordle_RandomTile_BXR0:
    bx r0

YeetGroundsIV_Wordle_RandomTileTo8001:
    push {lr}
    bl YeetGroundsIV_Wordle_RandomTile
    ldr r1, =gSpecialVar_0x8001
    strh r0, [r1]
    pop {r0}
    bx r0

.align 4
.ltorg

YeetGroundsIV_WordleSolution:
    .ascii "--RNDWORD--"
    .byte 0xff

YeetGroundsIV_WordleMasterWord:
    .string "BEPIS$"

YeetGroundsIV_MapInitScript:
    end

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
    setmetatile 4, 23, 0x20b, FALSE
    setmetatile 4, 22, 0x203, FALSE
	callnative DrawWholeMapView
    releaseall
YeetGrounds_TheDoor_End:
    end

YeetGrounds_TheDoor_Text:
    .string "You write down the secret code on\n"
    .string "the door...\p"
    .string "The lock clicked open!$"

YeetGroundsIV_WordleSwitch:
    lock
    setmetatile 18, 24, 0x259, TRUE
	callnative DrawWholeMapView
    msgbox YeetGroundsIV_WordleSwitch_Text
    callnative GenericNamingScreen
    waitstate
    setvar 0x8002, 20
YeetGroundsIV_WordleSwitch_Anim1:
    callnative YeetGroundsIV_Wordle_RandomTileTo8001
    setmetatile 15, 22, 0x8001, FALSE
    callnative YeetGroundsIV_Wordle_RandomTileTo8001
    setmetatile 16, 22, 0x8001, FALSE
    callnative YeetGroundsIV_Wordle_RandomTileTo8001
    setmetatile 17, 22, 0x8001, FALSE
    callnative YeetGroundsIV_Wordle_RandomTileTo8001
    setmetatile 18, 22, 0x8001, FALSE
    callnative YeetGroundsIV_Wordle_RandomTileTo8001
    setmetatile 19, 22, 0x8001, FALSE
	callnative DrawWholeMapView
    playse SE_PIN
    delay 4
    subvar 0x8002, 1
    compare 0x8002, 0
    goto_if_ne YeetGroundsIV_WordleSwitch_Anim1
    checkflag FLAG_WORDLE_MASTER_WORD
    goto_if FALSE, YeetGroundsIV_WordleSwitch_WordTests
YeetGroundsIV_WordleSwitch_MasterWord:
    bufferstring STR_VAR_1, YeetGroundsIV_WordleMasterWord
    callnative CompareStrings
    compare VAR_RESULT, 0
    goto_if_ne YeetGroundsIV_WordleSwitch_WordTests
    bufferstring STR_VAR_2, YeetGroundsIV_WordleSolution
YeetGroundsIV_WordleSwitch_WordTests:
    setvar 0x8001, 0
    callnative YeetGroundsIV_Wordle_ResultOfLetterVar8001ToVar8001
    setmetatile 15, 22, 0x8001, FALSE
    setvar 0x8001, 1
    callnative YeetGroundsIV_Wordle_ResultOfLetterVar8001ToVar8001
    setmetatile 16, 22, 0x8001, FALSE
    setvar 0x8001, 2
    callnative YeetGroundsIV_Wordle_ResultOfLetterVar8001ToVar8001
    setmetatile 17, 22, 0x8001, FALSE
    setvar 0x8001, 3
    callnative YeetGroundsIV_Wordle_ResultOfLetterVar8001ToVar8001
    setmetatile 18, 22, 0x8001, FALSE
    setvar 0x8001, 4
    callnative YeetGroundsIV_Wordle_ResultOfLetterVar8001ToVar8001
    setmetatile 19, 22, 0x8001, FALSE
    setmetatile 18, 24, 0x258, TRUE
	callnative DrawWholeMapView
    playse SE_SUCCESS
    delay 16
    bufferstring STR_VAR_1, YeetGroundsIV_WordleSolution
    callnative CompareStrings
    compare VAR_RESULT, 0
    goto_if TRUE, YeetGroundsIV_WordleSwitch_Correct
    release
    end
YeetGroundsIV_WordleSwitch_Correct:
    delay 16
    playse SE_DOOR
    setmetatile 20, 23, 0x292, TRUE
    setmetatile 22, 23, 0x290, TRUE
    setmetatile 21, 23, 0x208, FALSE
	callnative DrawWholeMapView
    delay 16
    release
    end

YeetGroundsIV_WordleSwitch_Text:
    .string "You press the switch.\n"
    .string "A keyboard pops out of the ground.\p"
    .string "There's a note attached:\n"
    .string "{LQUOT}Use only uppercase letters{RQUOT}.$"

YeetGroundsIV_Script1:
    lock
    faceplayer
    msgbox YeetGroundsIV_Script1_Text
    release
    end

YeetGroundsIV_Script1_Text:
    .string "Say, have you ever played {LQUOT}Wordle{RQUOT}?\n"
    .string "If so, I have a treat for you!\p"
    .string "Guess the word by operating the\n"
    .string "complex machinery ahead.\p"
    .string "Green is good! Red is bad!\n"
    .string "Yellow means different position.\p"
    .string "If you have trouble with the chosen\n"
    .string "word, use the handy reset door to roll\l"
    .string "for a different one.$"
