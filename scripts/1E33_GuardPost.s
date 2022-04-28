.align 4

GuardPost_MapInitCode:
    # fix the Deliria music hook
    ldr r0, =0xe3a03301
    ldr r1, =IntrMain_Buffer
    str r0, [r1]
    bx lr

GuardPost_MapInitScript:
    end

GuardPost_Script1:
    lock
    faceplayer
    msgbox GuardPost_Script1_Text
    release
    end

GuardPost_Script1_Text:
    .string "I'm sorry, Deliria is only accessible\n"
    .string "with a special permit.$"

GuardPost_Script2:
    lock
    faceplayer
    msgbox GuardPost_Script2_Text
    release
    end

GuardPost_Script2_Text:
    .string "I wanted to visit my friends in Deliria,\n"
    .string "but I don't have a permit.\p"
    .string "I heard some shady guy in Northern\n"
    .string "Glitchland gives out forged permits.\p"
    .string "This might be the only chance to see\n"
    .string "my friends again...$"

GuardPost_CheckPermit:
    checkflag FLAG_PERMIT_CHECKED
    goto_if TRUE, GuardPost_CheckPermit_End
    lock
    checkflag FLAG_DELIRIA_PERMIT
    goto_if FALSE, GuardPost_CheckPermit_NoPermit
    message GuardPost_CheckPermit_Text1
    waitmessage
    playfanfare MUS_RG_OBTAIN_KEY_ITEM
    waitfanfare
    setflag FLAG_PERMIT_CHECKED
GuardPost_CheckPermit_End:
    release
    end
GuardPost_CheckPermit_NoPermit:
    msgbox GuardPost_CheckPermit_Text2
    closemessage
    delay 16
    applymovement 0xff, GuardPost_CheckPermit_Back
    waitmovement 0xff
    release
    end
GuardPost_CheckPermit_Back:
    walk_left
    step_end

GuardPost_CheckPermit_Text1:
    .string "Excuse me - Deliria is only\n"
    .string "available with a special permit.\p"
    .string "Oh, you have a permit?\n"
    .string "Let me see...\p"
    .string "Alright, everything's good.\n"
    .string "You can enter. Glory to Arstotzka!$"

GuardPost_CheckPermit_Text2:
    .string "Excuse me - Deliria is only\n"
    .string "available with a special permit.$"
