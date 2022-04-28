.align 4

YetAnotherPathway_MapInitCode:
    bx lr

YetAnotherPathway_MapInitScript:
    end

YetAnotherPathway_Script1:
    lock
    faceplayer
    msgbox YetAnotherPathway_Script1_Text
    release
    end

YetAnotherPathway_Script1_Text:
    .string "Yes! Finally, I was successfully able\n"
    .string "to visit all of the four edges and\l"
    .string "acquire all of the special abilities!\p"
    .string "With my newfound powers, this world\n"
    .string "should no longer have any secrets!$"

YetAnotherPathway_Sign:
    lock
    msgbox YetAnotherPathway_Sign_Text
    release
    end

YetAnotherPathway_Sign_Text:
    .string "Welcome to Yet Another Pathway!\n"
    .string "Southern Edge ahead.\p"
    .string "We hope you enjoyed this series of\n"
    .string "useless, uninspired routes!$"