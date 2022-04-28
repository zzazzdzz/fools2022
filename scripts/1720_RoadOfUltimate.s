.align 4

RoadOfUltimate_MapInitCode:
    ldr r0, =CurrentAlteration
    ldrb r0, [r0]
    add r0, r0
    add r0, r0
    ldr r1, =RoadOfUltimate_MapInitCode_Alterations
    add r1, r0
    ldr r1, [r1]
    ldr r0, =RoadOfUltimate_MapConnections+16
    str r1, [r0]
    bx lr

.align 4
RoadOfUltimate_MapInitCode_Alterations:
    .hword 0x1730
    .byte 9, 21+0x80
    .hword 0x1731
    .byte 15, 21+0x80
    .hword 0x1732
    .byte 5, 21+0x80

.align 4
.ltorg

RoadOfUltimate_MapInitScript:
    end

CurrentAlteration:
    .ascii "--TIMING--"
    .byte 0xff

RoadOfUltimate_ItemBall:
    lock
    removeobject 4
    giveitem 4
    setflag FLAG_RECEIVED_BALL3
    call SyncProgressScript
    release
    end

RoadOfUltimate_Script1:
    lock
    faceplayer
    msgbox RoadOfUltimate_Script1_Text
    release
    end

RoadOfUltimate_Script1_Text:
    .string "TRAINED ON THE ROAD\n"
    .string "OF ULTIMATE$"

RoadOfUltimate_Script2:
    lock
    faceplayer
    msgbox RoadOfUltimate_Script2_Text
    release
    end

RoadOfUltimate_Script2_Text:
    .string "I once went to the Altering Cave,\n"
    .string "but there was nothing there.\p"
    .string "However, I returned after some time,\n"
    .string "and the inside looked completely\l"
    .string "different! How is that possible?$"

RoadOfUltimate_Script3:
    lock
    faceplayer
    msgbox RoadOfUltimate_Script3_Text
    release
    end

RoadOfUltimate_Script3_Text:
    .string "You know Lost Woods? I remember\n"
    .string "there was a similar puzzle in an NES\l"
    .string "game of my childhood.\p"
    .string "Maybe the solution from that game\n"
    .string "could work in there too?\p"
    .string "Except replacing west with east,\n"
    .string "since the entrance is to the west.\l"
    .string "Definitely need to try it!$"
