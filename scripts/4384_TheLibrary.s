.align 4

TheLibrary_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

TheLibrary_MapInitScript:
    end

TheLibrary_Script1:
    lock
    faceplayer
    msgbox TheLibrary_Script1_Text
    release
    end

TheLibrary_Script1_Text:
    .string "I have a book that is long overdue.\n"
    .string "I think by about 6 years now?\p"
    .string "But here's a great lifehack. As long\n"
    .string "as I never return it, I'll never have\l"
    .string "to pay any fines!\p"
    .string "I feel like an evil mastermind.\n"
    .string "I should join TEAM ROCKET!\p"
    .string "Stealing Pok{EACUTE}mon as well as books?\n"
    .string "Sign me right up!$"

TheLibrary_Script2:
    lock
    faceplayer
    checkflag FLAG_POT_OF_GREED
    goto_if TRUE, TheLibrary_Script2_Done
    msgbox TheLibrary_Script2_Text
    setflag FLAG_POT_OF_GREED
    message TheLibrary_Script2_Text2
    waitmessage
    playfanfare MUS_RG_OBTAIN_KEY_ITEM
    waitfanfare
    call SyncProgressScript
TheLibrary_Script2_Done:
    msgbox TheLibrary_Script2_Text3
    release
    end

TheLibrary_Script2_Text:
    .string "Hey, I found this card lying around\n"
    .string "on this table. I have no use for it,\l"
    .string "so you can have it!$"

TheLibrary_Script2_Text2:
    .string "Obtained the Pot of Greed magic card!$"

TheLibrary_Script2_Text3:
    .string "If I understand correctly, this card\n"
    .string "allows you to draw two additional\l"
    .string "cards from your deck and add them to\l"
    .string "your hand! Such a useful effect!$"

TheLibrary_Script3:
    lock
    faceplayer
    msgbox TheLibrary_Script3_Text
    release
    end

TheLibrary_Script3_Text:
    .string "Sssh! Be quiet!\n"
    .string "This is a library!$"