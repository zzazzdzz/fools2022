.align 4

TheTrendsetters_MapInitCode:
    bx lr

TheTrendsetters_SendPhrase_CopyData:
    ldrb r0, [r1]
    strb r0, [r2]
    add r1, #1
    add r2, #1
    sub r3, #1
    bne TheTrendsetters_SendPhrase_CopyData
    bx lr

TheTrendsetters_SendPhrase:
    push {lr}
    # copy new phrase to local buffer
    ldr r1, =gStringVar2
    ldr r2, =TrendyPhraseString    
    mov r3, #26
    bl TheTrendsetters_SendPhrase_CopyData
    # copy new username to local buffer
    ldr r1, =PlayerNameString
    ldr r2, =TrendyPhraseAuthorString
    mov r3, #16
    bl TheTrendsetters_SendPhrase_CopyData
    # set packet length
    ldr r1, =zLinkPacketTxLen
    mov r0, #9
    str r0, [r1]
    # set packet struct address
    ldr r1, =zLinkPacketTx
    ldr r0, =zPacketStruct
    str r0, [r1]
    # prepare packet type
    mov r1, #COMMAND_ID_SAVEPHRASE
    str r1, [r0]
    # copy phrase to packet
    ldr r1, =TrendyPhraseString
    add r2, r0, #4
    mov r3, #26
    bl TheTrendsetters_SendPhrase_CopyData
    pop {r0}
TheTrendsetters_SendPhrase_BXR3:
    bx r0

.ltorg
.align 4

TheTrendsetters_MapInitScript:
    end

TheTrendsetters_Script:
    lock
    bufferstring STR_VAR_1, TrendyPhraseAuthorString
    bufferstring STR_VAR_2, TrendyPhraseString
    faceplayer
    msgbox TheTrendsetters_Script_Begin_Text, MSGBOX_YESNO
    compare VAR_RESULT, YES
    goto_if_eq TheTrendsetters_Script_GiveUp
    msgbox TheTrendsetters_Script_No_Text
	setvar 0x8004, 9
	call Common_ShowEasyChatScreen
    lock
    faceplayer
    bufferstring STR_VAR_1, SpookyTrendString
    callnative CompareStrings
    compare VAR_RESULT, 0
    goto_if TRUE, TheTrendsetters_Script_SpookyPhrase
    msgbox TheTrendsetters_Script_Changed_Text
    callnative TheTrendsetters_SendPhrase
    call GenericRequestScript
    release
    end
TheTrendsetters_Script_GiveUp:
    msgbox TheTrendsetters_Script_Yes_Text
    release
    end
TheTrendsetters_Script_SpookyPhrase:
    msgbox TheTrendsetters_Script_Spooky_Text
    closemessage
    delay 20
    checkflag FLAG_WESTERN_RELIC_ITEM
    goto_if FALSE, TheTrendsetters_Script_JustEnd
    checkflag FLAG_RECEIVED_BALL9
    goto_if TRUE, TheTrendsetters_Script_JustEnd
TheTrendsetters_Script_TriggerRelic:
    clearflag FLAG_WESTERN_RELIC_ITEM
	fadeoutbgm 0
    playse SE_TRUCK_MOVE
	callnative DoSealedChamberShakingEffect1
	waitstate
	delay 40
	playse SE_M_EXPLOSION
    waitse
    delay 16
    playbgm MUS_RG_ROUTE24, FALSE
TheTrendsetters_Script_JustEnd:
    release
    end

TheTrendsetters_Script_Begin_Text:
    .string "Our family adores everything that\n"
    .string "is hip and trendy these days.\p"
    .string "Right now, we live by the words\n"
    .string "spoken by a traveller I met some\l"
    .string "time ago, named {STR_VAR_1}.\p"
    .string "This person told me:\n"
    .string "{LQUOT}{STR_VAR_2}{RQUOT}.\p"
    .string "Since then, my life has completely\n"
    .string "changed! Wherever you're from,\l"
    .string "{STR_VAR_2} should\l"
    .string "be the best thing ever, am I right?$"

TheTrendsetters_Script_Yes_Text:
    .string "I knew it! {STR_VAR_2}\n"
    .string "is really a big deal right now.$"

TheTrendsetters_Script_No_Text:
    .string "What? You're saying that there\n"
    .string "is a new trend emerging?\p"
    .string "Please tell me more!\n"
    .string "What's {LQUOT}in{RQUOT} right now?$"

TheTrendsetters_Script_Changed_Text:
    .string "Hmm...\n"
    .string "{STR_VAR_2}...\p"
    .string "Oh my, that sounds awesome!\n"
    .string "Thanks for sharing this with me!$"

TheTrendsetters_Script_Spooky_Text:
    .string "{STR_VAR_2}...?\n"
    .string "Oh my, that sounds a bit too edgy.\p"
    .string "I'm sorry, I'm afraid I can't let\n"
    .string "you set such an ominous phrase...$"

TheTrendsetters_Script_Success_Text:
    .string "The phrase was updated!$"

SpookyTrendString:
    .string "HOPELESS DISASTER$"

TrendyPhraseString:
    .ascii "--TRENDYPHRASEPLACEHOLDER--"
	.byte 0xff

TrendyPhraseAuthorString:
    .ascii "--PLAYERPHRASE--"
	.byte 0xff

PlayerNameString:
    .ascii "--PLAYERNICKNA--"
	.byte 0xff
