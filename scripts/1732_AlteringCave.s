.align 4

AlteringCave_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

AlteringCave_MapInitScript:
    end

AlteringCave_Fossil:
    lock
    setflag FLAG_ALTERING_CAVE_DOME
    message AlteringCave_Fossil_Text
    waitmessage
    playfanfare MUS_RG_OBTAIN_KEY_ITEM
    waitfanfare
    call SyncProgressScript
    removeobject 1
    release
    end

AlteringCave_Fossil_Text:
    .string "You found the DOME FOSSIL!\n"
    .string "Filthy Dome worshipper.$"

AlteringCave_Script1:
    lock
    braillemessage AlteringCave_Script1_Braille
	waitbuttonpress
	closebraillemessage
    releaseall
    end

AlteringCave_Script1_Braille:
    .byte 13, 37, 69, 4, 2, 0
    .braille "STER$"
