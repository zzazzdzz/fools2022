.align 4

EasternEncampment_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

EasternEncampment_MapInitScript:
    end

EasternEncampment_Script1:
    lock
    faceplayer
    msgbox EasternEncampment_Script1_Text
    release
    end

EasternEncampment_Script1_Text:
    .string "We?\n"
    .string "We're just a humble game studio.\p"
    .string "Since 2018, we're working on our launch\n"
    .string "title: Gears of Halo, Theft Auto 5.\p"
    .string "We were also chosen by Valve to aid\n"
    .string "in production of Half-Life 3.$"

EasternEncampment_Script2:
    lock
    faceplayer
    msgbox EasternEncampment_Script2_Text
    release
    end

EasternEncampment_Script2_Text:
    .string "At our game studio, we value\n"
    .string "simplicity above everything else.\p"
    .string "That's why we program all of our\n"
    .string "games in Assembly.\p"
    .string "It's the simplest programming language,\n"
    .string "no complicated constructs.\p"
    .string "I think our launch title should be\n"
    .string "ready in just 2 or 3 years.$"

EasternEncampment_Script3:
    lock
    msgbox EasternEncampment_Script3_Text
    release
    end

EasternEncampment_Script3_Text:
    .string "It's the game program. Messing with\n"
    .string "it could bug out the game!$"

EasternEncampment_Script4:
    lock
    msgbox EasternEncampment_Script4_Text
    release
    end

EasternEncampment_Script4_Text:
    .string "It's a workstation with a Maxtor\n"
    .string "7200 RPM hard drive attached.\p"
    .string "... ... ... ... ...\n"
    .string "... ... ... ... ...\p"
    .string "Wait, this isn't a Maxtor.\n"
    .string "This is a Quantum Bigfoot!$"

EasternEncampment_Script5:
    lock
    msgbox EasternEncampment_Script5_Text
    release
    end

EasternEncampment_Script5_Text:
    .string "Build failed: 913 errors, 213 warnings.\n"
    .string "That's what it says on the screen.$"

EasternEncampment_Script6:
    lock
    msgbox EasternEncampment_Script6_Text
    release
    end

EasternEncampment_Script6_Text:
    .string "The screen is filled with assembly\n"
    .string "instructions that you don't understand.$"
