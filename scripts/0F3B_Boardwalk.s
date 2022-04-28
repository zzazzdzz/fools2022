.align 4

Boardwalk_MapInitCode:
    bx lr

Boardwalk_MapInitScript:
    end

Boardwalk_Script1:
    lock
    faceplayer
    msgbox Boardwalk_Script1_Text
    release
    end

Boardwalk_Script1_Text:
    .string "What's a star?\n"
    .string "Are you a star?\p"
    .string "Well, if you're a star, you're supposed\n"
    .string "to be burning. Are you burning?$"

Boardwalk_Script2:
    lock
    faceplayer
    msgbox Boardwalk_Script2_Text
    release
    end

Boardwalk_Script2_Text:
    .string "I came from a faraway region called\n"
    .string "Glitch Islands to look for new\l"
    .string "species of Pok{EACUTE}mon.\p"
    .string "When I found out there are no wild\n"
    .string "Pok{EACUTE}mon here... well, you can imagine\l"
    .string "the immense disappointment.$"

Boardwalk_Script3:
    lock
    faceplayer
    msgbox Boardwalk_Script3_Text
    release
    end

Boardwalk_Script3_Text:
    .string "I tried my luck in the lottery in\n"
    .string "Glitchland Game Corner.\p"
    .string "I got a triple match.\n"
    .string "Isn't that amazing?$"

Boardwalk_Script4:
    lock
    faceplayer
    msgbox Boardwalk_Script4_Text
    release
    end

Boardwalk_Script4_Text:
    .string "I hate it here. Look at these guys.\n"
    .string "Their de facto speed isn't even synced\l"
    .string "up with the PUs!\p"
    .string "I'm leaving. Just gotta lean backwards\n"
    .string "into this tree for 12 more hours...$"