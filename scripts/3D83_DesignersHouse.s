.align 4

DesignersHouse_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

DesignersHouse_MapInitScript:
    end

EasternCamp_Script1:
    lock
    faceplayer
    msgbox EasternCamp_Script1_Text
    release
    end

EasternCamp_Script1_Text:
    .string "Hello! I'm Matthew!\n"
    .string "The genius level designer!\l"
    .string "Game design is my passion!\p"
    .string "I've created a great new map for\n"
    .string "you to enjoy. Could you help me with\l"
    .string "beta-testing?\p"
    .string "Just go to the west from here and\n"
    .string "you'll be impressed!$"
