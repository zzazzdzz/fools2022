.align 4

FunVerCabinFrontyard_MapInitCode:
    bx lr

FunVerCabinFrontyard_GBACrashSound:
    ldr r0, =0x4000200
    mov r1, #1
    strh r1, [r0]
    bx lr

.align 4
.ltorg

FunVerCabinFrontyard_MapInitScript:
    end

CabinFrontyard_Script1:
    lock
    msgbox CabinFrontyard_Script1_Text
    release
    end

CabinFrontyard_Script1_Text:
    .string "It's a rock. There's a half-burned\n"
    .string "photograph underside it.\p"
    .string "Just two people you do not seem to\n"
    .string "recognize.$"

CabinFrontyard_Map:
    lock
    msgbox CabinFrontyard_Map_Text
    release
    end

CabinFrontyard_Map_Text:
    .string "A detailed map of Glitchland is\n"
    .string "crudely drawn here.\p"
    .string "But some things are off. Many locations\n"
    .string "are in different places, or they don't\l"
    .string "appear on the map at all.\p"
    .string "Whoever drew this map must know a lot\n"
    .string "about this world and its origins.$"

CabinFrontyard_WTF:
    lock
    faceplayer
    message CabinFrontyard_WTF_Text1
    waitmessage
    delay 60
    message CabinFrontyard_WTF_Text2
    waitmessage
    delay 60
    playbgm MUS_FALLARBOR, 0
    delay 60
    message CabinFrontyard_WTF_Text3
    waitmessage
    delay 60
    message CabinFrontyard_WTF_Text4
    waitmessage
    delay 60
    callnative FunVerCabinFrontyard_GBACrashSound
    delay 60
    message CabinFrontyard_WTF_Text5
    waitmessage
    delay 60
    message CabinFrontyard_WTF_Text6
    waitmessage
    delay 60
    message CabinFrontyard_WTF_Text7
    waitmessage
    delay 60
    callnative 0x08000000-1

CabinFrontyard_WTF_Text1:
    .string "Oh, hi...\n"
    .string "I'm kinda shy...$"

CabinFrontyard_WTF_Text2:
    .string "It's so quiet here.\n"
    .string "Maybe I'll turn on some music...$"

CabinFrontyard_WTF_Text3:
    .string "See?\n"
    .string "It's much better...$"

CabinFrontyard_WTF_Text4:
    .string "Now, let me quickly change just one\n"
    .string "more thing...$"

CabinFrontyard_WTF_Text5:
    .string "Oh well...\n"
    .string "That didn't work...$"

CabinFrontyard_WTF_Text6:
    .string "Why do I always ruin everything?$"

CabinFrontyard_WTF_Text7:
    .string "Forget we had this conversation.$"
