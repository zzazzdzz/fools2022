.align 4

WesternPass_MapInitCode:
    bx lr

WesternPass_MapInitScript:
    end

WesternPass_Script1:
    lock
    faceplayer
    msgbox WesternPass_Script1_Text
    release
    end

WesternPass_Script1_Text:
    .string "You wouldn't believe this!\n"
    .string "Some time ago, I saw a suspicious guy\l"
    .string "walking down this road.\p"
    .string "He kept walking around confusingly,\n"
    .string "rearranging his items for hours.\p"
    .string "Then, he stood right where I am, and\n"
    .string "peeked at his Pok{EACUTE}dex.\p"
    .string "Right afterwards, he started flying\n"
    .string "through walls. Then, his BAG started\l"
    .string "overflowing with candy, and smooth\l"
    .string "jazz played from the clouds!\p"
    .string "To this day, I have no idea what\n"
    .string "happened. Was it just a dream?$"

WesternPass_Script2:
    lock
    faceplayer
    msgbox WesternPass_Script2_Text
    release
    end

WesternPass_Script2_Text:
    .string "I'm sure there is some way to light up\n"
    .string "the Dark Cave.\p"
    .string "But if you're determined, maybe you can\n"
    .string "make your way through completely blind?$"