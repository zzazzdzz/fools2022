# commutil.s
# Utility functions, but for communication

PopulatePacketRandValue:
    # Add a random value to packet header, just to make stuff a little bit
    # harder to see when MITMing communication.
    # ---
    # set pointer
    ldr r2, =zPacketStruct
    # get random byte
    ldr r0, =gRngValue
    ldrb r0, [r0]
    # shift to right place
    lsl r0, #8
    # add it in
    ldr r1, [r2]
    add r1, r0
    str r1, [r2]
    bx lr

PopulatePacketChecksum:
    # Calculate and insert the correct checksum into packet data.
    # ---
    # set pointer
    ldr r2, =zPacketStruct
    # how many words to checksum?
    ldr r0, =zLinkPacketTxLen
    ldr r3, [r0]
    # set initial value
    ldr r0, =0xf0dbeb15
PopulatePacketChecksum_EachWord:
    # rotate
    mov r1, #5
    ror r0, r1
    # load and xor in
    ldr r1, [r2]
    eor r0, r1
    # add shift
    add r1, r1
    add r0, r1
    # go next
    add r2, #4
    sub r3, #1
    bne PopulatePacketChecksum_EachWord
PopulatePacketChecksum_Finish:
    ldr r1, =zPacketStruct
    # get first 16 bits (command ID and random value)
    ldrh r2, [r1]
    # shift checksum to high order bits
    lsl r0, #16
    # combine it and store it
    add r0, r2
    str r0, [r1]
    bx lr

CreateInventoryBasedOnFlags:
    # Recreate player inventory based on game completion flags.
    # In fact, all scripts act based on completion flags; items are purely
    # decorational.
    push {r5, r7, lr}
    farcall ClearBag
    ldr r5, =FlagItemAssoc
CreateInventoryBasedOnFlags_SingleCheck:
    ldrh r0, [r5]
    farcall FlagGet
    cmp r0, #0
    beq CreateInventoryBasedOnFlags_GoNext
    ldrh r0, [r5, #0x04]
    cmp r0, #0
    bne CreateInventoryBasedOnFlags_RemoveItem
CreateInventoryBasedOnFlags_AddItem:
    ldrh r0, [r5, #0x02]
    mov r1, #1
    farcall AddBagItem
    b CreateInventoryBasedOnFlags_GoNext
CreateInventoryBasedOnFlags_RemoveItem:
    ldrh r0, [r5, #0x02]
    mov r1, #1
    farcall RemoveBagItem
CreateInventoryBasedOnFlags_GoNext:
    add r5, #6
    ldrb r0, [r5]
    cmp r0, #0xff
    bne CreateInventoryBasedOnFlags_SingleCheck
    pop {r5, r7}
    pop {r0}
    bx r0
FlagItemAssoc:
    .hword FLAG_UNDERGROUND_CAVE_HELIX, 357, ASSOC_ADD
    .hword FLAG_RECEIVED_BALL1, 4, ASSOC_ADD
    .hword FLAG_RECEIVED_BALL2, 4, ASSOC_ADD
    .hword FLAG_RECEIVED_BALL3, 4, ASSOC_ADD
    .hword FLAG_RECEIVED_BALL4, 4, ASSOC_ADD
    .hword FLAG_RECEIVED_BALL5, 4, ASSOC_ADD
    .hword FLAG_RECEIVED_BALL6, 4, ASSOC_ADD
    .hword FLAG_RECEIVED_BALL7, 4, ASSOC_ADD
    .hword FLAG_RECEIVED_BALL8, 4, ASSOC_ADD
    .hword FLAG_RECEIVED_BALL9, 4, ASSOC_ADD
    .hword FLAG_GIVEN_BALL1, 4, ASSOC_RM
    .hword FLAG_GIVEN_BALL2, 4, ASSOC_RM
    .hword FLAG_GIVEN_BALL3, 4, ASSOC_RM
    .hword FLAG_GIVEN_BALL4, 4, ASSOC_RM
    .hword FLAG_GIVEN_BALL5, 4, ASSOC_RM
    .hword FLAG_GIVEN_BALL6, 4, ASSOC_RM
    .hword FLAG_GIVEN_BALL7, 4, ASSOC_RM
    .hword FLAG_GIVEN_BALL8, 4, ASSOC_RM
    .hword FLAG_GIVEN_BALL9, 4, ASSOC_RM
    .hword FLAG_RECEIVED_VOUCHER, 352, ASSOC_ADD
    .hword FLAG_ALTERING_CAVE_DOME, 358, ASSOC_ADD
    .hword FLAG_GOT_COIN_CASE, 260, ASSOC_ADD
    .hword FLAG_TINY_CAVERN_AMBER, 354, ASSOC_ADD
    .hword FLAG_RECEIVED_BIKE, 360, ASSOC_ADD
    .hword FLAG_RECEIVED_BIKE, 352, ASSOC_RM
    .hword FLAG_MANSION_GOT_SCALE, 111, ASSOC_ADD
    .hword FLAG_TOOK_FOSSILS, 357, ASSOC_RM
    .hword FLAG_TOOK_FOSSILS, 358, ASSOC_RM
    .hword FLAG_TOOK_FOSSILS, 354, ASSOC_RM
    .hword FLAG_DUNSPARCE_SURVEY, 110, ASSOC_ADD
    .hword FLAG_FLUTE_RECEIVED, 350, ASSOC_ADD
    .hword FLAG_FLUTE_RECEIVED, 110, ASSOC_RM
    .hword FLAG_FLUTE_RETURNED, 350, ASSOC_RM
    .hword FLAG_HEART_SCALE_RETURNED, 111, ASSOC_RM
    .byte 0xff, 0

SyncProgressToServer:
    # Send event flag data to the server.
    push {lr}
    # first reconstruct the inventory
    bl CreateInventoryBasedOnFlags
    # set packet length
    ldr r1, =zLinkPacketTxLen
    mov r0, #9
    str r0, [r1]
    # set packet struct address
    ldr r1, =zLinkPacketTx
    ldr r0, =zPacketStruct
    str r0, [r1]
    # prepare packet type
    mov r1, #COMMAND_ID_SAVESTATE
    str r1, [r0]
    # copy flags 0x400 to 0x4FF to packet data
    add r2, r0, #4
    ldr r1, =gSaveBlock1Ptr
    ldr r1, [r1]
    ldr r0, =0x1270 + (0x400 / 8)
    add r1, r0
    mov r3, #32
    bl CopyData
    # checksum the packet and fill random value
    bl PopulatePacketRandValue
    bl PopulatePacketChecksum
    # receive only 4 bytes
    ldr r1, =zLinkPacketRxLen
    mov r0, #4
    str r0, [r1]
    # to zLinkSuccess
    ldr r1, =zLinkPacketRx
    ldr r0, =zLinkSuccess
    str r0, [r1]
    # request data
    bl Request
    beq SyncProgressToServerFailed
SyncProgressToServerSucceeded:
    # tell scripts about success
    ldr r1, =gSpecialVar_Result
    mov r0, #0
    str r0, [r1]
    pop {r0}
    bx r0
SyncProgressToServerFailed:
    # tell scripts about failure
    # DRY NotLikeThis
    ldr r1, =gSpecialVar_Result
    mov r0, #1
    str r0, [r1]
    pop {r0}
    bx r0
    
GenericRequestToServer:
    # Make a generic request to the server with pre-prepared packet data.
    push {lr}
    # assume the packet was prepared
    # checksum the packet and fill random value
    bl PopulatePacketRandValue
    bl PopulatePacketChecksum
    # request data
    bl Request
    beq GenericRequestToServerFailed
GenericRequestToServerSucceeded:
    # tell scripts about success
    ldr r1, =gSpecialVar_Result
    mov r0, #0
    str r0, [r1]
    pop {r0}
    bx r0
GenericRequestToServerFailed:
    # tell scripts about failure
    # DRY NotLikeThis
    ldr r1, =gSpecialVar_Result
    mov r0, #1
    str r0, [r1]
    pop {r0}
    bx r0
