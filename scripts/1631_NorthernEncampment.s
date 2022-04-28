.align 4

NorthernEncampment_MapInitCode:
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

NorthernEncampment_MapInitScript:
    end

NorthernEncampment_Script1:
    lock
    faceplayer
    msgbox NorthernEncampment_Script1_Text
    release
    end

NorthernEncampment_Script1_Text:
    .string "Technology is incredible!\p"
    .string "By extending link cable communication\n"
    .string "to the Internet, you can stream dank\l"
    .string "memes directly to your GBA system!\p"
    .string "The power of science is staggering!$"

NorthernEncampment_Script2:
    lock
    faceplayer
    msgbox NorthernEncampment_Script2_Text
    release
    end

NorthernEncampment_Script2_Text:
    .string "If you don't have a BIKE yet, the\n"
    .string "BIKE SHOP in Western Glitchland is\l"
    .string "where you should go!$"

NorthernEncampment_TP:
    lock
    call GenericTPScript
    release
    end
