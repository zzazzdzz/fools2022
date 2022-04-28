.align 4

BinaryWoodsEntrance_MapInitCode:
    bx lr

BinaryWoodsEntrance_MapInitScript:
    end

BinaryWoodsEntrance_Script1:
    lock
    faceplayer
    msgbox BinaryWoodsEntrance_Script1_Text
    release
    end

BinaryWoodsEntrance_Script1_Text:
    .string "I think I've seen some trees in the\n"
    .string "Binary Woods that were colored red\l"
    .string "and black.\p"
    .string "Interesting, huh? Exploring this world\n"
    .string "is a heap of fun!$"

BinaryWoodsEntrance_Script2:
    lock
    faceplayer
    msgbox BinaryWoodsEntrance_Script2_Text
    release
    end

BinaryWoodsEntrance_Script2_Text:
    .string "Volume of this world is estimated\n"
    .string "to be around 200 kilobytes in total.\p"
    .string "That doesn't help me much. Are these\n"
    .string "metric kilobytes or imperial kilobytes?$"
