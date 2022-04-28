.align 4

TheWiseMan_MapInitCode:
    bx lr

TheWiseMan_MapInitScript:
    end

TheWiseMan_Script1:
    lock
    faceplayer
    msgbox TheWiseMan_Script1_Text
    release
    end

TheWiseMan_Script1_Text:
    .string "Hello, young traveler.\n"
    .string "Back in the day, I used to be an\l"
    .string "adventurer, just like you.\p"
    .string "But after all these years, my\n"
    .string "enthusiasm is long gone.\p"
    .string "All that remains is my knowledge, which\n"
    .string "I distilled into my Adventure Log.\p"
    .string "Come to my house and read it. You\n"
    .string "might find some useful tips if you do.$"

TheWiseMan_Door:
    lock
    faceplayer
    msgbox TheWiseMan_Door_Text
    release
    end

TheWiseMan_Door_Text:
    .string "The door is closed.$"