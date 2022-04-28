.align 4

GameCorner_MapInitCode:
    bx lr

GameCorner_MapInitScript:
    end

GameCorner_Script1:
    lock
    faceplayer
    msgbox GameCorner_Script1_Text
    release
    end

GameCorner_Script1_Text:
    .string "This guy's Glitchland Lottery\n"
    .string "results are crazy!\p"
    .string "My drawings can't win against drawings\n"
    .string "like that!\p"
    .string "He needed precisely these two letters\n"
    .string "to win.\p"
    .string "There was nothing I could do.\n"
    .string "I played that perfectly!$"

GameCorner_Script2:
    lock
    faceplayer
    msgbox GameCorner_Script2_Text
    release
    end

GameCorner_Script2_Text:
    .string "Heheh. This GAME CORNER is great.\n"
    .string "It's full of women!$"
