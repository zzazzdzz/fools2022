.align 4

GameCorner_MapInitCode:
    push {lr}
    ldr r2, =SetCoins+1
    mov r0, #200
    bl GameCorner_MapInitCode_BXR2
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    pop {r2}
GameCorner_MapInitCode_BXR2:
    bx r2

GameCorner_RequestLottery:
    # set packet length
    ldr r1, =zLinkPacketTxLen
    mov r0, #2
    str r0, [r1]
    # set packet struct address
    ldr r1, =zLinkPacketTx
    ldr r0, =zPacketStruct
    str r0, [r1]
    # prepare packet type
    mov r1, #COMMAND_ID_LOTTERY
    str r1, [r0]
    # receive 32 bytes
    ldr r1, =zLinkPacketRxLen
    mov r0, #32
    str r0, [r1]
    # to buffer below
    ldr r1, =zLinkPacketRx
    ldr r0, =GameCorner_LetterBuffer
    str r0, [r1]
    bx lr

GameCorner_PrepareYeetMap:
    ldr r0, =zWarpTargetData
    ldr r1, =GameCorner_Script2_CurrentYeetMapID
    ldr r1, [r1]
    str r1, [r0]
    ldr r0, =zWarpTargetDirection
    mov r1, #1
    strb r1, [r0]
    ldr r0, =zSkipMapExitMovement
    mov r1, #0
    strb r1, [r0]
    bx lr

.ltorg
.align 4

GameCorner_LetterBuffer:
    .string "B, E, P, I, S$$$"
GameCorner_TypeBuffer:
    .string "bepis$$$$$$$$$$$"
GameCorner_Padding:
    .word 0

PlayerNameString:
    .ascii "--PLAYERNICKNA--"
    .byte 0xff

GameCorner_MapInitScript:
    end

GameCorner_Script1:
    lock
    faceplayer
    msgbox GameCorner_Script1_Text, MSGBOX_YESNO
    compare_var_to_value VAR_RESULT, NO
    goto_if_eq GameCorner_Script1_Cancel
    callnative GameCorner_RequestLottery
    call GenericRequestScript
    bufferstring STR_VAR_1, GameCorner_LetterBuffer
    bufferstring STR_VAR_2, GameCorner_TypeBuffer
    bufferstring STR_VAR_3, PlayerNameString
    msgbox GameCorner_Lottery_DrawText
    delay 8
    compare_addr_to_value GameCorner_TypeBuffer, 0xd6
    goto_if_eq GameCorner_Script1_NotMatched
GameCorner_Script1_Matched:
    message GameCorner_Lottery_DrawText_Matched
    waitmessage
    playfanfare MUS_SLOTS_JACKPOT
    waitfanfare
    msgbox GameCorner_Lottery_DrawText_Matched2
    release
    end
GameCorner_Script1_NotMatched:
    msgbox GameCorner_Lottery_DrawText_NotMatched
    release
    end
GameCorner_Script1_Cancel:
    release
    end

GameCorner_Script1_Text:
    .string "Welcome to the Glitchland Game\n"
    .string "Corner! This is our lottery counter.\p"
    .string "Here, you can play the famous\n"
    .string "Glitchland Lottery!\p"
    .string "Each day, every 3 hours starting from\n"
    .string "midnight UTC, we draw 5 random letters.\p"
    .string "The more of them happen to appear in\n"
    .string "your username, the bigger the reward!\l"
    .string "Do you wish to participate?$"

GameCorner_Lottery_DrawText:
    .string "Now, {STR_VAR_3}?\n"
    .string "Let's see how many you got.\p"
    .string "The lucky letters right now are:\n"
    .string "{STR_VAR_1}!$"

GameCorner_Lottery_DrawText_Matched:
    .string "Congradnafio! Looks like your\n"
    .string "username scored a {STR_VAR_2} match!$"

GameCorner_Lottery_DrawText_Matched2:
    .string "We have already commemorated your\n"
    .string "success with a unique achievement.\p"
    .string "Thank you for participating.\n"
    .string "See you soon!$"

GameCorner_Lottery_DrawText_NotMatched:
    .string "We're sorry.\n"
    .string "You didn't get a match...$"

GameCorner_Script2:
    lock
    faceplayer
    bufferstring STR_VAR_2, GameCorner_Script2_CurrentYeetBuffer
    msgbox GameCorner_Script2_Text, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq GameCorner_Script2_No
    msgbox GameCorner_Script2_Text2
    closemessage
    delay 20
	applymovement 2, Route110_TrickHouse_Movement_TrickMasterSpin
	waitmovement 0
	playse SE_M_EXPLOSION
	applymovement 2, Route110_TrickHouse_Movement_TrickMasterJumpAway
	waitmovement 0
    callnative GameCorner_PrepareYeetMap
    goto WarpScript
GameCorner_Script2_No:
    release
    end

GameCorner_Script2_Text:
    .string "Welcome to our GAME CORNER!\n"
    .string "I'm York!\p"
    .string "This is the counter for participation\n"
    .string "in York's Eccentric Exclusive Trials,\l"
    .string "or YEETs for short!\p"
    .string "These are special, unique challenges,\n"
    .string "which are randomized every 4 hours,\l"
    .string "starting at UTC midnight.\p"
    .string "The current trial on the menu:\n"
    .string "{LQUOT}{STR_VAR_2}{RQUOT}!\l"
    .string "Do you wish to participate?$"

GameCorner_Script2_Text2:
    .string "That's what I wanted to hear.\n"
    .string "The YEET will commence shortly!\p"
    .string "Should the challenge prove to be too\n"
    .string "difficult, remember you can give up by\l"
    .string "leaving through the entrance!$"

GameCorner_Script2_CurrentYeetBuffer:
    .ascii "--CURRENTYEETTITLE____________--"
    .byte 0xff

.align 4
GameCorner_Script2_CurrentYeetMapID:
    .ascii "--YEETID--"
    .byte 0xff

GameCorner_Script3:
    lock
    faceplayer
    msgbox GameCorner_Script3_Text
    release
    end

GameCorner_Script3_Text:
    .string "The weather outside is very nice.$"

GameCorner_Script4:
    lock
    faceplayer
    msgbox GameCorner_Script4_Text
    release
    end

GameCorner_Script4_Text:
    .string "We're so grateful that underage\n"
    .string "gambling restrictions didn't make\l"
    .string "their way through to Glitchland!\p"
    .string "Otherwise, we'd be stuck playing\n"
    .string "Voltorb Flip!$"

GameCorner_Script5:
    lock
    faceplayer
    msgbox GameCorner_Script5_Text
    release
    end

GameCorner_Script5_Text:
    .string "We're playing a game here.\n"
    .string "I think I have a slight disadvantage.\p"
    .string "He has two hotels, a pair of bishops,\n"
    .string "and three blue land cards, untapped.\p"
    .string "But on the flip side, I have Mewtwo EX\n"
    .string "and three pieces of Exodia in hand.$"

GameCorner_Script6:
    lock
    faceplayer
    msgbox GameCorner_Script6_Text
    release
    end

GameCorner_Script6_Text:
    .string "Okay, so, end of your time, I'm gonna\n"
    .string "zip in Pesterman.\p"
    .string "Then, after I unturn, I'm gonna cast\n"
    .string "Splinter Tom, targeting Pesterman.$"

GameCorner_Script7:
    lock
    msgbox GameCorner_Script7_Text
    release
    end

GameCorner_Script7_Text:
    .string "It's a trash can.\n"
    .string "There's only Fortnite inside.\p"
    .string "Oops, sorry, I meant trash.\n"
    .string "They're like synonyms.$"

GameCorner_NormalSlots:
    lock
    checkflag FLAG_GOT_COIN_CASE
    goto_if FALSE, GameCorner_DisabledSlots
    msgbox GameCorner_SlotMachine_Q, MSGBOX_YESNO
    compare_var_to_value VAR_RESULT, NO
    goto_if_eq GameCorner_EndSlots
    setvar VAR_RESULT, 2
    playslotmachine VAR_RESULT
    checkcoins VAR_TEMP_2
    compare_var_to_value VAR_TEMP_2, 500
	goto_if_lt GameCorner_EndSlots
    setflag FLAG_WON_500_COINS
    call SyncProgressScript
    releaseall
    end

GameCorner_RiggedSlots:
    lock
    checkflag FLAG_GOT_COIN_CASE
    goto_if FALSE, GameCorner_DisabledSlots
    msgbox GameCorner_SlotMachine_Q, MSGBOX_YESNO
    compare_var_to_value VAR_RESULT, NO
    goto_if_eq GameCorner_EndSlots
    setvar VAR_RESULT, 222
    playslotmachine VAR_RESULT
    checkcoins VAR_TEMP_2
    compare_var_to_value VAR_TEMP_2, 500
	goto_if_lt GameCorner_EndSlots
    setflag FLAG_WON_500_COINS
    call SyncProgressScript
GameCorner_EndSlots:
    releaseall
    end

GameCorner_DisabledSlots:
    msgbox GameCorner_SlotMachine_NoCase
    release
    end

GameCorner_SlotMachine_Q:
    .string "It's a slot machine!\n"
    .string "Want to play?$"

GameCorner_SlotMachine_NoCase:
    .string "It's a slot machine.\n"
    .string "This requires a COIN CASE!$"