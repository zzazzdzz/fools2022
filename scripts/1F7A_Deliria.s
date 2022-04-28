.align 4

Deliria_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

Deliria_MapInitScript:
    end

Deliria_Interior_Script1:
    lock
    faceplayer
    msgbox Deliria_Interior_Script1_Text
    release
    end

Deliria_Interior_Script1_Text:
    .string "We're in charge of controlling and\n"
    .string "monitoring the behavior of Deliria's\l"
    .string "wonderful inhabitants\p"
    .string "Spend a few minutes with them, and\n"
    .string "you'll understand that they can't\l"
    .string "ever be left unattended.$"

Deliria_Interior_Script2:
    lock
    faceplayer
    msgbox Deliria_Interior_Script2_Text
    release
    end

Deliria_Interior_Script2_Text:
    .string "Because of abysmal living conditions\n"
    .string "in this area, many Delirians try to\l"
    .string "escape from Deliria.$"
