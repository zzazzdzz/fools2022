.align 4

GlitchResearchLab_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

GlitchResearchLab_MapInitScript:
    end

GlitchResearchLab_Professor:
    lock
    faceplayer
    msgbox GlitchResearchLab_Professor_Text
    release
    end

GlitchResearchLab_Professor_Text:
    .string "Hello, and welcome to the Glitchland\n"
    .string "Glitch Research Laboratory!\l"
    .string "Please have a look around.$"

GlitchResearchLab_Scientist1:
    lock
    faceplayer
    msgbox GlitchResearchLab_Scientist1_Text
    release
    end

GlitchResearchLab_Scientist1_Text:
    .string "Through our combined efforts, we\n"
    .string "discovered a Gen III counterpart to\l"
    .string "OAM DMA hijacking.\p"
    .string "The name of the game is IRQ vectors!\n"
    .string "IRQ vector hijacking has potential to\l"
    .string "revolutionize Generation III ACE!$"

GlitchResearchLab_Scientist2:
    lock
    faceplayer
    msgbox GlitchResearchLab_Scientist2_Text
    release
    end

GlitchResearchLab_Scientist2_Text:
    .string "Interesting. The curtains in our\n"
    .string "windows keep changing shape based on\l"
    .string "the contents of my PC box.\p"
    .string "I'm hoping I can receive some grants\n"
    .string "for investigating this with proper\l"
    .string "glitch research methodologies.\p"
    .string "Empirical glitching just ain't gonna\n"
    .string "work here.$"

GlitchResearchLab_Scientist3:
    lock
    faceplayer
    msgbox GlitchResearchLab_Scientist3_Text
    release
    end

GlitchResearchLab_Scientist3_Text:
    .string "I'm currently developing a machine that\n"
    .string "accelerates growth of Pomeg Berries.\p"
    .string "Ever since we moved to Generation III,\n"
    .string "we need an awful lot of them.\p"
    .string "We've drained our entire supply of\n"
    .string "berries in just a few days.$"

GlitchResearchLab_Scientist4:
    lock
    faceplayer
    msgbox GlitchResearchLab_Scientist4_Text
    release
    end

GlitchResearchLab_Scientist4_Text:
    .string "Spank me as much as you want,\n"
    .string "I'm not moving away from my Ley Lines!\p"
    .string "Hey, I'm doing important research.\n"
    .string "Please go somewhere else.$"

GlitchResearchLab_Scientist5:
    lock
    faceplayer
    msgbox GlitchResearchLab_Scientist5_Text
    release
    end

GlitchResearchLab_Scientist5_Text:
    .string "Hmm... let's see...\n"
    .string "The Acro Bike instability glitches...\p"
    .string "Aha, here's the problem.\n"
    .string "Too many grass sprites!\p"
    .string "You know what they say.\n"
    .string "All sprites... sprite sprites.$"

GlitchResearchLab_Machine:
    lock
    faceplayer
    msgbox GlitchResearchLab_Machine_Text
    release
    end

GlitchResearchLab_Machine_Text:
    .string "Very complicated machinery.\n"
    .string "Pomeg Berries are tightly packed inside.$"

GlitchResearchLab_PC1:
    lock
    msgbox GlitchResearchLab_PC1_Text
    release
    end

GlitchResearchLab_PC1_Text:
    .string "Hmm, what's this?\n"
    .string "Fools Event 2023 - concept document?\p"
    .string "Better not read it.\n"
    .string "Spoilers aren't fun!$"

GlitchResearchLab_PC2:
    lock
    msgbox GlitchResearchLab_PC2_Text
    release
    end

GlitchResearchLab_PC2_Text:
    .string "You take a look at the screen.\p"
    .string "Hey, he's playing the critically\n"
    .string "acclaimed MMORPG, Final Fantasy XIV!\p"
    .string "He's using his free trial, which includes\n"
    .string "the entirety of A Realm Reborn and the\l"
    .string "award-winning Heavensward expansion\l"
    .string "up to level 60 with no restrictions\l"
    .string "on playtime!$"

GlitchResearchLab_PC3:
    lock
    msgbox GlitchResearchLab_PC3_Text
    release
    end

GlitchResearchLab_PC3_Text:
    .string "Some GameBoy Advance emulator is\n"
    .string "running with its debugger opened.\p"
    .string "Wait, what's it debugging? It's a game,\n"
    .string "but it looks exactly like this world!$"

GlitchResearchLab_PC4:
    lock
    msgbox GlitchResearchLab_PC4_Text
    release
    end

GlitchResearchLab_PC4_Text:
    .string "The pokeemerald disassembly files are\n"
    .string "neatly displayed on the screen.$"