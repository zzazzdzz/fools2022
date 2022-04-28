.align 4

FunVerEasternEncampment_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

FunVerEasternEncampment_MapInitScript:
    end

EasternEncampment_Script1:
    lock
    faceplayer
    msgbox EasternEncampment_Script1_Text
    release
    end

EasternEncampment_Script1_Text:
    .string "We?\n"
    .string "We're just a humble game studio.\p"
    .string "We're working on many things, but it's\n"
    .string "our day off today.\p"
    .string "It's because TheZZAZZGlitch has just\n"
    .string "released his April Fools event.\p"
    .string "Quickly! We need to disassemble it and\n"
    .string "look at the code!$"

EasternEncampment_Script2:
    lock
    faceplayer
    msgbox EasternEncampment_Script2_Text
    release
    end

EasternEncampment_Script2_Text:
    .string "Holy crap, the code behind this event\n"
    .string "is so stupid!\p"
    .string "And it's handwritten assembly on a\n"
    .string "system where C programming is a thing?\p"
    .string "Why would you do that?\n"
    .string "Not only that, it's bad assembly!\p"
    .string "Like, {LQUOT}add r0, r0{RQUOT} twice to multiply\l"
    .string "by 4? Bro, it's not Z80! Use LSL!\p"
    .string "Two instructions to load and increment?\n"
    .string "Addressing modes are a thing, ya know?\p"
    .string "Wait, is that {LQUOT}ldr r0, =0{RQUOT}?\n"
    .string "Arrrgghhhh!$"

EasternEncampment_Script3:
    lock
    msgbox EasternEncampment_Script3_Text
    release
    end

EasternEncampment_Script3_Text:
    .string "It's the game program. Messing with\n"
    .string "it could bug out the game!\p"
    .string "Ah, wait. The game's already buggy as\n"
    .string "hell...$"

EasternEncampment_Script4:
    lock
    msgbox EasternEncampment_Script4_Text
    release
    end

EasternEncampment_Script4_Text:
    .string "It's a workstation with a Maxtor\n"
    .string "7200 RPM hard drive attached.\p"
    .string "... ... ... ... ...\n"
    .string "... ... ... ... ...\p"
    .string "Wait, this isn't a Maxtor.\n"
    .string "This is a Quantum Bigfoot!$"

EasternEncampment_Script5:
    lock
    msgbox EasternEncampment_Script5_Text
    release
    end

EasternEncampment_Script5_Text:
    .string "A conversation thread is displayed on\n"
    .string "the monitor.\p"
    .string "Several users argued about something,\n"
    .string "but then... it just kind of stopped.\l"
    .string "Last post written back in 2019.\p"
    .string "Everything comes to an end sooner or\n"
    .string "later. It's inevitable.\p"
    .string "At least make sure it's a good ending,\n"
    .string "because this one is not.\p"
    .string "What the hell is Fidei?\n"
    .string "It's where dreams have died.$"

EasternEncampment_Script6:
    lock
    msgbox EasternEncampment_Script6_Text
    release
    end

EasternEncampment_Script6_Text:
    .string "The screen is filled with assembly\n"
    .string "instructions that you don't understand.$"
