.align 4

Deliria_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

Deliria_MapInitScript:
    end

Deliria_Interior_Script1:
    lock
    faceplayer
    msgbox Deliria_Interior_Script1_Text
    release
    end

Deliria_Interior_Script1_Text:
    .string "{JPN}i like my house\n"
    .string "so spacious !!$"
