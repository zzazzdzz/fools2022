.align 4

WesternEncampment_MapInitCode:
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

WesternEncampment_MapInitScript:
    end

WesternEncampment_Script1:
    lock
    faceplayer
    msgbox WesternEncampment_Script1_Text
    release
    end

WesternEncampment_Script1_Text:
    .string "The inscription on this rock says:\n"
    .string "{LQUOT}NEVER GIVE UP{RQUOT}.\p"
    .string "It's very inspiring how the ancients\n"
    .string "share their vast knowledge and\l"
    .string "experience with future generations.\p"
    .string "This is why I decided to become\n"
    .string "an explorer.$"

WesternEncampment_Script2:
    lock
    faceplayer
    msgbox WesternEncampment_Script2_Text
    release
    end

WesternEncampment_Script2_Text:
    .string "This town is home to many explorers,\n"
    .string "both amateur and professional.\p"
    .string "Western Glitchland has some of the\n"
    .string "best locations to explore.\p"
    .string "No wonder this town is just filled with\n"
    .string "all kinds of exploration freaks.$"

WesternEncampment_Script3:
    lock
    msgbox WesternEncampment_Script3_Text
    release
    end

WesternEncampment_Script3_Text:
    .string "WESTERN GLITCHLAND\n"
    .string "EXPLORER SINDICATE$"

WesternEncampment_Script4:
    lock
    braillemessage WesternEncampment_Script4_Braille
	waitbuttonpress
	closebraillemessage
    releaseall
    end

WesternEncampment_Script4_Braille:
    .byte 13, 37, 69, 4, 2, 0
    .braille "LETTUCE$"

WesternEncampment_TP:
    lock
    call GenericTPScript
    release
    end
