.align 4

MansionEntrance_MapInitCode:
    bx lr

MansionEntrance_MapInitScript:
    end

MansionEntrance_Script1:
    lock
    faceplayer
    msgbox MansionEntrance_Script1_Text
    release
    end

MansionEntrance_Script1_Text:
    .string "I've always wanted to explore this\n"
    .string "abandoned mansion, but it's way too\l"
    .string "spooky in there.\p"
    .string "Also, the doors are all closed.\n"
    .string "If only I had some lockpicking skills...$"
