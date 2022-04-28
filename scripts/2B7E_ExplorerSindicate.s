.align 4

ExplorerSindicate_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

ExplorerSindicate_MapInitScript:
    end

ExplorerSindicate_Script1:
    lock
    faceplayer
    msgbox ExplorerSindicate_Script1_Text
    release
    end

ExplorerSindicate_Script1_Text:
    .string "Welcome to the Glitchland Explorer\n"
    .string "Sindicate.\p"
    .string "Yes, we know.\n"
    .string "Our name is misspelled.$"

ExplorerSindicate_Script2:
    lock
    faceplayer
    msgbox ExplorerSindicate_Script2_Text
    release
    end

ExplorerSindicate_Script2_Text:
    .string "Reading books is a surefire way to\n"
    .string "boost your knowledge!\p"
    .string "Did you know that Lost Woods has four\n"
    .string "distinct secret areas, accessible\l"
    .string "by walking in different patterns?\p"
    .string "I read that going east, north, then\n"
    .string "south twice reveals one of them.$$"

ExplorerSindicate_Script3:
    lock
    faceplayer
    checkflag FLAG_TOOK_FOSSILS
    goto_if TRUE, ExplorerSindicate_Script3_Done
    checkflag FLAG_UNDERGROUND_CAVE_HELIX
    goto_if FALSE, ExplorerSindicate_Script3_NoFossils
    checkflag FLAG_ALTERING_CAVE_DOME
    goto_if FALSE, ExplorerSindicate_Script3_NoFossils
    checkflag FLAG_TINY_CAVERN_AMBER
    goto_if FALSE, ExplorerSindicate_Script3_NoFossils
    msgbox ExplorerSindicate_Script3_Text2
    setflag FLAG_TOOK_FOSSILS
    call SyncProgressScript
    release
    end
ExplorerSindicate_Script3_NoFossils:
    msgbox ExplorerSindicate_Script3_Text
    release
    end
ExplorerSindicate_Script3_Done:
    msgbox ExplorerSindicate_Script3_Text2
    release
    end

ExplorerSindicate_Script3_Text:
    .string "Hiya! I'm an important doctor!\n"
    .string "My specialty is fossil research.\p"
    .string "I'm looking for all of them - our\n"
    .string "Lord Helix, the Dome Fossil, and the\l"
    .string "less popular Old Amber.\p"
    .string "If you happen to collect them all,\n"
    .string "please give them to me for analysis.$"

ExplorerSindicate_Script3_Text2:
    .string "Hiya! I'm an important doctor!\n"
    .string "My specialty is fossil research.\p"
    .string "Wow, you got all the fossils?\n"
    .string "Fantastic! My research can proceed!\l"
    .string "Thank you for all of your hard work.$"

ExplorerSindicate_Script4:
    lock
    faceplayer
    msgbox ExplorerSindicate_Script4_Text
    release
    end

ExplorerSindicate_Script4_Text:
    .string "You know about Altering Cave?\n"
    .string "Just like the name suggests, it cycles\l"
    .string "between many different appearances\l"
    .string "every hour or so.$"

ExplorerSindicate_PC1:
    lock
    msgbox ExplorerSindicate_PC1_Text
    release
    end

ExplorerSindicate_PC1_Text:
    .string "It's an science PC. It doesn't\n"
    .string "use WINDOWS because of VIRUS.$"

ExplorerSindicate_PC2:
    lock
    msgbox ExplorerSindicate_PC2_Text
    release
    end

ExplorerSindicate_PC2_Text:
    .string "Wow, you can click here for a free\n"
    .string "iPad? What a great deal!$"

ExplorerSindicate_PC3:
    lock
    msgbox ExplorerSindicate_PC3_Text
    release
    end

ExplorerSindicate_PC3_Text:
    .string "Oops, this system crashed!\p"
    .string "The scientists here lost their data,\n"
    .string "but they had an antivirus.$"

ExplorerSindicate_Pot:
    lock
    msgbox ExplorerSindicate_Pot_Text
    release
    end

ExplorerSindicate_Pot_Text:
    .string "Look! It's an olden-tortoise\n"
    .string "water-pot, which is belonded to you.$"