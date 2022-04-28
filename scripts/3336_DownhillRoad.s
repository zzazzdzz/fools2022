.align 4

DownhillRoad_MapInitCode:
    bx lr

DownhillRoad_MapInitScript:
    end

DownhillRoad_Script1:
    lock
    faceplayer
    msgbox DownhillRoad_Script1_Text
    release
    end

DownhillRoad_Script1_Text:
    .string "I really wish Pok{EACUTE}mon games had\n"
    .string "three save files.\p"
    .string "One for my Charmander, one for my\n"
    .string "Squirtle...\l"
    .string "...and one for my second Charmander!$"

DownhillRoad_Script2:
    lock
    faceplayer
    msgbox DownhillRoad_Script2_Text
    release
    end

DownhillRoad_Script2_Text:
    .string "Today, I'm dancing for no reason.\n"
    .string "Someday, I'll disappear for no reason.$"
