.align 4

WorriedExplorer_MapInitCode:
    bx lr

WorriedExplorer_MapInitScript:
    end

WorriedExplorer_Script1:
    lock
    faceplayer
    msgbox WorriedExplorer_Script1_Text
    release
    end

WorriedExplorer_Script1_Text:
    .string "The Worried Explorer lives here.\p"
    .string "Why such a name? Because he's\n"
    .string "worried, and he's also an explorer!$"

WorriedExplorer_Script2:
    lock
    faceplayer
    msgbox WorriedExplorer_Script2_Text
    release
    end

WorriedExplorer_Script2_Text:
    .string "There are some rumors about an\n"
    .string "underground cave system somewhere\l"
    .string "in this area.\p"
    .string "The explorer here has been searching\n"
    .string "for it for quite some time, but never\l"
    .string "made a breakthrough.$"