.align 4

NorthernPassage_MapInitCode:
    bx lr

NorthernPassage_MapInitScript:
    end

NorthernPassage2_Script1:
    lock
    faceplayer
    msgbox NorthernPassage2_Script1_Text
    release
    end

NorthernPassage2_Script1_Text:
    .string "redacted$"

NorthernPassage2_Script2:
    lock
    faceplayer
    msgbox NorthernPassage2_Script2_Text
    release
    end

NorthernPassage2_Script2_Text:
    .string "The Glitch Research Lab in Northern\n"
    .string "Glitchland is well known for its\l"
    .string "groundbreaking discoveries in the\l"
    .string "field of glitchology.$"

NorthernPassage2_Script3:
    lock
    faceplayer
    msgbox NorthernPassage2_Script3_Text
    release
    end

NorthernPassage2_Script3_Text:
    .string "Living near the Glitch Research Lab\n"
    .string "is a real struggle.\p"
    .string "They keep playing the GSC Lucky Channel\n"
    .string "theme every single night.\p"
    .string "And on the weekends, they're blasting\n"
    .string "the SM64 File Select theme.\p"
    .string "It's seriously driving me crazy.\n"
    .string "I'm moving away!$"

NorthernPassage2_LabSign:
    lock
    msgbox NorthernPassage2_LabSign_Text
    release
    end

NorthernPassage2_LabSign_Text:
    .string "GLITCHLAND GLITCH RESEARCH LAB$"