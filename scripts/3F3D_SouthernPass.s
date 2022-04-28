.align 4

SouthernPass_MapInitCode:
    bx lr

SouthernPass_MapInitScript:
    end

SouthernPass_Script1:
    lock
    faceplayer
    msgbox SouthernPass_Script1_Text
    release
    end

SouthernPass_Script1_Text:
    .string "The Glitchland Library should be\n"
    .string "not too far ahead from here.\p"
    .string "I'm quite a bookworm, so I visit it\n"
    .string "often.$"

SouthernPass_Script2:
    lock
    faceplayer
    checkflag FLAG_DUNSPARCE_SURVEY
    goto_if TRUE, SouthernPass_Script2_Done
    msgbox SouthernPass_Script2_Text, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq SouthernPass_Script2_Nope
    message SouthernPass_Script2_Text2
    waitmessage
    showmonpic 406, 10, 3
    msgbox SouthernPass_Script2_Text8, MSGBOX_YESNO
    copyvar 0x8001, VAR_RESULT
    hidemonpic
    message SouthernPass_Script2_Text3
    waitmessage
    showmonpic 409, 10, 3
    msgbox SouthernPass_Script2_Text8, MSGBOX_YESNO
    copyvar 0x8002, VAR_RESULT
    hidemonpic
    message SouthernPass_Script2_Text4
    waitmessage
    showmonpic 206, 10, 3
    msgbox SouthernPass_Script2_Text8, MSGBOX_YESNO
    copyvar 0x8003, VAR_RESULT
    hidemonpic
    compare_var_to_value 0x8001, YES
    goto_if_eq SouthernPass_Script2_Failed
    compare_var_to_value 0x8002, YES
    goto_if_eq SouthernPass_Script2_Failed
    compare_var_to_value 0x8003, NO
    goto_if_eq SouthernPass_Script2_Failed
    msgbox SouthernPass_Script2_Text6
    giveitem 110
    setflag FLAG_DUNSPARCE_SURVEY
    call SyncProgressScript
    release
    end
SouthernPass_Script2_Failed:
    msgbox SouthernPass_Script2_Text5
SouthernPass_Script2_Nope:
    release
    end
SouthernPass_Script2_Done:
    msgbox SouthernPass_Script2_Text7
    release
    end

SouthernPass_Script2_Text:
    .string "Hello. I'm doing a quick survey about\n"
    .string "most loved Pok{EACUTE}mon species in\l"
    .string "Glitchland. Want to participate?$"

SouthernPass_Script2_Text2:
    .string "Great!\n"
    .string "First question!\p$"

SouthernPass_Script2_Text3:
    .string "Great!\n"
    .string "Second question!\p$"

SouthernPass_Script2_Text4:
    .string "Great!\n"
    .string "Third question!\p$"

SouthernPass_Script2_Text5:
    .string "I'm sorry, but I don't agree with\n"
    .string "your opinion. Maybe you should answer\l"
    .string "differently next time.$"

SouthernPass_Script2_Text6:
    .string "Wow, you answered perfectly!\n"
    .string "Thank you for participating.\p"
    .string "Please accept this NUGGET as a token\n"
    .string "of my appreciation.$"

SouthernPass_Script2_Text7:
    .string "DUNSPARCE is the best.\n"
    .string "Even you said so!$"

SouthernPass_Script2_Text8:
    .string "Is this Pok{EACUTE}mon the best?$"

SouthernPass_Script3:
    lock
    faceplayer
    msgbox SouthernPass_Script3_Text
    release
    end

SouthernPass_Script3_Text:
    .string "Every time you successfully complete\n"
    .string "a quest, your progress is saved\l"
    .string "on the server.\p"
    .string "You can also get achievements for\n"
    .string "finishing certain quest lines.\p"
    .string "This makes me wonder whether someone\n"
    .string "will get them all one day...$"
