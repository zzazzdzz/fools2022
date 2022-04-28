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

AlteringCave_Script1:
    lock
    faceplayer
    msgbox AlteringCave_Script1_Text
    release
    end

AlteringCave_Script1_Text:
    .string "I'm looking for rare Pok{EACUTE}mon\n"
    .string "fossils in this cave, but I just can't\l"
    .string "find anything here.\p"
    .string "There must be something in this cave,\n"
    .string "I'm sure of it!$"

AlteringCave_Script2:
    lock
    braillemessage AlteringCave_Script2_Braille
	waitbuttonpress
	closebraillemessage
    releaseall
    end

AlteringCave_Script2_Braille:
    .byte 13, 37, 69, 4, 2, 0
    .braille "LESS$"
