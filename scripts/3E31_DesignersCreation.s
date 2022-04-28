.align 4

DesignersCreation_MapInitCode:
    bx lr

DesignersCreation_MapInitScript:
    end

DesignersCreation_Script1:
    lock
    faceplayer
    msgbox DesignersCreation_Script1_Text
    checkflag FLAG_DESIGNER_CREATION
    goto_if TRUE, DesignersCreation_Script1_Fin
    setflag FLAG_DESIGNER_CREATION
    call SyncProgressScript
DesignersCreation_Script1_Fin:
    release
    end

DesignersCreation_Script1_Text:
    .string "You like my map?\n"
    .string "I put a lot of thought into it.\p"
    .string "Thank you for being a beta-tester!$"

DesignersCreation_Script2:
    lock
    msgbox DesignersCreation_Script2_Text
    release
    end

DesignersCreation_Script2_Text:
    .string "Welcome to this great map.\n"
    .string "It's the best map you evar played.\p"
    .string "You will see it, play!\n"
    .string " - Matthew$"

DesignersCreation_Script3:
    lock
    msgbox DesignersCreation_Script3_Text
    release
    end

DesignersCreation_Script3_Text:
    .string "Turn around.\n"
    .string "This is the wrong way!\p"
    .string "You should go left instead.\n"
    .string " - Matthew$"

DesignersCreation_Script4:
    lock
    msgbox DesignersCreation_Script4_Text
    release
    end

DesignersCreation_Script4_Text:
    .string "I am sorry.\n"
    .string "The cave is out of order.\p"
    .string "I don't know how warps work yet.\n"
    .string " - Matthew$"

DesignersCreation_Script5:
    lock
    faceplayer
    msgbox DesignersCreation_Script5_Text
    release
    end

DesignersCreation_Script5_Text:
    .string "Oh no!\n"
    .string "The road is blocked off.\p"
    .string "Maybe there's a different path.\n"
    .string " - Matthew$"

DesignersCreation_Script6:
    lock
    msgbox DesignersCreation_Script6_Text
    release
    end

DesignersCreation_Script6_Text:
    .string "Congraturation!\n"
    .string "This story is happy end.\p"
    .string "Did you like the map I made?\n"
    .string " - Matthew$"
