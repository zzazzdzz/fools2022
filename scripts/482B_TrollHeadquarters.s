.align 4

TrollHeadquarters_MapInitCode:
    bx lr

TrollHeadquarters_SetTargetMap:
    ldr r0, =zWarpTargetData
    ldr r1, =0x13154889
    str r1, [r0]
    ldr r0, =zWarpTargetDirection
    mov r1, #1
    strb r1, [r0]
    bx lr

.align 4
.ltorg

TrollHeadquarters_MapInitScript:
    end

TrollHeadquarters_Script1:
    lock
    msgbox TrollHeadquarters_Script1_Text
    release
    end

TrollHeadquarters_Script1_Text:
    .string "PRIVATE PROPERTY\n"
    .string "KEEP OUT\l"
    .string "DEFINITELY NOT SUSPICIOUS$"

TrollHeadquarters_Script2:
    lock
    checkflag FLAG_POT_OF_GREED
    goto_if TRUE, TrollHeadquarters_Script2_UsePotOfGreedAndDrawTwoAdditionalCardsFromYourDeckAndAddThemToYourHand
    msgbox TrollHeadquarters_Script2_Text
    release
    end

TrollHeadquarters_Script2_UsePotOfGreedAndDrawTwoAdditionalCardsFromYourDeckAndAddThemToYourHand:
    msgbox TrollHeadquarters_Script2_Text2
    callnative TrollHeadquarters_SetTargetMap
    goto WARP_SCRIPT

TrollHeadquarters_Script2_Text:
    .string "Looks like a special card is\n"
    .string "required to enter.$"

TrollHeadquarters_Script2_Text2:
    .string "Looks like a special card is\n"
    .string "required to enter.\p"
    .string "You use the Pot of Greed magic card,\n"
    .string "which lets you draw two additional\l"
    .string "cards from your deck and add them to\l"
    .string "your hand.\p"
    .string "One of the drawn cards conveniently\n"
    .string "worked for opening the door!$"
