.align 4

NorthernRetreat_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

NorthernRetreat_MapInitScript:
    end

NorthernRetreat_House2_Script1:
    lock
    bufferstring STR_VAR_1, PlayerNameString
    bufferstring STR_VAR_2, NumMapsString
    faceplayer
    msgbox NorthernRetreat_House2_Script1_Text
    release
    end

NorthernRetreat_House2_Script1_Text:
    .string "Hello! How much of this world do you\n"
    .string "think you've seen?\l"
    .string "Let me verify your claims real quick.\p"
    .string "... ... ... ... ... ... ... ...\n"
    .string "... ... ... ... ... ... ... ...\p"
    .string "So, {STR_VAR_1}...\n"
    .string "You've seen {STR_VAR_2} unique places.\p"
    .string "I will continue to keep track of your\n"
    .string "record. Come back whenever you want\l"
    .string "to see your progress!$"

PlayerNameString:
    .ascii "--PLAYERNICKNA--"
    .byte 0xff

NumMapsString:
    .ascii "--PLAYERMAPCNT--"
    .byte 0xff