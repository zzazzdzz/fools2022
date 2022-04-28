.align 4

EasternEncampment_MapInitCode:
    ldr r0, =zLocationFlags
    ldr r1, =LocationFlags
    ldr r2, [r1]
    str r2, [r0]
    ldr r2, [r1, #0x04]
    str r2, [r0, #0x04]
    bx lr

.align 4
LocationFlags:
    .ascii "--FLYFLAGS--"

.align 4
.ltorg

EasternEncampment_MapInitScript:
    end

EasternEncampment_Script1:
    lock
    faceplayer
    msgbox EasternEncampment_Script1_Text
    release
    end

EasternEncampment_Script1_Text:
    .string "Hmm, so I need to set up the memory\n"
    .string "map for mGBA GDB debugging to work...\p"
    .string "Oh, hello. Didn't notice you at first!\n"
    .string "Want to take on the Cracker Cavern?\p"
    .string "It's the best place in Glitchland for\n"
    .string "hackers to test out their skills.\p"
    .string "Moving to Gen III really increased the\n"
    .string "difficulty of challenges.\l"
    .string "I'm already stuck at the second one...$"

EasternEncampment_Script2:
    lock
    faceplayer
    msgbox EasternEncampment_Script2_Text
    release
    end

EasternEncampment_Script2_Text:
    .string "I heard that some things happen\n"
    .string "only on certain times of the day.\p"
    .string "Standardizing the time in Glitchland\n"
    .string "was a tremendous undertaking, but\l"
    .string "eventually, we all agreed to use UTC.$"

EasternCamp_TP:
    lock
    call GenericTPScript
    release
    end

EasternCamp_SignStudio:
    lock
    msgbox EasternCamp_SignStudio_Text
    release
    end

EasternCamp_SignStudio_Text:
    .string "GLITCHLAND GAME STUDIO$"