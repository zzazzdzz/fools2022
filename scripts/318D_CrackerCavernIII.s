.align 4

CrackerCavernIII_MapInitCode:
    ldr r0, =CrackerCavern_ClearFlag
    ldrb r0, [r0]
    cmp r0, #0
    bne CrackerCavernIII_MapInitCode_MakePassage
    bx lr
CrackerCavernIII_MapInitCode_MakePassage:
    ldr r0, =CrackerCavernIII_MapData+(7*12+9)*2
    ldr r1, =0x3201
    strh r1, [r0]
    bx lr

CrackerCavernIII_PreparePassPacket:
    # set packet length
    ldr r1, =zLinkPacketTxLen
    mov r0, #4
    str r0, [r1]
    # set packet struct address
    ldr r1, =zLinkPacketTx
    ldr r0, =zPacketStruct
    str r0, [r1]
    # prepare packet type
    mov r1, #COMMAND_ID_CRACKER3_PASS
    str r1, [r0]
    # copy phrase to packet
    ldr r1, =gStringVar2
    add r2, r0, #4
    mov r3, #10
CrackerCavernIII_PreparePassPacket_CopyData:
    ldrb r0, [r1]
    strb r0, [r2]
    add r1, #1
    add r2, #1
    sub r3, #1
    bne CrackerCavernIII_PreparePassPacket_CopyData
    # receive only 4 bytes
    ldr r1, =zLinkPacketRxLen
    mov r0, #4
    str r0, [r1]
    # to zLinkSuccess
    ldr r1, =zLinkPacketRx
    ldr r0, =zLinkSuccess
    str r0, [r1]
    bx lr

CrackerCavernIII_SetTile:
    push {lr}
    mov r0, #9+7
    mov r1, #7+7
    ldr r2, =0x3201
    ldr r3, =MapGridSetMetatileEntryAt+1
    bl CrackerCavernIII_SetTile_BXR3
    pop {r3}
CrackerCavernIII_SetTile_BXR3:
    bx r3

.align 4
.ltorg

CrackerCavernIII_MapInitScript:
    end

CrackerCavern_Wello:
    lock
    faceplayer
    msgbox CrackerCavern_Wello_Text
    call CrackerCavern_PreparePasswordBuffer
    callnative GenericNamingScreen
    waitstate
    call CrackerCavern_VerifyPassword
    compare VAR_RESULT, 0
	goto_if_eq CrackerCavern_Wello_WrongPass
    msgbox CrackerCavern_Wello_Text3
    callnative CrackerCavernIII_PreparePassPacket
    call GenericRequestScript
	playse SE_ICE_STAIRS
    callnative CrackerCavernIII_SetTile
    callnative DrawWholeMapView
    release
    end

CrackerCavern_Wello_WrongPass:
    msgbox CrackerCavern_Wello_Text2
    release
    end

CrackerCavern_PreparePasswordBuffer:
    writebytetoaddr 0xff, gStringVar2+0
    writebytetoaddr 0xff, gStringVar2+1
    writebytetoaddr 0xff, gStringVar2+2
    writebytetoaddr 0xff, gStringVar2+3
    writebytetoaddr 0xff, gStringVar2+4
    writebytetoaddr 0xff, gStringVar2+5
    writebytetoaddr 0xff, gStringVar2+6
    writebytetoaddr 0xff, gStringVar2+7
    writebytetoaddr 0xff, gStringVar2+8
    writebytetoaddr 0xff, gStringVar2+9
    writebytetoaddr 0xff, gStringVar2+10
    writebytetoaddr 0xff, gStringVar2+11
    writebytetoaddr 0xff, gStringVar2+12
    writebytetoaddr 0xff, gStringVar2+13
    writebytetoaddr 0xff, gStringVar2+14
    writebytetoaddr 0xff, gStringVar2+15
    return

.macro ldoffset from:req
    setvar 0x8000, 0
    loadbytefromaddr 0, \from
    setptrbyte 0, gSpecialVar_0x8000
.endm

.macro addbyteto8001 from:req idx:req label:req
    loadbytefromaddr 0, \from
    setptrbyte 0, AddSMC_\idx\label - 2
    addvar 0x8001, 0
AddSMC_\idx\label:
.endm

.macro mul8001byconst val:req idx:req
    loadbytefromaddr 0, gSpecialVar_0x8001 + 0
    setptrbyte 0, AddSMC2_\val\idx - 2
    loadbytefromaddr 0, gSpecialVar_0x8001 + 1
    setptrbyte 0, AddSMC2_\val\idx - 1
    setvar 0x8001, 0
    setvar 0x8002, \val
AddSMC2_Loop_\val\idx:
    addvar 0x8001, 0
AddSMC2_\val\idx:
    subvar 0x8002, 1
    compare_var_to_value 0x8002, 0
    goto_if_ne AddSMC2_Loop_\val\idx
.endm

.macro passround idx:req mulconst:req addconst:req
    addbyteto8001 gStringVar2+\idx \idx \mulconst
    mul8001byconst \mulconst \idx
    addvar 0x8001, \addconst
.endm

CrackerCavern_VerifyPassword:
    setvar 0x8001, 6969
    passround 0 73 6367
    passround 1 97 5099
    passround 2 13 4591
    passround 3 41 4421
    passround 4 67 4831
    passround 5 101 3581
    passround 6 89 5039
    passround 7 139 5279
    passround 8 71 4079
    passround 9 83 4021
    copyvar 0x8003, 0x8001
    setvar 0x8001, 1337
    passround 0 59 3701
    passround 1 181 4603
    passround 2 127 4663
    passround 3 163 4703
    passround 4 103 4219
    passround 5 163 6481
    passround 6 149 6983
    passround 7 193 5407
    passround 8 211 5297
    passround 9 151 5099
    compare_var_to_value 0x8003, 45295
    goto_if_ne CrackerCavern_VerifyPassword_Fail
    compare_var_to_value 0x8001, 54457
    goto_if_ne CrackerCavern_VerifyPassword_Fail
    setvar VAR_RESULT, 1
    return
CrackerCavern_VerifyPassword_Fail:
    setvar VAR_RESULT, 0
    return

CrackerCavern_Wello_Text:
    .string "Wello!\n"
    .string "Please enter your password.$"

CrackerCavern_Wello_Text3:
    .string "That's the correct password!\n"
    .string "Data will be sent for verification.$"

CrackerCavern_Wello_Text2:
    .string "Sorry.\n"
    .string "Your password is wrong.$"

CrackerCavernI_Script1:
    lock
    msgbox CrackerCavernI_Script1_Text
    release
    end

CrackerCavernI_Script1_Text:
    .string "CRACKER CAVERN REBORN\n"
    .string "CHALLENGE III\p"
    .string "You're halfway there.\n"
    .string "Here's the next challenge.\p"
    .string "The passage to the next map is\n"
    .string "guarded by a password.\p"
    .string "The objective is simple.\n"
    .string "Find the correct password.\p"
    .string "Note - bypassing the barrier with\n"
    .string "client-side hacks won't work.\p"
    .string "Note - there may exist multiple\n"
    .string "correct passwords. Any one of them\l"
    .string "will be accepted. Good luck!$"

CrackerCavern_ClearFlag:
    .ascii "--CC3CLEAR--"
	.byte 0xff
