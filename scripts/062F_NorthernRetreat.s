.align 4

NorthernRetreat_MapInitCode:
    ldr r0, =zLocationFlags
    ldr r1, =LocationFlags
    ldr r2, [r1]
    str r2, [r0]
    ldr r2, [r1, #0x04]
    str r2, [r0, #0x04]
    bx lr

.align 4
LocationFlags:
    .ascii "--FLYFLAGS--"

.align 4
.ltorg

NorthernRetreat_MapInitScript:
    end

NorthernRetreat_Hint:
    lock
    faceplayer
    msgbox NorthernRetreat_Hint_Text
    release
    end

NorthernRetreat_Hint_Text:
    .string "You found me? How did you find me?\n"
    .string "Please don't tell anyone I'm here!\p"
    .string "In exchange, here is a hint to help\n"
    .string "you on your adventures.\p"
    .string "Do you know about Lost Woods?\n"
    .string "I heard that a secret area can be\l"
    .string "accessed by going north, south, then\l"
    .string "east twice.$"

NorthernRetreat_Script1:
    lock
    faceplayer
    msgbox NorthernRetreat_Script1_Text
    release
    end

NorthernRetreat_Script1_Text:
    .string "I heard rumors of a wise old man,\n"
    .string "living deep in Northern Glitchland.\p"
    .string "If I ever found him, I would certainly\n"
    .string "ask him a lot of questions!$"

NorthernRetreat_Script2:
    lock
    faceplayer
    msgbox NorthernRetreat_Script2_Text
    release
    end

NorthernRetreat_Script2_Text:
    .string "Glitches can be beneficial to us,\n"
    .string "yet they are very dangerous.\p"
    .string "Without proper precautions, it's easy\n"
    .string "for things to get out of control.\p"
    .string "And once things get out of control,\n"
    .string "the consequences can be disas{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}{QAF}$"

NorthernRetreat_TP:
    lock
    call GenericTPScript
    release
    end
