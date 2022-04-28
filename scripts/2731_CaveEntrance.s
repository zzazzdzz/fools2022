.align 4

CaveEntrance_MapInitCode:
    bx lr

CaveEntrance_MapInitScript:
    end

CaveEntrance_Script1:
    lock
    faceplayer
    msgbox CaveEntrance_Script1_Text
    release
    end

CaveEntrance_Script1_Text:
    .string "Since Pok{EACUTE} Balls are pretty useless\n"
    .string "without wild Pok{EACUTE}mon, no one really\l"
    .string "keeps any of them around here.\p"
    .string "Because of that, they turned into\n"
    .string "precious collectibles!\p"
    .string "A guy in the Western Camp is an avid\n"
    .string "Pok{EACUTE} Ball collector.\p"
    .string "If you find any Pok{EACUTE} Balls lying\n"
    .string "around, you should make sure to give\l"
    .string "them to him.$"

CaveEntrance_Script2:
    lock
    faceplayer
    msgbox CaveEntrance_Script2_Text
    release
    end

CaveEntrance_Script2_Text:
    .string "The BIKE SHOP here is a total ripoff.\n"
    .string "They sold me a bike that I can't ride.\p"
    .string "They mentioned that if I want to move\n"
    .string "faster, I should use my {LQUOT}bee button{RQUOT}.\p"
    .string "What in the world is that? I'm sure\n"
    .string "there are no bees around here...$"
