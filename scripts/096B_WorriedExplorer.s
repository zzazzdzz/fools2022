.align 4

WorriedExplorer_MapInitCode:
    bx lr

WorriedExplorer_MapInitScript:
    end

WorriedExplorer_Interior_Script1:
    lock
    faceplayer
    msgbox WorriedExplorer_Interior_Script1_Text
    release
    end

WorriedExplorer_Interior_Script1_Text:
    .string "Hello! I'm Matt, but everyone\n"
    .string "just calls me the {LQUOT}Worried Explorer{RQUOT}.\p"
    .string "I thought this place looked very\n"
    .string "suspicious, so I made the decision to\l"
    .string "live here and dedicate my life to\l"
    .string "solving the mysteries of this place.\p"
    .string "I think there's a underground cave\n"
    .string "system around here, but I have no idea\l"
    .string "how to reach it.\p"
    .string "Maybe you can solve the mystery of\n"
    .string "this place?$"
