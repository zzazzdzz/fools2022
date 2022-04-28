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

NorthernRetreat_House1_Script1:
    lock
    faceplayer
    msgbox NorthernRetreat_House1_Script1_Text
    release
    end

NorthernRetreat_House1_Script1_Text:
    .string "Giving nicknames to your Pok{EACUTE}mon\n"
    .string "is incredibly important.\p"
    .string "It promotes forming strong emotional\n"
    .string "bonds with Pok{EACUTE}mon you have.\p"
    .string "That's why I give a nickname to\n"
    .string "every Pok{EACUTE}mon I catch!$"

NorthernRetreat_House1_Zigzagoon:
    lock
    faceplayer
    msgbox NorthernRetreat_House1_Zigzagoon_Text
    release
    end

NorthernRetreat_House1_Zigzagoon_Text:
    .string "It's a ZIGZAGOON with a name tag.\n"
    .string "Its name is POOPBUTT.$"
