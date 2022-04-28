.align 4

EasternAvenue_MapInitCode:
    bx lr

EasternAvenue_MapInitScript:
    end

EasternAvenue_Script1:
    lock
    faceplayer
    msgbox EasternAvenue_Script1_Text
    release
    end

EasternAvenue_Script1_Text:
    .string "I'm an expert. I haven't lost a single\n"
    .string "a single battle in my entire career!\p"
    .string "I also haven't won any battles, but\n"
    .string "that's far less important!$"

EasternAvenue_Script2:
    lock
    faceplayer
    msgbox EasternAvenue_Script2_Text
    release
    end

EasternAvenue_Script2_Text:
    .string "An aspiring level designer lives just\n"
    .string "south from here.\p"
    .string "Recently, I saw him work on his\n"
    .string "newest creation.\p"
    .string "I wonder how he's doing?\n"
    .string "Did he finish his project?\p"
    .string "Last time I checked, the map he\n"
    .string "designed was of abysmal quality.$"
