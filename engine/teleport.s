# teleport.s
# Teleportation interface

TeleportationInterface:
    # Show the teleportation interface
    push {r4, r5, r6, r7, lr}
    farcall ReadKeys
    farcall WaitForVBlank
    mov r5, #0
TeleportationInterface_InputLoop:
    farcall ReadKeys
    ldr r0, =0x30022EE
    ldrb r4, [r0]
    cmp r4, #0x20
    bne TeleportationInterface_InputLoop_NoL
    bl TeleportationInterface_MoveToPrevOption
    mov r0, #SE_SELECT
    farcall PlaySE
TeleportationInterface_InputLoop_NoL:
    cmp r4, #0x10
    bne TeleportationInterface_InputLoop_NoR
    bl TeleportationInterface_MoveToNextOption
    mov r0, #SE_SELECT
    farcall PlaySE
TeleportationInterface_InputLoop_NoR:
    cmp r4, #0x01
    bne TeleportationInterface_InputLoop_NoA
    ldr r1, =gSpecialVar_Result
    mov r0, #1
    str r0, [r1]
    b TeleportationInterface_Return
TeleportationInterface_InputLoop_NoA:
    cmp r4, #0x02
    bne TeleportationInterface_InputLoop_NoB
    ldr r1, =gSpecialVar_Result
    mov r0, #0
    str r0, [r1]
    mov r0, #SE_SELECT
    farcall PlaySE
    b TeleportationInterface_Return
TeleportationInterface_InputLoop_NoB:
    ldr r0, =zSelectedTPOption
    ldrb r0, [r0]
    add r0, r0
    add r0, r0
    ldr r4, =TeleportationInterface_LocationNames
    add r4, r0
    ldr r4, [r4]
    bl TeleportationInterface_BufferMapName
    add r5, #1
    lsr r0, r5, #4
    mov r1, #1
    and r0, r1
    sub r0, #1
    beq TeleportationInterface_InputLoop_UseText1
    ldr r0, =ChoiceText2
    b TeleportationInterface_InputLoop_PrintIt
TeleportationInterface_InputLoop_UseText1:
    ldr r0, =ChoiceText1
TeleportationInterface_InputLoop_PrintIt:
    mov r1, #0
    mov r2, #0
    farcall SaveFailedScreenTextPrint
    farcall WaitForVBlank
    b TeleportationInterface_InputLoop
TeleportationInterface_Return:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

TeleportationInterface_MoveToNextOption:
    ldr r1, =zSelectedTPOption
    ldrb r1, [r1]
TeleportationInterface_MoveToNextOption_TryNext:
    add r1, #1
    cmp r1, #6
    bne TeleportationInterface_MoveToNextOption_NoOverflow
    mov r1, #0
TeleportationInterface_MoveToNextOption_NoOverflow:
    ldr r0, =zLocationFlags
    add r0, r1
    ldrb r0, [r0]
    cmp r0, #1
    bne TeleportationInterface_MoveToNextOption_TryNext
    ldr r0, =zSelectedTPOption
    strb r1, [r0]
    bx lr

TeleportationInterface_MoveToPrevOption:
    ldr r1, =zSelectedTPOption
    ldrb r1, [r1]
TeleportationInterface_MoveToPrevOption_TryNext:
    sub r1, #1
    bpl TeleportationInterface_MoveToPrevOption_NoOverflow
    mov r1, #5
TeleportationInterface_MoveToPrevOption_NoOverflow:
    ldr r0, =zLocationFlags
    add r0, r1
    ldrb r0, [r0]
    cmp r0, #1
    bne TeleportationInterface_MoveToPrevOption_TryNext
    ldr r0, =zSelectedTPOption
    strb r1, [r0]
    bx lr

TeleportationInterface_PrepareListOfVisitedLocations:
    # This is unused; location visit flags were planned to be stored in
    # flags, but plans changed during development
    push {r5, r6, r7, lr}
    mov r6, #0
TeleportationInterface_PrepareListOfVisitedLocations_CheckLocation:
    ldr r0, =FLAG_VISITED_CENTRAL_SQUARE
    add r0, r6
    farcall FlagGet
    cmp r0, #0
    beq TeleportationInterface_PrepareListOfVisitedLocations_Nope
    ldr r0, =zLocationFlags
    add r0, r6
    mov r1, #1
    strb r1, [r0]
TeleportationInterface_PrepareListOfVisitedLocations_Nope:
    add r6, #1
    cmp r6, #6
    bne TeleportationInterface_PrepareListOfVisitedLocations_CheckLocation
TeleportationInterface_PrepareListOfVisitedLocations_Done:
    pop {r5, r6, r7}
    pop {r0}
    bx r0

.align 4
TeleportationInterface_LocationNames:
    .word TeleportationInterface_LocationNames_CentralSquare
    .word TeleportationInterface_LocationNames_NorthernRetreat
    .word TeleportationInterface_LocationNames_NorthernCamp
    .word TeleportationInterface_LocationNames_WesternCamp
    .word TeleportationInterface_LocationNames_EasternCamp
    .word TeleportationInterface_LocationNames_SouthernCamp
TeleportationInterface_LocationNames_CentralSquare:
    .string "CENTRAL SQUARE        $"
TeleportationInterface_LocationNames_NorthernRetreat:
    .string "NORTHERN RETREAT      $"
TeleportationInterface_LocationNames_NorthernCamp:
    .string "NORTHERN CAMP         $"
TeleportationInterface_LocationNames_WesternCamp:
    .string "WESTERN CAMP          $"
TeleportationInterface_LocationNames_EasternCamp:
    .string "EASTERN CAMP          $"
TeleportationInterface_LocationNames_SouthernCamp:
    .string "SOUTHERN CAMP         $"

TeleportationInterface_BufferMapName:
    push {r7, lr}
    ldr r0, =ChoiceText1_TargetName
    mov r1, r4
    mov r2, #23
    farcall StringCopyN
    ldr r0, =ChoiceText2_TargetName
    mov r1, r4
    mov r2, #23
    farcall StringCopyN
    pop {r7}
    pop {r0}
    bx r0

ChoiceText1:
    .string "\n{HIGHLIGHT}{WHITE}{COLOR}{BLUE}{RIGHT_ARROW}   "
ChoiceText1_TargetName:
    .string "BEPIS BEPIS BEPIS       $"
ChoiceText2:
    .string "\n{HIGHLIGHT}{WHITE}{COLOR}{BLUE} {RIGHT_ARROW}  "
ChoiceText2_TargetName:
    .string "SEPIB SEPIB SEPIB       $"

TeleportationPrepareMap:
    ldr r0, =zSelectedTPOption
    ldrb r0, [r0]
    add r0, r0
    add r0, r0
    ldr r1, =TeleportationPrepareMap_Locations
    add r1, r0
    ldr r0, [r1]
    ldr r1, =zWarpTargetData
    str r0, [r1]
    ldr r0, =zWarpTargetDirection
    mov r1, #0
    strb r1, [r0]
    bx lr

TeleportationPrepareMap_Locations:
    .hword 0x0100
    .byte 29, 26
    .hword 0x062f
    .byte 23, 13
    .hword 0x1631
    .byte 9, 12
    .hword 0x2b29
    .byte 26, 3
    .hword 0x2f38
    .byte 28, 3
    .hword 0x472b
    .byte 10, 7
