.align 4

DesolatedCabin_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

DesolatedCabin_MapInitScript:
    end

DesolatedCabin_Script1:
    lock
    msgbox DesolatedCabin_Script1_Text
    release
    end

DesolatedCabin_Script1_Text:
    .string "It's a PC.\n"
    .string "Someone left it turned on.\p"
    .string "The mGBA emulator is running with GDB\n"
    .string "debugging server active.$"

DesolatedCabin_Script2:
    lock
    msgbox DesolatedCabin_Script2_Text
    release
    end

DesolatedCabin_Script2_Text:
    .string "A diary.\n"
    .string "It's tempting to look inside.\p"
    .string "But once you do, you realize that all\n"
    .string "most the pages are blank.\p"
    .string "Sometimes it's just better to leave the\n"
    .string "past behind and move forward.$"

DesolatedCabin_Script3:
    lock
    msgbox DesolatedCabin_Script3_Text
    release
    end

DesolatedCabin_Script3_Text:
    .string "A box, aptly labeled\n"
    .string "{LQUOT}MISCELLANEOUS STUFF{RQUOT}.\p"
    .string "Oh boy. That does not sound like\n"
    .string "good practice for organizing things.$"

DesolatedCabin_Script4:
    lock
    msgbox DesolatedCabin_Script4_Text
    release
    end

DesolatedCabin_Script4_Text:
    .string "A sketch is hanging on the wall.\p"
    .string "Two astral creatures are fighting.\n"
    .string "Embodiments of light and shadow.\p"
    .string "Which one will win? No one.\n"
    .string "They will fight for all eternity.$"

DesolatedCabin_Script5:
    lock
    msgbox DesolatedCabin_Script5_Text
    release
    end

DesolatedCabin_Script5_Text:
    .string "You look through the window, hoping to\n"
    .string "see a breathtaking view.\p"
    .string "Unfortunately, you see just your own,\n"
    .string "miserable, reflected self.$"

DesolatedCabin_Script6:
    lock
    msgbox DesolatedCabin_Script6_Text
    release
    end

DesolatedCabin_Script6_Text:
    .string "A game console. Looks like it got\n"
    .string "quite a bit of use.\p"
    .string "Ah, video games. Useful to distract\n"
    .string "yourself from the fact that you exist.$"

DesolatedCabin_Script7:
    lock
    msgbox DesolatedCabin_Script7_Text
    release
    end

DesolatedCabin_Script7_Text:
    .string "A shelf full of self-help books.\n"
    .string "There are some titles you recognize.\p"
    .string "{LQUOT}Coping skills for depression{RQUOT}!\n"
    .string "{LQUOT}Overcoming anxiety{RQUOT}!\p"
    .string "{LQUOT}How to tell a borderline loved one to\n"
    .string "fuck off... gently{RQUOT}!$"

DesolatedCabin_Script8:
    lock
    msgbox DesolatedCabin_Script8_Text
    release
    end

DesolatedCabin_Script8_Text:
    .string "A soft, comfy bed.\p"
    .string "Bed is soft. Bed is nice.\n"
    .string "Bed is always there for you.\l"
    .string "Everyone should be like bed.$"
