.align 4

Crossroads_MapInitCode:
    bx lr

Crossroads_MapInitScript:
    end

Crossroads_Script1:
    lock
    faceplayer
    msgbox Crossroads_Script1_Text
    release
    end

Crossroads_Script1_Text:
    .string "TO LET THE MONSTER BECOMES STRONGER,\n"
    .string "THE COACH MUST BE STRONGER. IF ONLY\l"
    .string "SO, THE MONSTER MUST BE STRONGER.$"

Crossroads_Script2:
    lock
    faceplayer
    msgbox Crossroads_Script2_Text
    release
    end

Crossroads_Script2_Text:
    .string "I'm so sorry for my boyfriend.\n"
    .string "He's from Vietnam.$"
