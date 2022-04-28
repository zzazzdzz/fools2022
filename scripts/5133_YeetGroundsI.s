.align 4

YeetGroundsI_MapInitCode:
    bx lr

YeetGroundsI_PrepareRetire:
    ldr r0, =zWarpTargetData
    ldr r1, =0x180b5133
    str r1, [r0]
    ldr r0, =zWarpTargetDirection
    mov r1, #0
    strb r1, [r0]
    bx lr

.align 4
.ltorg

YeetGroundsI_MapInitScript:
    end

YeetGrounds_CantPush:
    lock
    msgbox YeetGrounds_CantPush_Text, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq YeetGrounds_CantPush_No
    callnative YeetGroundsI_PrepareRetire
    goto WarpScript
YeetGrounds_CantPush_No:
    release
    end

YeetGrounds_CantPush_Text:
    .string "You give it all your STRENGTH, but\n"
    .string "this statue won't even budge.\p"
    .string "Oh, this statue has a switch labeled\n"
    .string "{LQUOT}RETIRE BUTTON{RQUOT}... Press it?$"

YeetGrounds_Desc:
    lock
    faceplayer
    msgbox YeetGrounds_Desc_Text
    release
    end

YeetGrounds_Desc_Text:
    .string "Look at that! Our boulders seem to\n"
    .string "be feeling especially good today.\p"
    .string "Trust me, every edge case in Gen III NPC\n"
    .string "collision physics, you're gonna hit!\p"
    .string "Use the conveniently placed reset doors\n"
    .string "if you ever get stuck.\p"
    .string "Also use the convenient RETIRE buttons\n"
    .string "inside the statues to restart!$"

YeetGrounds_TheCode:
    compare VAR_TEMP_4, 1
    goto_if_eq Route110_TrickHousePuzzle_EventScript_ReadScrollAgain
	setvar VAR_TEMP_4, 1
	goto Route110_TrickHousePuzzle_EventScript_FoundScroll

YeetGrounds_TheDoor:
    compare VAR_TEMP_4, 2
    goto_if_eq YeetGrounds_TheDoor_End
    compare VAR_TEMP_4, 0
    goto_if_eq Route110_TrickHousePuzzle_EventScript_DoorLocked
    msgbox YeetGrounds_TheDoor_Text
	playse SE_PIN
	setvar VAR_TEMP_4, 2
    setmetatile 12, 3, 0x20b, FALSE
    setmetatile 12, 2, 0x203, FALSE
	callnative DrawWholeMapView
    releaseall
YeetGrounds_TheDoor_End:
    end

YeetGrounds_TheDoor_Text:
    .string "You write down the secret code on\n"
    .string "the door...\p"
    .string "The lock clicked open!$"

EventScript_StrengthBoulder:
    lock
    faceplayer
    msgbox EventScript_StrengthBoulder_Text
    release
    end

EventScript_StrengthBoulder_Text:
    .string "redacted$"