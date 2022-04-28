.align 4

SouthernEncampment_MapInitCode:
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

SouthernEncampment_MapInitScript:
    end

SouthernEncampment_Script1:
    lock
    faceplayer
    msgbox SouthernEncampment_Script1_Text
    release
    end

SouthernEncampment_Script1_Text:
    .string "Using this small patch of hallowed\n"
    .string "ground, it's possible to teleport\l"
    .string "between previously visited areas!\p"
    .string "Or so they tell me. When I try it,\n"
    .string "I just get pushed away!\p"
    .string "Is there something special I need to\n"
    .string "do beforehand? I have no idea...$"

SouthernEncampment_Script2:
    lock
    faceplayer
    msgbox SouthernEncampment_Script2_Text
    release
    end

SouthernEncampment_Script2_Text:
    .string "I've seen a lot of suspicious people\n"
    .string "around this area lately.\p"
    .string "I think there's some criminal activity\n"
    .string "going on, but I can't prove it yet.$"

SouthernEncampment_Script3:
    lock
    msgbox SouthernEncampment_Script3_Text
    release
    end

SouthernEncampment_Script3_Text:
    .string "Want to experience your life anew?\n"
    .string "GLITCHLAND SPIRIT RELEASING THERAPY\p"
    .string "Refresh your mind and body, experience\n"
    .string "a new life!$"

SouthernCamp_TP:
    lock
    call GenericTPScript
    release
    end
