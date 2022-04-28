.align 4

NorthernEncampment_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

NorthernEncampment_MapInitScript:
    end

NorthernEncampment_Interior_Script1:
    lock
    faceplayer
    bufferstring STR_VAR_2, NorthernEncampment_Interior_FunValue
    msgbox NorthernEncampment_Interior_Script1_Text
    release
    end

NorthernEncampment_Interior_Script1_Text:
    .string "Hello, young one. You surely give off\n"
    .string "a quite mysterious aura.\p"
    .string "If I were to judge, it has a grade of\n"
    .string "exactly {STR_VAR_2} points.\l"
    .string "That's really impressive...$"

NorthernEncampment_Interior_FunValue:
    .ascii "--FUNVALSTR--"
	.byte 0xff
