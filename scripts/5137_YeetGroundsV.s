.align 4

YeetGroundsV_MapInitCode:
    ldr r1, =YeetGroundsV_TrainerHook
    ldr r2, =0x3007900
    mov r3, #44
YeetGroundsV_MapInitCode_CopyStub:
    ldrb r0, [r1]
    strb r0, [r2]
    add r1, #1
    add r2, #1
    sub r3, #1
    bne YeetGroundsV_MapInitCode_CopyStub
    # b 0x3007900
    ldr r0, =0xea00146a
    ldr r1, =IntrMain_Buffer
    str r0, [r1]
    bx lr
    
YeetGroundsV_PrepareRetire:
    ldr r0, =zWarpTargetData
    ldr r1, =0x1d045137
    str r1, [r0]
    ldr r0, =zWarpTargetDirection
    mov r1, #1
    strb r1, [r0]
    bx lr

.align 4

YeetGroundsV_TrainerHook:
    .byte 0x18, 0x00, 0x9f, 0xe5
    .byte 0x00, 0x20, 0x90, 0xe5
    .byte 0x14, 0x10, 0x9f, 0xe5
    .byte 0x02, 0x00, 0x51, 0xe1
    .byte 0x10, 0x10, 0x9f, 0xe5
    .byte 0x00, 0x10, 0x80, 0x05
    .byte 0x01, 0x33, 0xa0, 0xe3
    .byte 0x8c, 0xeb, 0xff, 0xea
    .word sScriptContext1+8
    .word 0x08271440
    .word YeetGrounds_Failure

.align 4
.ltorg

YeetGroundsV_MapInitScript:
    end

YeetGroundsV_Script1:
    lock
    faceplayer
    msgbox YeetGroundsV_Script1_Text
    release
    end

YeetGroundsV_Script1_Text:
    .string "We rarely see trainers in Glitchland,\n"
    .string "yet I was able to assemble a team of\l"
    .string "the best spinners you've ever seen.\p"
    .string "Avoid the gaze of all the trainers to\n"
    .string "complete the challenge!\p"
    .string "Just remember about the secret hidden\n"
    .string "mechanic of Gen III trainer sight.\l"
    .string "They turn towards you if you run!$"

YeetGrounds_Failure:
    msgbox YeetGrounds_Failure_Text
    closemessage
    delay 16
    callnative YeetGroundsV_PrepareRetire
    goto WarpScript

YeetGrounds_Failure_Text:
    .string "Fools!\n"
    .string "They've detected you!\p"
    .string "Now you have to start from the\n"
    .string "beginning!$"

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
    setmetatile 9, 7, 0x20b, FALSE
    setmetatile 9, 6, 0x203, FALSE
	callnative DrawWholeMapView
    releaseall
YeetGrounds_TheDoor_End:
    end

YeetGrounds_TheDoor_Text:
    .string "You write down the secret code on\n"
    .string "the door...\p"
    .string "The lock clicked open!$"

YeetGrounds_Placeholder:
    lock
    faceplayer
    msgbox YeetGrounds_Placeholder_Text
    release
    end

YeetGrounds_PlaceholderTrainer:
    .byte 0x5c, 0x00, 0x65, 0x02, 0x00, 0x00
    .word YeetGrounds_Placeholder_Text
    .word YeetGrounds_Placeholder_Text

YeetGrounds_Placeholder_Text:
    .string "$"
