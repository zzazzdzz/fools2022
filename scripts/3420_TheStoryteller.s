.align 4

TheStoryteller_MapInitCode:
    bx lr

TheStoryteller_MapInitScript:
    end

TheStoryteller_Script1:
    lock
    faceplayer
    msgbox TheStoryteller_Script1_Text
    checkflag FLAG_GOT_COIN_CASE
    goto_if FALSE, TheStoryteller_Script1_GiveCase
    release
    end

TheStoryteller_Script1_GiveCase:
    setflag FLAG_GOT_COIN_CASE
    message TheStoryteller_Script1_Text2
    waitmessage
    playfanfare MUS_RG_OBTAIN_KEY_ITEM
    waitfanfare
    call SyncProgressScript
    release
    end

TheStoryteller_Script1_Text:
    .string "Damn. As always with gambling,\n"
    .string "the house always wins...\p"
    .string "I gambled all my COINS away in the\n"
    .string "Glitchland Game Corner!\p"
    .string "I have no use for my COIN CASE\n"
    .string "anymore, so I guess you can have it.$"

TheStoryteller_Script1_Text2:
    .string "You obtained the COIN CASE.\n"
    .string "Game Corner slots are playable now!$"

TheStoryteller_Script2:
    lock
    faceplayer
    msgbox TheStoryteller_Script2_Text
    release
    end

TheStoryteller_Script2_Text:
    .string "Interesting. Our map analysis\n"
    .string "techniques indicate that a lot of\l"
    .string "unused content was once present in\l"
    .string "this area.\p"
    .string "I wonder if any of that incomplete\n"
    .string "content is still accessible?$"
