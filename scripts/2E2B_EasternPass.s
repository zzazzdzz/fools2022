.align 4

EasternPass_MapInitCode:
    bx lr

EasternPass_MapInitScript:
    end

EasternPass_Script1:
    lock
    faceplayer
    msgbox EasternPass_Script1_Text
    release
    end

EasternPass_Script1_Text:
    .string "Glitchland is so big, it's very easy\n"
    .string "to get lost.\p"
    .string "But no worries! A quick reset of the\n"
    .string "game will bring you back to the start!$"

EasternPass_Script2:
    lock
    faceplayer
    msgbox EasternPass_Script2_Text
    release
    end

EasternPass_Script2_Text:
    .string "Be vewwy, vewwy quiet.\n"
    .string "I'm hunting Pok{EACUTE}mon.$"
