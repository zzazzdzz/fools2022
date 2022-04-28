.align 4

TooMuchWater_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

TooMuchWater_MapInitScript:
    end

TooMuchWater_Script1:
    lock
    faceplayer
    msgbox TooMuchWater_Script1_Text
    release
    end

TooMuchWater_Script1_Text:
    .string "I once tried to get through the\n"
    .string "Lost Woods, but I kept losing my way.\p"
    .string "Looks like I'll never reach the Eastern\n"
    .string "Edge, unless I come up with something...$"

TooMuchWater_Script2:
    lock
    faceplayer
    checkflag FLAG_DELIVERED_MICROSCOPIC_THINGS
    goto_if TRUE, TooMuchWater_Script2_Finished
    checkflag 0x0011
    goto_if FALSE, TooMuchWater_Script2_Incomplete
    checkflag 0x0012
    goto_if FALSE, TooMuchWater_Script2_Incomplete
    checkflag 0x0013
    goto_if FALSE, TooMuchWater_Script2_Incomplete
    checkflag 0x0014
    goto_if FALSE, TooMuchWater_Script2_Incomplete
    setflag FLAG_DELIVERED_MICROSCOPIC_THINGS
    message TooMuchWater_Script2_Success_Text
    waitmessage
    playfanfare MUS_RG_OBTAIN_KEY_ITEM
    waitfanfare
    call SyncProgressScript
    release
    end
TooMuchWater_Script2_Incomplete:
    msgbox TooMuchWater_Script2_Text
    release
    end
TooMuchWater_Script2_Finished:
    msgbox TooMuchWater_Script2_Finish_Text
    release
    end

TooMuchWater_Script2_Text:
    .string "Oh hey, could you perhaps help me out\n"
    .string "a little bit?\p"
    .string "I had some microscopic nuclear things\n"
    .string "in my back pocket, and I dropped 'em...\p"
    .string "Could you help me find them? I lost\n"
    .string "four of them in the waters.$"

TooMuchWater_Script2_Success_Text:
    .string "Yes! You found all of my microscopic\n"
    .string "nuclear things! Thank you!$"

TooMuchWater_NuclearThingFound_Text:
    .string "You found a microscopic nuclear thing!\n"
    .string "You put it in your back pocket.$"

TooMuchWater_NuclearThingPostFound_Text:
    .string "You feel warmth. That's probably due\n"
    .string "to all the fusion... or fission.$"

TooMuchWater_NuclearThingGone_Text:
    .string "The water here is quite warm, but\n"
    .string "there's nothing to be found.$"

TooMuchWater_Script2_Finish_Text:
    .string "It's good to have all of my\n"
    .string "microscopic nuclear things back.\l"
    .string "I needed them for my tnetennba.$"

TooMuchWater_NuclearThing1:
    lock
    checkflag 0x0011
    setflag 0x0011
    goto TooMuchWater_NuclearThingCommon

TooMuchWater_NuclearThing2:
    lock
    checkflag 0x0012
    setflag 0x0012
    goto TooMuchWater_NuclearThingCommon

TooMuchWater_NuclearThing3:
    lock
    checkflag 0x0013
    setflag 0x0013
    goto TooMuchWater_NuclearThingCommon

TooMuchWater_NuclearThing4:
    lock
    checkflag 0x0014
    setflag 0x0014
    goto TooMuchWater_NuclearThingCommon

TooMuchWater_NuclearThingCommon:
    goto_if TRUE, TooMuchWater_NuclearThingGone
    checkflag FLAG_DELIVERED_MICROSCOPIC_THINGS
    goto_if TRUE, TooMuchWater_NuclearThingGone
    playfanfare MUS_OBTAIN_ITEM
    message TooMuchWater_NuclearThingFound_Text
    waitmessage
    waitfanfare
    msgbox TooMuchWater_NuclearThingPostFound_Text
    release
    end
TooMuchWater_NuclearThingGone:
    msgbox TooMuchWater_NuclearThingGone_Text
    release
    end

