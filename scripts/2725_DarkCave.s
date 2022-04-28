.align 4

DarkCave_MapInitCode:
    bx lr

DarkCave_MapInitScript:
    end

DarkCave_Script1:
    lock
    faceplayer
    msgbox DarkCave_Script1_Text
    release
    end

DarkCave_Script1_Text:
    .string "If you ever get lost inside the cave,\n"
    .string "do not worry!\p"
    .string "One quick reset of the game will bring\n"
    .string "you back to Central Square.$"

