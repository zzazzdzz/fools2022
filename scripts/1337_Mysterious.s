.align 4

Mysterious_MapInitCode:
    bx lr

Mysterious_MapInitScript:
    end

Mysterious_Warp:
    lock
    faceplayer
    msgbox Mysterious_Warp_Text
    release
    end

Mysterious_Warp_Text:
    .string "You did very well.\n"
    .string "Please reset your game.$"