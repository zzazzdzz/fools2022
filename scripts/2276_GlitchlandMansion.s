.align 4

GlitchlandMansion_MapInitCode:
    bx lr

GlitchlandMansion_SetTargetMap:
    ldr r0, =zWarpTargetData
    ldr r1, =0x0a032277
    str r1, [r0]
    ldr r0, =zWarpTargetDirection
    mov r1, #1
    strb r1, [r0]
    ldr r0, =zSkipMapExitMovement
    mov r1, #0
    strb r1, [r0]
    bx lr

.ltorg
.align 4

GlitchlandMansion_MapInitScript:
    end

GlitchlandMansion_Script1:
    lock
    faceplayer
    msgbox GlitchlandMansion_Script1_Text
    closemessage
    applymovement 10, GlitchlandMansion_Script1_Turn
    waitmovement 10
    delay 44
    msgbox GlitchlandMansion_Script1_Text2
    setflag FLAG_MANSION_PICKING2
    callnative GlitchlandMansion_SetTargetMap
    goto WarpScript

GlitchlandMansion_Script1_Turn:
    face_up
    step_end

GlitchlandMansion_Script1_Text:
    .string "Ah, you finally got through.\n"
    .string "There's another lock to pick.$"

GlitchlandMansion_Script1_Text2:
    .string "Oh, look!\n"
    .string "It's a disc detainer design!\p"
    .string "The first thing I'm going to do is\n"
    .string "rotate all of those discs as far\l"
    .string "clockwise as they will go.\p"
    .string "Then I'm going to get the pick that\n"
    .string "BosnianBill and I made, and insert\l"
    .string "it in such a way that we tension off\l"
    .string "of disc number one.\p"
    .string "... ... ... ... ... ...\n"
    .string "... ... ... ... ... ...\p"
    .string "Aaaand we got this open.\n"
    .string "That was pretty easy!\p"
    .string "Go inside. I will try this again in\n"
    .string "the meantime, just to show that it\l"
    .string "was not a fluke.$"

GlitchlandMansion_Script2:
    lock
    msgbox GlitchlandMansion_Script2_Text
    release
    end

GlitchlandMansion_Script2_Text:
    .string "Yep. It's a broken door.\n"
    .string "Nothing unusual.$"

GlitchlandMansion_Script3:
    lock
    msgbox GlitchlandMansion_Script3_Text
    release
    end

GlitchlandMansion_Script3_Text:
    .string "Unfortunately, this door seems to\n"
    .string "be temporarily out of order.$"

GlitchlandMansion_Script4:
    lock
    msgbox GlitchlandMansion_Script4_Text
    closemessage
    playse SE_DOOR
    setmetatile 16, 18, 0x238, FALSE
    setmetatile 16, 19, 0x238, FALSE
    setmetatile 16, 20, 0x238, FALSE
    setmetatile 15, 18, 0x23d, FALSE
    setmetatile 15, 19, 0x23d, FALSE
    setmetatile 15, 20, 0x23c, FALSE
    callnative DrawWholeMapView
    delay 30
    release
    end

GlitchlandMansion_Script4_Text:
    .string "Another broken door...\n"
    .string "Hey! There's a hidden switch here!\l"
    .string "Let's just press it!$"

GlitchlandMansion_Script5:
    lock
    msgbox GlitchlandMansion_Script5_Text
    release
    end

GlitchlandMansion_Script5_Text:
    .string "Your persistent broken door habit\n"
    .string "shows no signs of payoff.$"

GlitchlandMansion_Script6:
    lock
    msgbox GlitchlandMansion_Script6_Text
    release
    end

GlitchlandMansion_Script6_Text:
    .string "This door is just like me.\n"
    .string "Completely broken inside.$"

GlitchlandMansion_Script7:
    lock
    msgbox GlitchlandMansion_Script7_Text
    release
    end

GlitchlandMansion_Script7_Text:
    .string "A garbage bin! It contains some\n"
    .string "rubbish! God save the Queen!$"

GlitchlandMansion_Script8:
    lock
    msgbox GlitchlandMansion_Script8_Text
    release
    end

GlitchlandMansion_Script8_Text:
    .string "You are very disgusted with the\n"
    .string "trashy can.$"

GlitchlandMansion_TurnBack:
    checkflag FLAG_MANSION_GOT_SCALE
    goto_if TRUE, GlitchlandMansion_TurnBack_NoAction
    lock
    msgbox GlitchlandMansion_TurnBack_Text
    closemessage
    applymovement 0xff, GlitchlandMansion_TurnBack_Movement
    waitmovement 0xff
GlitchlandMansion_TurnBack_NoAction:
    end
GlitchlandMansion_TurnBack_Movement:
    walk_up
    step_end

GlitchlandMansion_TurnBack_Text:
    .string "Something tells you that you shouldn't\n"
    .string "just turn back.$"

EventScript_StrengthBoulder:
    lock
    faceplayer
    msgbox EventScript_StrengthBoulder_Text
    release
    end

EventScript_StrengthBoulder_Text:
    .string "redacted$"