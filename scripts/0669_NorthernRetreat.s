.align 4

NorthernRetreat_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

NorthernRetreat_MapInitScript:
    end

NorthernRetreat_House3_Script1:
    lock
    faceplayer
    msgbox NorthernRetreat_House3_Script1_Text
    release
    end

NorthernRetreat_House3_Script1_Text:
    .string "Northern Glitchland is one of the most\n"
    .string "developed districts in our region.\p"
    .string "We've got two towns, while all other\n"
    .string "districts have just one.\p"
    .string "Now, I know what you're thinking!\n"
    .string "What about Deliria?\p"
    .string "Well, that does not qualify as a town\n"
    .string "for me, so I guess we're settled.$"

NorthernRetreat_House3_Script2:
    lock
    faceplayer
    msgbox NorthernRetreat_House3_Script2_Text
    release
    end

NorthernRetreat_House3_Script2_Text:
    .string "Many Delirians started to leave\n"
    .string "Glitchland, rightfully accusing the\l"
    .string "local authorities of discrimination.\p"
    .string "No one is really sure how they're\n"
    .string "escaping, considering their town is\l"
    .string "strictly guarded.$"
