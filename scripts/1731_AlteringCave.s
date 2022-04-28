.align 4

AlteringCave_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

AlteringCave_MapInitScript:
    end

AlteringCave_Script1:
    lock
    faceplayer
    msgbox AlteringCave_Script1_Text
    release
    end

AlteringCave_Script1_Text:
    .string "I'm not sure what is up with\n"
    .string "these strange looking braille rocks.\p"
    .string "I also saw a similar one in the\n"
    .string "Tiny Cavern in Southern Glitchland.$"

AlteringCave_Script2:
    lock
    faceplayer
    msgbox AlteringCave_Script2_Text
    release
    end

AlteringCave_Script2_Text:
    .string "A rare fossil is said to appear\n"
    .string "in the Altering Cave, but I just\l"
    .string "can't seem to be able to find it...$"

AlteringCave_Script3:
    lock
    braillemessage AlteringCave_Script3_Braille
	waitbuttonpress
	closebraillemessage
    releaseall
    end

AlteringCave_Script3_Braille:
    .byte 13, 37, 69, 4, 2, 0
    .braille "HOPE$"

EventScript_StrengthBoulder:
    lock
    faceplayer
    msgbox EventScript_StrengthBoulder_Text
    release
    end

EventScript_StrengthBoulder_Text:
    .string "redacted$"