.align 4

Route13.5_MapInitCode:
    bx lr

Route13.5_MapInitScript:
    end

Route13.5_Script1:
    lock
    faceplayer
    msgbox Route13.5_Script1_Text
    release
    end

Route13.5_Script1_Text:
    .string "Hello! Here's a small hint if you\n"
    .string "happen to have the ability to SURF.\p"
    .string "Just surf through the pond and you\n"
    .string "won't have to deal with this maze!$"

Route13.5_Script2:
    lock
    faceplayer
    msgbox Route13.5_Script2_Text
    release
    end

Route13.5_Script2_Text:
    .string "Who builds fences like this and why?\n"
    .string "Not the first time I've seen this.\p"
    .string "It's like I need to whip out the A-star\n"
    .string "algorithm to get through this maze!$"
