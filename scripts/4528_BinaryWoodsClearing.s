.align 4

BinaryWoodsClearing_MapInitCode:
    bx lr

BinaryWoodsClearing_MapInitScript:
    end

BinaryWoodsClearing_Script1:
    lock
    faceplayer
    msgbox BinaryWoodsClearing_Script1_Text
    setflag FLAG_BINARY_WOODS_CLEARING
    call SyncProgressScript
    delay 16
    closemessage
    delay 16
    fadescreen 1
    removeobject 1
    fadescreen 0
    release
    end

BinaryWoodsClearing_Script1_Text:
    .string "Hello. You must have had very strong\n"
    .string "will to come all the way up here.\p"
    .string "I come here to meditate and unify with\n"
    .string "our mother nature.\p"
    .string "People are scared of nature.\n"
    .string "Natural disasters. Dangerous animals.\l"
    .string "Harsh weather. The list goes on...\p"
    .string "People distance themselves from nature\n"
    .string "out of fear. I do things differently.\p"
    .string "I want to become one with nature and\n"
    .string "to better understand it.\p"
    .string "Thank you for coming here.\n"
    .string "You're a great conversation partner.$"

