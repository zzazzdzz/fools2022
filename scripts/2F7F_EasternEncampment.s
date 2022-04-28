.align 4

EasternEncampment_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

EasternEncampment_MapInitScript:
    end

EasternCamp_Script1:
    lock
    faceplayer
    checkplayergender
    compare VAR_RESULT, MALE
    goto_if_eq EasternCamp_Script1_NotCute
EasternCamp_Script1_Cute:
    checkflag FLAG_RECEIVED_BALL7
    goto_if TRUE, EasternCamp_Script1_Done
    setflag FLAG_RECEIVED_BALL7
    msgbox EasternCamp_Script1_Text3
    giveitem 4
    call SyncProgressScript
    release
    end
EasternCamp_Script1_NotCute:
    msgbox EasternCamp_Script1_Text
    release
    end
EasternCamp_Script1_Done:
    msgbox EasternCamp_Script1_Text2
    release
    end

EasternCamp_Script1_Text:
    .string "Yes, finally I was able to pay my\n"
    .string "electricity bills...\p"
    .string "Wait, how did you get here?\n"
    .string "Why did you just barge into my house?\p"
    .string "Please leave me alone.\n"
    .string "I only speak with cuties.$"

EasternCamp_Script1_Text2:
    .string "Wait... you say you're a boy?\n"
    .string "Jokes on you, I'm into that...\p"
    .string "But... It's not that I like you or\n"
    .string "anything!\p"
    .string "Was just speaking... hypothetically.\n"
    .string "You know... just a theory.$"

EasternCamp_Script1_Text3:
    .string "Hey...\n"
    .string "You do be looking kinda cute...\p"
    .string "I feel kinda nervous...\n"
    .string "Say, do you like balls?\p"
    .string "I... I mean Pok{EACUTE} Balls!\n"
    .string "I just found one...\p"
    .string "They're pretty rare here...\n"
    .string "So... I can give you one... as a gift.$"