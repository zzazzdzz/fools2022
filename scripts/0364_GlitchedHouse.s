.align 4

GlitchedHouse_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

GlitchedHouse_MapInitScript:
    end

GlitchedHouse_Int_Script1:
    lock
    faceplayer
    msgbox GlitchedHouse_Int_Script1_Text
    release
    end

GlitchedHouse_Int_Script1_Text:
    .string "My husband is so clingy, it really\n"
    .string "infuriates me.\p"
    .string "I tried to give myself some space by\n"
    .string "planting these trees, but someone\l"
    .string "obviously had to cut them.\p"
    .string "What am I going to do now?\n"
    .string "I should probably just divorce him.$"
