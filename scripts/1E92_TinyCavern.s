.align 4

TinyCavern_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

TinyCavern_MapInitScript:
    end

TinyCavern_Script2:
    lock
    faceplayer
    checkflag FLAG_TINY_CAVERN_AMBER
    goto_if TRUE, TinyCavern_Script2_Done
    msgbox TinyCavern_Script2_Text
    setflag FLAG_ALTERING_CAVE_DOME
    message TinyCavern_Fossil_Text
    waitmessage
    playfanfare MUS_RG_OBTAIN_KEY_ITEM
    waitfanfare
    setflag FLAG_TINY_CAVERN_AMBER
    call SyncProgressScript
    release
    end
TinyCavern_Script2_Done:
    msgbox TinyCavern_Script2_Text2
    release
    end

TinyCavern_Script2_Text:
    .string "Hi! I found this strange fossil\n"
    .string "deep inside this cave.\p"
    .string "However, fossils are really not in\n"
    .string "my area of expertise.\p"
    .string "Perhaps you'll find someone more suited\n"
    .string "for the job. Take this fossil from me!$"

TinyCavern_Script2_Text2:
    .string "I'm sure the fossil I found will be\n"
    .string "of huge value to some researcher!$"

TinyCavern_Fossil_Text:
    .string "You obtained the OLD AMBER!$"

TinyCavern_Script1:
    lock
    braillemessage TinyCavern_Script1_Braille
	waitbuttonpress
	closebraillemessage
    releaseall
    end

TinyCavern_Script1_Braille:
    .byte 13, 37, 69, 4, 2, 0
    .braille "DISA$"

TinyCavern_Script1_Text:
    .string "redacted$"