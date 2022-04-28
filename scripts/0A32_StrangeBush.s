.align 4

StrangeBush_MapInitCode:
    push {lr}
    ldr r0, =0x402A
    ldr r1, =GetVarPointer+1
    bl StrangeBush_BXR1
    mov r1, #0
    strb r1, [r0]
    pop {r1}
StrangeBush_BXR1:
    bx r1

.ltorg
.align 4

StrangeBush_MapInitScript:
    end

StrangeBush_Script:
    lock
    braillemessage StrangeBush_Braille
	waitbuttonpress
	closebraillemessage
    checkflag FLAG_UNDERGROUND_CAVE_PUZZLE1
    goto_if TRUE, StrangeBush_Script_Ignore
    compare_var_to_value 0x402A, 20
    goto_if_eq StrangeBush_Success
StrangeBush_Script_Ignore:
    releaseall
    end

StrangeBush_Success:
    playse SE_TRUCK_MOVE
	callnative DoSealedChamberShakingEffect1
	waitstate
	delay 40
	playse SE_DOOR
	delay 40
    msgbox StrangeBush_Script_Text
    setflag FLAG_UNDERGROUND_CAVE_PUZZLE1
    releaseall
    end

StrangeBush_Braille:
    .byte 13, 37, 69, 4, 2, 0
    .braille "ONCE ENTERED\n"
    .braille "WALK TWENTY\n"
    .braille "STEPS TOTAL$"

StrangeBush_Script_Text:
    .string "It sounded as if a door opened\n"
    .string "far, far below you.$"