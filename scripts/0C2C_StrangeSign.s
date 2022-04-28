.align 4

StrangeSign_MapInitCode:
    bx lr

StrangeSign_SetTargetMap:
    ldr r0, =zWarpTargetData
    ldr r1, =0x0208098A
    str r1, [r0]
    ldr r0, =zWarpTargetDirection
    mov r1, #0
    strb r1, [r0]
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.ltorg
.align 4

StrangeSign_MapInitScript:
    end

StrangeSign_Script:
    lock
    braillemessage StrangeSign_Braille
	waitbuttonpress
	closebraillemessage
    checkflag FLAG_UNDERGROUND_CAVE_PUZZLE1
    goto_if FALSE, StrangeSign_Script_Nope
    checkflag FLAG_UNDERGROUND_CAVE_PUZZLE2
    goto_if FALSE, StrangeSign_Script_Nope
    checkplayergender
    compare_var_to_value VAR_RESULT, 1
    goto_if_eq StrangeSign_Success
StrangeSign_Script_Nope:
    releaseall
    end

StrangeSign_Success:
	fadeoutbgm 0
    playse SE_TRUCK_MOVE
	callnative DoSealedChamberShakingEffect1
	waitstate
	delay 40
	playse SE_DOOR
	delay 40
    msgbox StrangeSign_Script_Text
    callnative StrangeSign_SetTargetMap
    goto WARP_SCRIPT

StrangeSign_Script_Text:
    .string "You fall down, as the ground\n"
    .string "beneath you crumbles!$"

StrangeSign_Braille:
    .byte 13, 37, 69, 4, 2, 0
    .braille "FINALLY\n"
    .braille "YOU WILL\n"
    .braille "BECOME FEMBOY$"