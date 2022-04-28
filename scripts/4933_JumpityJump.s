.align 4

JumpityJump_MapInitCode:
    bx lr

JumpityJump_MapInitScript:
    end

JumpityJump_Script1:
    lock
    faceplayer
    msgbox JumpityJump_Script1_Text
    release
    end

JumpityJump_Script1_Text:
    .string "One needs to be very careful about\n"
    .string "their decisions here.\l"
    .string "Once you jump, there is no return!$"

JumpityJump_Script2:
    lock
    faceplayer
    checkflag FLAG_RECEIVED_BALL8
    goto_if TRUE, JumpityJump_Script2_GotBall
    setflag FLAG_RECEIVED_BALL8
    msgbox JumpityJump_Script2_Text
    giveitem 4
    call SyncProgressScript
    release
    end
JumpityJump_Script2_GotBall:
    msgbox JumpityJump_Script2_Text2
    release
    end

JumpityJump_Script2_Text:
    .string "Hi!\n"
    .string "I work at a POK{EACUTE}MON MART.\p"
    .string "It's part of a convenient chain\n"
    .string "selling all sorts of items.\p"
    .string "I know, I'll give you a sample.\n"
    .string "Here you go!$"

JumpityJump_Script2_Text2:
    .string "Please come see us if you need\n"
    .string "POK{EACUTE} BALLS for catching POK{EACUTE}MON.$"

JumpityJump_Sign:
    lock
    msgbox JumpityJump_Sign_Text
    release
    end

JumpityJump_Sign_Text:
    .string "This sign just has a poorly drawn\n"
    .string "trollface on it.\p"
    .string "They probably hoped you would miss\n"
    .string "this sign and come all the way back\l"
    .string "through the Dark Cave to read it.$"
