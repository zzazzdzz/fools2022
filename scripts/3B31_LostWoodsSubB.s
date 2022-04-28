.align 4

LostWoodsSubB_MapInitCode:
    bx lr

LostWoodsSubB_MapInitScript:
    end

LostWoodsSubA_Script1:
    lock
    faceplayer
    msgbox LostWoodsSubA_Script1_Text
    release
    end

LostWoodsSubA_Script1_Text:
    .string "I once heard that this place was\n"
    .string "supposed to be filled with treasure.\p"
    .string "Unfortunately, when I arrived, there\n"
    .string "was nothing here...\p"
    .string "I guess someone must have found this\n"
    .string "place before me.$"
