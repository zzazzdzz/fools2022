.align 4

Underground_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

Underground_MapInitScript:
    end

Underground_Fossil:
    lock
    setflag FLAG_UNDERGROUND_CAVE_HELIX
    message Underground_Fossil_Text
    waitmessage
    playfanfare MUS_RG_OBTAIN_KEY_ITEM
    waitfanfare
    call SyncProgressScript
    removeobject 1
    release
    end

Underground_Fossil_Text:
    .string "All praise the Helix.$"