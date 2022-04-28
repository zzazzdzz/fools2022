.align 4

HarborHouse_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

HarborHouse_MapInitScript:
    end

HarborHouse_Script1:
    lock
    faceplayer
    checkflag FLAG_RECEIVED_VOUCHER
    goto_if TRUE, HarborHouse_Script1_Done
    msgbox HarborHouse_Script1_Text_Q, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq HarborHouse_Script1_N
    msgbox HarborHouse_Script1_Text_Y
    setflag FLAG_RECEIVED_VOUCHER
    giveitem 352
    call SyncProgressScript
HarborHouse_Script1_Done:
    msgbox HarborHouse_Script1_Text_Y2
    release
    end

HarborHouse_Script1_N:
    msgbox HarborHouse_Script1_Text_N
    release
    end

HarborHouse_Script1_Text_Q:
    .string "Hello! I'm the Fishing Guru!\n"
    .string "Do you like to fish?$"

HarborHouse_Script1_Text_Y:
    .string "You do? That's great.\n"
    .string "I appreciate that.\p"
    .string "... ... ... ... ... ...\n"
    .string "... ... ... ... ... ...\p"
    .string "What? You really thought I'm going\n"
    .string "to give you a free fishing rod?\p"
    .string "Sorry, giving stuff for free isn't\n"
    .string "really a good business strategy.\p"
    .string "However, I can make up for it with\n"
    .string "something much better than a rod!$"

HarborHouse_Script1_Text_Y2:
    .string "Take that coupon to our BIKE SHOP\n"
    .string "and trade it for a free BIKE!\p"
    .string "Maybe they're more convinced to\n"
    .string "give out free stuff than I am!$"

HarborHouse_Script1_Text_N:
    .string "Oh, you don't?\n"
    .string "That's really disappointing...$"