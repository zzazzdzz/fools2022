.align 4

SouthernEncampment_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

SouthernEncampment_MapInitScript:
    end

SouthernEncampment_Script1:
    lock
    faceplayer
    checkflag FLAG_FLUTE_RETURNED
    goto_if TRUE, SouthernEncampment_Script1_PlaySong
    checkflag FLAG_FLUTE_RECEIVED
    goto_if TRUE, SouthernEncampment_Script1_GiveFlute
    msgbox SouthernEncampment_Script1_Text
    release
    end

SouthernEncampment_Script1_GiveFlute:
    msgbox SouthernEncampment_Script1_Text1
    waitmessage
    playfanfare MUS_RG_OBTAIN_KEY_ITEM
    waitfanfare
    setflag FLAG_FLUTE_RETURNED
    call SyncProgressScript
    release
    end

SouthernEncampment_Script1_PlaySong:
    msgbox SouthernEncampment_Script1_Text2
    closemessage
    fadeoutbgm 1
    delay 50
    message SouthernEncampment_Script1_Text3
    waitmessage
    delay 50
    message SouthernEncampment_Script1_Text4
    waitmessage
    delay 50
    message SouthernEncampment_Script1_Text5
    waitmessage
    message SouthernEncampment_Script1_Text6
    waitmessage
    delay 80
    fadeinbgm 1
    msgbox SouthernEncampment_Script1_Text7
    release
    end

SouthernEncampment_Script1_Text:
    .string "No! That's horrible!\n"
    .string "That's a complete disaster!\l"
    .string "I lost my POK{EACUTE} FLUTE!\p"
    .string "I always loved playing it whenever I\n"
    .string "felt down, but now I can't!\p"
    .string "Please, help me find my lost flute and\n"
    .string "return it to me!$"

SouthernEncampment_Script1_Text1:
    .string "Is that...\n"
    .string "Yes, I couldn't mistake it!\p"
    .string "You found my flute! Big thanks for\n"
    .string "all of your hard work!$"

SouthernEncampment_Script1_Text2:
    .string "Now that I have my flute back,\n"
    .string "I can play you a cool song!$"

SouthernEncampment_Script1_Text3:
    .string "{PLAY_SE}{SE_NOTE_D}If {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_D}you're {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_G}hap{WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_G}py {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_G}and {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_G}you {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_G}know {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_G}it,\n{WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_F}syn{WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_G}tax {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_A}error!{WAIT_SE}"
    .string "$"

SouthernEncampment_Script1_Text4:
    .string "{PLAY_SE}{SE_NOTE_D}If {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_D}you're {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_A}hap{WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_A}py {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_A}and {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_A}you {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_A}know {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_A}it,\n{WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_G}syn{WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_A}tax {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_B}error!{WAIT_SE}"
    .string "$"

SouthernEncampment_Script1_Text5:
    .string "{PLAY_SE}{SE_NOTE_B}If {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_B}you're {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_C_HIGH}hap{WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_C_HIGH}py {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_C_HIGH}and {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_C_HIGH}you {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_E}know {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_E}it,\n{WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_C_HIGH}and {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_C_HIGH}you {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_B}rea{WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_B}lly {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_B}want {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_A}to {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_G}show {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_G}it,"
    .string "$"

SouthernEncampment_Script1_Text6:
    .string "{WAIT_SE}{PLAY_SE}{SE_NOTE_B}If {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_B}you're {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_A}hap{WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_A}py {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_A}and {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_G}you {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_F}know {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_F}it,\n{WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_E}syn{WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_F}tax {WAIT_SE}"
    .string "{PLAY_SE}{SE_NOTE_G}error!{WAIT_SE}"
    .string "$"

SouthernEncampment_Script1_Text7:
    .string "How did you like it?\n"
    .string "Be gentle, I'm still practicing!$"