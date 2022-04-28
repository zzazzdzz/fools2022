.align 4

StrangeRock_MapInitCode:
    bx lr

StrangeRock_MapInitScript:
    setvar VAR_TEMP_1, 0
    end

StrangeRock_Script:
    lock
    braillemessage StrangeRock_Braille
	waitbuttonpress
	closebraillemessage
    releaseall
    end

StrangeRock_OnSurf:
    checkflag FLAG_UNDERGROUND_CAVE_PUZZLE2
    goto_if TRUE, StrangeRock_Backoff
    addvar VAR_TEMP_1, 1
    compare_var_to_value VAR_TEMP_1, 5
    goto_if_eq StrangeRock_Success
StrangeRock_Backoff:
    releaseall
    end
StrangeRock_Success:
    playse SE_TRUCK_MOVE
	callnative DoSealedChamberShakingEffect1
	waitstate
	delay 40
	playse SE_DOOR
	delay 40
    msgbox StrangeRock_Script_Text
    setflag FLAG_UNDERGROUND_CAVE_PUZZLE2
    releaseall
    end

StrangeRock_Braille:
    .byte 13, 37, 69, 4, 2, 0
    .braille "GO TO HOLE IN\n"
    .braille "THE FENCE\n"
    .braille "FIVE TIMES$"

StrangeRock_Script_Text:
    .string "It sounded as if a door opened\n"
    .string "far, far below you.$"
