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
    checkflag FLAG_DELIRIA_PERMIT
    goto_if TRUE, NorthernEncampment_Interior_Script1_Done
    msgbox NorthernEncampment_Interior_Script1_Text
    setflag FLAG_DELIRIA_PERMIT
    message NorthernEncampment_Interior_Script1_Text_Received
    waitmessage
    playfanfare MUS_RG_OBTAIN_KEY_ITEM
    waitfanfare
    call SyncProgressScript
    release
    end
NorthernEncampment_Interior_Script1_Done:
    msgbox NorthernEncampment_Interior_Script1_Text_Done
    release
    end

NorthernEncampment_Interior_Script1_Text:
    .string "Deliria is the most fun place you\n"
    .string "can find in Glitchland.\p"
    .string "However, you need an special permit\n"
    .string "in order to get there.\p"
    .string "This is preposterous! Disallowing\n"
    .string "anyone from going there is cruel.\p"
    .string "That's why I give out forged permits\n"
    .string "for people who wish to visit Deliria.\p"
    .string "Do you want one? Here's one permit,\n"
    .string "free of charge. Let's liberate Deliria!$"

NorthernEncampment_Interior_Script1_Text_Received:
    .string "You received a forged Deliria permit\n"
    .string "from the mysterious man.$"

NorthernEncampment_Interior_Script1_Text_Done:
    .string "Go forth and explore Deliria as much\n"
    .string "as you want!$"
