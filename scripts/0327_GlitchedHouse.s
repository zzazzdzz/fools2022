.align 4

GlitchedHouse_MapInitCode:
    bx lr

GlitchedHouse_MapInitScript:
    end

GlitchedHouse_Script1:
    lock
    faceplayer
    msgbox GlitchedHouse_Script1_Text
    release
    end

GlitchedHouse_Script1_Text:
    .string "Eh, some whippersnappers keep planting\n"
    .string "trees in key map locations.\p"
    .string "I heard there's a special field move\n"
    .string "that could help clean this mess up...$"

GlitchedHouse_Script2:
    lock
    faceplayer
    msgbox GlitchedHouse_Script2_Text
    release
    end

GlitchedHouse_Script2_Text:
    .string "Oh no, some idiot literally planted\n"
    .string "trees right in front of my house!\p"
    .string "My wife is locked inside. Could you\n"
    .string "help save my beloved wife?\l"
    .string "I bet she feels pretty lonely...$"
