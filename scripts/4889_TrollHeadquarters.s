.align 4

TrollHeadquarters_MapInitCode:
    bx lr

TrollHeadquarters_MapInitScript:
    end

TrollHeadquarters_Script1:
    lock
    faceplayer
    msgbox TrollHeadquarters_Script1_Text
    release
    end

TrollHeadquarters_Script1_Text:
    .string "Our predecessors really thought that\n"
    .string "demonetization of YouTube videos is\l"
    .string "a viable strategy for world dominance?\p"
    .string "That idea was stupid. Thankfully, we\n"
    .string "got a far better one!$"

TrollHeadquarters_Script2:
    lock
    faceplayer
    msgbox TrollHeadquarters_Script2_Text
    release
    end

TrollHeadquarters_Script2_Text:
    .string "This building previously belonged\n"
    .string "to TEAM ROCKET, but we took over!\p"
    .string "We're still unsure how we're going\n"
    .string "to use it, but it's a great start.$"

TrollHeadquarters_Script3:
    lock
    faceplayer
    checkflag FLAG_GNU_INTERJECTION
    goto_if TRUE, TrollHeadquarters_Script3_Post
    msgbox TrollHeadquarters_PC2_Text9
    release
    end
TrollHeadquarters_Script3_Post:
    msgbox TrollHeadquarters_PC2_Text8
    release
    end

TrollHeadquarters_Script4:
    lock
    faceplayer
    checkflag FLAG_GNU_INTERJECTION
    goto_if TRUE, TrollHeadquarters_Script4_Post
    msgbox TrollHeadquarters_PC2_Text9
    release
    end
TrollHeadquarters_Script4_Post:
    msgbox TrollHeadquarters_PC2_Text7
    release
    end

TrollHeadquarters_Script5:
    lock
    faceplayer
    msgbox TrollHeadquarters_Script5_Text
    release
    end

TrollHeadquarters_Script5_Text:
    .string "Hey, what's a kid doing here?\p"
    .string "Oh no! You used the magic card known\n"
    .string "as Pot of Greed, which allowed you\l"
    .string "to draw two additional cards?\p"
    .string "We've been uncovered! We're all\n"
    .string "doomed!\p"
    .string "Quickly, let's just pretend that we're\n"
    .string "all placeholder sprites!\p"
    .string "Er-hem...\n"
    .string "Object event!$"

TrollHeadquarters_PC1:
    lock
    msgbox TrollHeadquarters_PC1_Text
    release
    end

TrollHeadquarters_PC1_Text:
    .string "It's a PC. A memory card reader is\n"
    .string "attached to it...\p"
    .string "You activate Pot of Greed, a magic\n"
    .string "card that allows you to draw two more\l"
    .string "cards from your deck!\p"
    .string "Conveniently, you drew a MicroSD card.\n"
    .string "You insert it, but nothing happens.$"

TrollHeadquarters_PC2:
    lock
    checkflag FLAG_GNU_INTERJECTION
    goto_if TRUE, TrollHeadquarters_PC2_JustLinux
    msgbox TrollHeadquarters_PC2_Text
    closemessage
    delay 20
	playbgm MUS_ENCOUNTER_MAGMA, FALSE
	playse SE_PIN
    applymovement 3, TrollHeadquarters_PC2_M1
    delay 60
    msgbox TrollHeadquarters_PC2_Text1
    closemessage
    delay 20
	playse SE_PIN
    applymovement 4, TrollHeadquarters_PC2_M2
    waitmovement 4
    delay 60
    applymovement 4, TrollHeadquarters_PC2_M2_2
    waitmovement 4
    delay 10
    msgbox TrollHeadquarters_PC2_Text2
    closemessage
    delay 20
    applymovement 3, TrollHeadquarters_PC2_M3
    delay 20
    msgbox TrollHeadquarters_PC2_Text3
    closemessage
    delay 20
    applymovement 4, TrollHeadquarters_PC2_M4
    waitmovement 4
    applymovement 0xff, TrollHeadquarters_PC2_M5
    delay 10
    msgbox TrollHeadquarters_PC2_Text4, MSGBOX_YESNO
    compare VAR_RESULT, YES
    goto_if_eq TrollHeadquarters_PC2_Yes
TrollHeadquarters_PC2_No:
    msgbox TrollHeadquarters_PC2_Text6
    goto TrollHeadquarters_PC2_Common
TrollHeadquarters_PC2_Yes:
    msgbox TrollHeadquarters_PC2_Text5
TrollHeadquarters_PC2_Common:
    closemessage
    applymovement 4, TrollHeadquarters_PC2_M6
    waitmovement 4
    delay 10
    setflag FLAG_GNU_INTERJECTION
    fadedefaultbgm
    call SyncProgressScript
    release
    end
TrollHeadquarters_PC2_JustLinux:
    msgbox TrollHeadquarters_PC2_Text
    release
    end

TrollHeadquarters_PC2_M1:
    face_down
    emote_exclamation_mark
    step_end
TrollHeadquarters_PC2_M2:
    emote_exclamation_mark
    step_end
TrollHeadquarters_PC2_M2_2:
    walk_fast_right
    walk_fast_right
    walk_fast_up
    walk_in_place_fast_up
    walk_in_place_fast_up
    step_end
TrollHeadquarters_PC2_M3:
    walk_in_place_fast_down
    walk_in_place_fast_down
    walk_in_place_fast_down
    step_end
TrollHeadquarters_PC2_M4:
    face_right
    step_end
TrollHeadquarters_PC2_M5:
    face_left
    step_end
TrollHeadquarters_PC2_M6:
    walk_fast_down
    walk_fast_left
    walk_fast_left
    face_right
    step_end

TrollHeadquarters_PC2_Text:
    .string "It's a PC. It looks like it's running\n"
    .string "some flavor of Linux.$"

TrollHeadquarters_PC2_Text1:
    .string "Hey, I'd just like to interject for\n"
    .string "a moment!\p"
    .string "What you're referring to as Linux, is,\n"
    .string "in fact, GNU/Linux, or as I've recently\l"
    .string "taken to calling it, GNU plus Linux.$"

TrollHeadquarters_PC2_Text2:
    .string "Please stop! You cannot just call every\n"
    .string "Linux system {LQUOT}GNU plus Linux{RQUOT}.\p"
    .string "I'm using Alpine, a distro that doesn't\n"
    .string "include GNU coreutils.\p"
    .string "In fact, it does not include any GNU\n"
    .string "code at all!$"

TrollHeadquarters_PC2_Text3:
    .string "Hah, you fool. Your kernel was likely\n"
    .string "compiled with GCC, so it's still GNU.\l"
    .string "Linux without GNU is impossible!$"

TrollHeadquarters_PC2_Text4:
    .string "Hey, you! You know that I'm right.\n"
    .string "Tell him I'm right!\l"
    .string "Linux does not have to be GNU!$"

TrollHeadquarters_PC2_Text5:
    .string "Yes, exactly! Many parts of Windows\n"
    .string "were probably compiled with GCC too!\l"
    .string "Should we call it GNU plus Windows?\p"
    .string "And still, work is ongoing to make the\n"
    .string "Linux kernel compiler agnostic.\p"
    .string "Even if you were right, it wouldn't be\n"
    .string "for long!$"

TrollHeadquarters_PC2_Text6:
    .string "No? Please!\n"
    .string "How is he right?\p"
    .string "Many parts of Windows were probably\n"
    .string "compiled with GCC as well. Should we\l"
    .string "start calling it GNU plus Windows?\p"
    .string "And even then, work is ongoing to make\n"
    .string "the Linux kernel compiler agnostic.\p"
    .string "Even if you're right, it certainly\n"
    .string "won't be for long!$"

TrollHeadquarters_PC2_Text7:
    .string "Linux is just the kernel. I get it.\n"
    .string "But calling every distro {LQUOT}GNU/Linux{RQUOT}...\l"
    .string "How does that make any sense?$"

TrollHeadquarters_PC2_Text8:
    .string "Hmm, he's using Alpine? Amateur.\n"
    .string "BTW, I use Arch.$"

TrollHeadquarters_PC2_Text9:
    .string "Object event.$"

TrollHeadquarters_Plans:
    lock
    msgbox TrollHeadquarters_Plans_Text
    release
    end

TrollHeadquarters_Plans_Text:
    .string "Detailed plans of an operation titled\n"
    .string "{RQUOT}Tracking ads on the Internet{LQUOT}.\p"
    .string "{RQUOT}First, we convince big companies\n"
    .string "that user tracking is the best way to\l"
    .string "implement targeted advertising.\l"
    .string "And then, we conquer the world!{RQUOT}$"