.align 4

LostWoodsSubA_MapInitCode:
    bx lr

LostWoodsSubA_MapInitScript:
    end

LostWoodsSubA_Script1:
    lock
    faceplayer
    msgbox LostWoodsSubA_Script1_Text
    release
    end

LostWoodsSubA_Script1_Text:
    .string "This place was just filled with\n"
    .string "treasure, but I got here first.\l"
    .string "Haha. At least you tried!$"