.align 4

CrackerCavernI_MapInitCode:
    ldr r0, =CrackerCavern_ClearFlag
    ldrb r0, [r0]
    cmp r0, #0
    bne CrackerCavernI_MapInitCode_MakePassage
    bx lr
CrackerCavernI_MapInitCode_MakePassage:
    ldr r0, =CrackerCavernI_MapData+(7*12+9)*2
    ldr r1, =0x3201
    strh r1, [r0]
    bx lr

CrackerCavernI_SetTile:
    push {lr}
    mov r0, #9+7
    mov r1, #7+7
    ldr r2, =0x3201
    ldr r3, =MapGridSetMetatileEntryAt+1
    bl CrackerCavernI_SetTile_BXR3
    pop {r3}
CrackerCavernI_SetTile_BXR3:
    bx r3

.align 4
.ltorg

CrackerCavernI_MapInitScript:
    end

CrackerCavernI_Script1:
    lock
    msgbox CrackerCavernI_Script1_Text
    release
    end

CrackerCavernI_Script1_Text:
    .string "CRACKER CAVERN REBORN\n"
    .string "CHALLENGE I\p"
    .string "Before we get into the real deal,\n"
    .string "let's begin with an easy task.\p"
    .string "Use whatever methods you desire\n"
    .string "to go through the rock barrier below\l"
    .string "and reach the next floor.\p"
    .string "Note - basic protections against\n"
    .string "cheating are implemented.\p"
    .string "The person on the right can help\n"
    .string "you achieve your goal, but it's not\l"
    .string "necessary to use their help. Good luck!$"

CrackerCavern_Wello:
    lock
    faceplayer
    msgbox CrackerCavern_Wello_Text
    checkitem 11, 1
    compare VAR_RESULT, TRUE
    goto_if TRUE, CrackerCavern_Wello_OK
    release
    end

CrackerCavern_Wello_OK:
    msgbox CrackerCavern_Wello_Text2
	playse SE_ICE_STAIRS
    callnative CrackerCavernI_SetTile
    callnative DrawWholeMapView
    release
    end

CrackerCavern_Wello_Text:
    .string "Wello!\p"
    .string "If you have a LUXURY BALL, I will\n"
    .string "unlock the next area.$"

CrackerCavern_Wello_Text2:
    .string "Wow, you have a LUXURY BALL!\n"
    .string "I opened up a passage for you.$"

CrackerCavern_ClearFlag:
    .ascii "--CC1CLEAR--"
	.byte 0xff
