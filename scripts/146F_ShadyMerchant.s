.align 4

ShadyMerchant_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

ShadyMerchant_MapInitScript:
    end

ShadyMerchant_Script:
    lock
    faceplayer
    checkflag FLAG_FLUTE_RECEIVED
    goto_if TRUE, ShadyMerchant_Script_Done
    msgbox ShadyMerchant_Script_Text, MSGBOX_YESNO
    compare VAR_RESULT, YES
    goto_if_eq ShadyMerchant_Script_GiveNugget
    msgbox ShadyMerchant_Script_Text4
    release
    end
ShadyMerchant_Script_GiveNugget:
    checkflag FLAG_DUNSPARCE_SURVEY
    goto_if FALSE, ShadyMerchant_Script_NoNugget
    msgbox ShadyMerchant_Script_Text3
    giveitem 350
    setflag FLAG_FLUTE_RECEIVED
    call SyncProgressScript
    release
    end
ShadyMerchant_Script_NoNugget:
    msgbox ShadyMerchant_Script_Text2
    release
    end
ShadyMerchant_Script_Done:
    msgbox ShadyMerchant_Script_Text5
    release
    end

ShadyMerchant_Script_Text:
    .string "Hello, hello!\n"
    .string "Do I have a customer?\l"
    .string "Have I got the offer just for you!\p"
    .string "Bring me a NUGGET, and I'll trade\n"
    .string "it for this awesome POK{EACUTE} FLUTE!\p"
    .string "Near mint condition, only used once\n"
    .string "or twice! Do we have a deal?$"

ShadyMerchant_Script_Text2:
    .string "Oh, I'm sorry, I'm afraid you don't\n"
    .string "have a NUGGET...$"

ShadyMerchant_Script_Text3:
    .string "Great! We have a deal!\n"
    .string "Here, have this POK{EACUTE} FLUTE!$"

ShadyMerchant_Script_Text4:
    .string "Do as you want. Just remember, you won't\n"
    .string "find such a great deal anywhere else!$"

ShadyMerchant_Script_Text5:
    .string "What?\n"
    .string "I don't give any refunds.$"
