# serial.s
# Serial communication functions

WaitForJoybusCommand:
    # Wait for JoyBus master to perform a data exchange. Includes timeout
    # ---
    # assume r3 = REG_SIODATA already
    # acknowledge everything
    mov r0, #0x07
    str r0, [r3, #0x20]
    # for very bad amulators
    mov r0, #0
    str r0, [r3, #0x20]
    # JOYSTAT = 0x10
    mov r1, #0x10
    str r1, [r3, #0x38]
    lsl r1, r1, #16
    mov r2, #0b00000110
KeepWaiting:
    sub r1, #1
    beq KeepWaiting_Exit
    ldr r0, [r3, #0x20]
    and r0, r2
    beq KeepWaiting
KeepWaiting_Exit:
    # clear JOYSTAT (no longer making a request)
    mov r0, #0
    str r0, [r3, #0x38]
    # if we received something, get it in r0
    ldr r0, [r3, #0x30]
    # JOYTRANS = JOYRECV = #0
    mov r2, #0
    str r2, [r3, #0x30]
    str r2, [r3, #0x34]
    # r1 = 0 if we timed out
    cmp r1, #0
    bx lr

JoybusExchange_R:
    # Queue a JoyBus read request (aka write from master)
    push {lr}
    ldr r3, =REG_SIODATA
    # JOYTRANS = JOYRECV = #0
    mov r0, #0
    str r0, [r3, #0x30]
    str r0, [r3, #0x34]
    b JoybusExchange_Common
JoybusExchange_W:
    # Queue a JoyBus write request (aka read from master)
    push {lr}
    ldr r3, =REG_SIODATA
    # JOYTRANS = r0
    str r0, [r3, #0x34]
    # JOYRECV = #0
    mov r0, #0
    str r0, [r3, #0x30]
JoybusExchange_Common:
    # wait until the data is exchanged
    bl WaitForJoybusCommand
    # propagate the error and r0 to parent subroutine
    pop {r1}
    bx r1

Request:
    # Send a serial packet through JoyBus.
    push {lr}
    push {r4, r5, r6, r7}
    bl ShowConnectionIndicator
    ldr r1, =zLinkNumRetries
    mov r0, #3
    str r0, [r1]
RequestHandshake:
    # handshake
    # send two special values
    ldr r0, =LINK_TX_MAGIC_1
    bl JoybusExchange_W
    beq RequestError
    ldr r0, =LINK_TX_MAGIC_2
    bl JoybusExchange_W
    beq RequestError
    # check for two special responses
    bl JoybusExchange_R
    beq RequestError
    ldr r1, =LINK_RX_MAGIC_1
    cmp r0, r1
    bne RequestError
    bl JoybusExchange_R
    beq RequestError
    ldr r1, =LINK_RX_MAGIC_DEBUG
    cmp r0, r1
    beq RequestHandshake_Debug
    ldr r1, =LINK_RX_MAGIC_2
    cmp r0, r1
    bne RequestError
RequestHandshake_NoDebug:
    # link estabilished
    # hide connection indicator
    bl HideConnectionIndicator
    # display communication message
    mov r0, #0
    mov r1, #1
    farcall DrawDialogueFrame
    ldr r0, =CommunicationText
    mov r1, #0
    mov r2, #0
    farcall SaveFailedScreenTextPrint
    # delay for a bit
    mov r0, #3
    bl DelayFrames
    # disable interrupts
    ldr r1, =REG_IME
    mov r0, #0
    strh r0, [r1]
    ldr r1, =REG_SOUNDCNT_X
    mov r0, #0
    strh r0, [r1]
    # prepare for transmission
    ldr r4, =zLinkPacketTx
    ldr r4, [r4]
    ldr r5, =zLinkPacketTxLen
    ldr r5, [r5]
    # after handshake send packet length (in words)
    mov r0, r5
    bl JoybusExchange_W
    beq RequestError
RequestSendPacket:
    ldr r0, [r4]
    bl JoybusExchange_W
    beq RequestError
    add r4, #4
    sub r5, #1
    cmp r5, #0
    bne RequestSendPacket
    ldr r4, =LINK_FIN_MAGIC
    ldr r5, =LINK_WAI_MAGIC
RequestWaitProcessing:
    bl JoybusExchange_R
    beq RequestError
    # retry on WAI_MAGIC
    cmp r0, r5
    beq RequestWaitProcessing
    # abort if not FIN_MAGIC
    cmp r0, r4
    bne RequestError
    # receive packet length (in words)
    bl JoybusExchange_R
    beq RequestError
    mov r5, r0
    ldr r0, =zLinkStatusWord
    str r5, [r0]
    ldr r0, =#0xffff
    and r5, r0
    ldr r4, =zLinkPacketRx
    ldr r4, [r4]
    ldr r6, =zLinkPacketRxLen
    ldr r6, [r6]
RequestReceivePacket:
    bl JoybusExchange_R
    beq RequestError
    str r0, [r4]
    add r4, #4
    sub r5, #1
    sub r6, #1
    cmp r5, #0
    beq RequestFinishUp
    cmp r6, #0
    beq RequestFinishUp
    b RequestReceivePacket
RequestFinishUp:
    # calculate checksum? i forgor :/
    ldr r0, =zLinkStatusWord+3
    ldrb r0, [r0]
    cmp r0, #PROTOCOL_VERSION
    bne RequestWrongVersion
RequestSuccess:
    # enable ints again
    ldr r1, =REG_IME
    mov r0, #1
    str r0, [r1]
    ldr r1, =REG_SOUNDCNT_X
    mov r0, #0x8f
    str r0, [r1]
    # hide indicator just in case
    bl HideConnectionIndicator
    # set success flag and exit
    cmp r4, #0
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
RequestError:
    # enable ints again
    ldr r1, =REG_IME
    mov r0, #1
    strh r0, [r1]
    ldr r1, =REG_SOUNDCNT_X
    mov r0, #0x8f
    strh r0, [r1]
    # retry request if applicable
    ldr r1, =zLinkNumRetries
    ldr r0, [r1]
    sub r0, #1
    str r0, [r1]
    cmp r0, #0
    bne RequestHandshake
    bl HideConnectionIndicator
    # set failure flag and exit
    # there are probably better ways to do this
    mov r0, #0
    cmp r0, #0
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
RequestWrongVersion:
    ldr r0, =zWrongSaveVersion
    mov r1, #1
    strb r1, [r0]
    ldr r0, =zLinkNumRetries
    strb r1, [r0]
    b RequestError

RequestHandshake_Debug:
    # It's a secret to everybody!
    # get param
    bl JoybusExchange_R
    beq RequestError
    mov r4, r0
    # get action
    bl JoybusExchange_R
    beq RequestError
    bl RequestHandshake_DebugAction
    b RequestHandshake_NoDebug
RequestHandshake_DebugAction:
    push {lr}
    mov r1, #100
    cmp r0, r1
    beq RequestHandshake_DebugAction_SetFlag
    mov r1, #101
    cmp r0, r1
    beq RequestHandshake_DebugAction_ClearFlag
RequestHandshake_DebugAction_SetMap:
    ldr r0, =zWarpTargetData
    str r4, [r0]
    ldr r0, =zPacketStruct+4
    str r4, [r0]
    pop {r0}
    bx r0
RequestHandshake_DebugAction_SetFlag:
    mov r0, r4
    farcall FlagSet
    pop {r0}
    bx r0
RequestHandshake_DebugAction_ClearFlag:
    mov r0, r4
    farcall FlagClear
    pop {r0}
    bx r0
