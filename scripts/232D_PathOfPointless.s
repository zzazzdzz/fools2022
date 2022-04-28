.align 4

PathOfPointless_MapInitCode:
    bx lr

PathOfPointless_MapInitScript:
    end

PathOfPointless_Script1:
    lock
    faceplayer
    msgbox PathOfPointless_Script1_Text
    release
    end

PathOfPointless_Script1_Text:
    .string "It's been four years, and they still\n"
    .string "haven't made any progress towards\l"
    .string "building that path.\p"
    .string "They ran into a mysterious cave while\n"
    .string "plotting the land, and construction\l"
    .string "plans had to be suspended.\p"
    .string "I don't think this passage is ever going\n"
    .string "to be completed.$"

PathOfPointless_Script2:
    lock
    msgbox PathOfPointless_Script2_Text
    release
    end

PathOfPointless_Script2_Text:
    .string "WESTERN - EASTERN GLITCHLAND PASS\n"
    .string "In constuction!$"


EventScript_CutTree:
    lock
    faceplayer
    msgbox EventScript_CutTree_Text
    release
    end

EventScript_CutTree_Text:
    .string "redacted$"

EventScript_StrengthBoulder:
    lock
    faceplayer
    msgbox EventScript_StrengthBoulder_Text
    release
    end

EventScript_StrengthBoulder_Text:
    .string "redacted$"