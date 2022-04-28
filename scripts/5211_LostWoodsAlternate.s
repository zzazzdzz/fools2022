.align 4

LostWoodsAlternate_MapInitCode:
    # shift paths taken
    ldr r1, =zLostWoods
    ldrb r0, [r1, #0x02]
    strb r0, [r1, #0x03]
    ldrb r0, [r1, #0x01]
    strb r0, [r1, #0x02]
    ldrb r0, [r1, #0x00]
    strb r0, [r1, #0x01]
    mov r0, #0
    strb r0, [r1, #0x00]
    # test paths taken
    # edge
    ldr r1, =zLostWoods
    ldr r0, [r1]
    ldr r1, =0x01010200
    cmp r0, r1
    bne LostWoods_MapInitCode_Skip1
    # eastern edge on northern connection
    ldr r0, =LostWoodsAlternate_MapConnections+8
    ldr r1, =0x86873c36
    str r1, [r0, #0x00]
    str r1, [r0, #0x04]
LostWoods_MapInitCode_Skip1:
    # sub A
    ldr r1, =zLostWoods
    ldr r0, [r1]
    ldr r1, =0x02030100
    cmp r0, r1
    bne LostWoods_MapInitCode_Skip2
    # sub A on eastern connection
    ldr r0, =LostWoodsAlternate_MapConnections+24
    ldr r1, =0x8c083b30
    str r1, [r0, #0x00]
    str r1, [r0, #0x04]
LostWoods_MapInitCode_Skip2:
    # sub B
    ldr r1, =zLostWoods
    ldr r0, [r1]
    ldr r1, =0x02010300
    cmp r0, r1
    bne LostWoods_MapInitCode_Skip3
    # sub B on eastern connection
    ldr r0, =LostWoodsAlternate_MapConnections+24
    ldr r1, =0x8c083b31
    str r1, [r0, #0x00]
    str r1, [r0, #0x04]
LostWoods_MapInitCode_Skip3:
    # sub C
    ldr r1, =zLostWoods
    ldr r0, [r1]
    ldr r1, =0x01020300
    cmp r0, r1
    bne LostWoods_MapInitCode_Skip4
    # sub C on southern connection
    ldr r0, =LostWoodsAlternate_MapConnections+16
    ldr r1, =0x8c083b32
    str r1, [r0, #0x00]
    str r1, [r0, #0x04]
LostWoods_MapInitCode_Skip4:
    bx lr

LostWoods_Write1:
    ldr r0, =zLostWoods
    mov r1, #1
    strb r1, [r0]
    bx lr

LostWoods_Write2:
    ldr r0, =zLostWoods
    mov r1, #2
    strb r1, [r0]
    bx lr

LostWoods_Write3:
    ldr r0, =zLostWoods
    mov r1, #3
    strb r1, [r0]
    bx lr

.align 4
.ltorg

LostWoodsAlternate_MapInitScript:
    end

LostWoods_Script1:
    lock
    faceplayer
    msgbox LostWoods_Script1_Text
    release
    end

LostWoods_Script1_Text:
    .string "Remember - if you get lost,\n"
    .string "going west is a sure way out!\p"
    .string "I also heard some people around the\n"
    .string "region can help you navigate this\l"
    .string "natural maze.\p"
    .string "A girl from the nearest camp should\n"
    .string "know how to reach Eastern Edge, but\l"
    .string "I'm not sure about the rest...$"

LostWoods_GoingEast:
    callnative LostWoods_Write1
    end

LostWoods_GoingNorth:
    callnative LostWoods_Write2
    end

LostWoods_GoingSouth:
    callnative LostWoods_Write3
    end

LostWoods_Script2:
    lock
    msgbox LostWoods_Script2_Text
    release
    end

LostWoods_Script2_Text:
    .string "LOST WOODS\n"
    .string "Be careful not to get lost!$"