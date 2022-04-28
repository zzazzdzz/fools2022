.align 4

Deliria_MapInitCode:
    ldr r1, =Deliria_MusicHook
    ldr r2, =0x3007900
    mov r3, #32
Deliria_MapInitCode_CopyStub:
    ldrb r0, [r1]
    strb r0, [r2]
    add r1, #1
    add r2, #1
    sub r3, #1
    bne Deliria_MapInitCode_CopyStub
    # b 0x3007900
    ldr r0, =0xea00146a
    ldr r1, =IntrMain_Buffer
    str r0, [r1]
    bx lr
    
Deliria_MusicHook:
    .byte 0x03, 0x34, 0xa0, 0xe3
    .byte 0x05, 0x3b, 0x83, 0xe2
    .byte 0x22, 0x00, 0xa0, 0xe3
    .byte 0xde, 0x00, 0xc3, 0xe5
    .byte 0x01, 0x3c, 0x43, 0xe2
    .byte 0x9e, 0x00, 0xc3, 0xe5
    .byte 0x01, 0x33, 0xa0, 0xe3
    .byte 0x8c, 0xeb, 0xff, 0xea

Deliria_MapInitScript:
    end

Deliria_Script1:
    lock
    faceplayer
    msgbox Deliria_Script1_Text
    release
    end

Deliria_Script1_Text:
    .string "{JPN}heyaaa !!\n"
    .string "welcom to...\p"
    .string "BEST TOWN\n"
    .string "DELIRIA !!!$"

Deliria_Script2:
    lock
    faceplayer
    msgbox Deliria_Script2_Text
    release
    end

Deliria_Script2_Text:
    .string "{JPN}i like Deliria\n"
    .string "so nice people..\l"
    .string "it is very good !\p"
    .string "who are you ??\n"
    .string "u visiting ???$"

Deliria_Script3:
    lock
    faceplayer
    msgbox Deliria_Script3_Text
    release
    end

Deliria_Script3_Text:
    .string "{JPN}look\n"
    .string "i build a house !\p"
    .string "oh nos\n"
    .string "i forget the door ..$"

Deliria_Script4:
    lock
    faceplayer
    msgbox Deliria_Script4_Text
    release
    end

Deliria_Script4_Text:
    .string "{JPN}heyooo\n"
    .string "i build a roof !\p"
    .string "oh noos..\n"
    .string "i forget the house$"

Deliria_Script5:
    lock
    faceplayer
    msgbox Deliria_Script5_Text
    release
    end

Deliria_Script5_Text:
    .string "{JPN}heyaa\n"
    .string "remmber me ?\p"
    .string "told u i come back !!\n"
    .string "VERY !!$"

Deliria_Script6:
    lock
    faceplayer
    msgbox Deliria_Script6_Text
    release
    end

Deliria_Script6_Text:
    .string "{JPN}heyoooaa!\n"
    .string "i is a bird\p"
    .string "i will eat you !!\n"
    .string "uwawawawa$"
