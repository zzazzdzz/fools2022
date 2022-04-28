.align 4

NorthernEncampment_MapInitCode:
    push {lr}
    ldr r2, =SetCoins+1
    mov r0, #200
    bl NorthernEncampment_BXR2
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    pop {r2}
NorthernEncampment_BXR2:
    bx r2

.align 4
.ltorg

NorthernEncampment_MapInitScript:
    end

NorthernEncampment_Interior_Script1:
    lock
    faceplayer
    msgbox NorthernEncampment_Interior_Script1_Text
    release
    end

NorthernEncampment_Interior_Script1_Text:
    .string "It might not look like it, but we're\n"
    .string "all professional gamblers.\p"
    .string "Did you know? Some machines in the\n"
    .string "Glitchland Game Corner have better\l"
    .string "odds than others.\p"
    .string "I heard one of the machines in the\n"
    .string "bottom right is especially rigged.$"

NorthernEncampment_Interior_Script2:
    lock
    faceplayer
    msgbox NorthernEncampment_Interior_Script2_Text
    release
    end

NorthernEncampment_Interior_Script2_Text:
    .string "You want to participate in all YEETs\n"
    .string "in Glitchland Game Corner?\p"
    .string "They are chosen randomly, but there\n"
    .string "is still some pattern to it.\p"
    .string "If you participate 10 times in a row,\n"
    .string "you'll see every YEET at least once!$"

NorthernEncampment_Interior_Script3:
    lock
    faceplayer
    msgbox NorthernEncampment_Interior_Script3_Text
    release
    end

NorthernEncampment_Interior_Script3_Text:
    .string "Hah, I think I finally found a way\n"
    .string "to game the system!\p"
    .string "You see, longer usernames with a lot\n"
    .string "of distinct characters have better\l"
    .string "odds at the Glitchland Lottery.\p"
    .string "So I changed my name. From now on, my\n"
    .string "name is Abcdefghijklmno.\p"
    .string "It's not even pronounceable, but it's\n"
    .string "very well worth it!$"

