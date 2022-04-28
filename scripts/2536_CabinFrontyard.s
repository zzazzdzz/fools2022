.align 4

CabinFrontyard_MapInitCode:
    bx lr

CabinFrontyard_MapInitScript:
    end

CabinFrontyard_Script1:
    lock
    msgbox CabinFrontyard_Script1_Text
    release
    end

CabinFrontyard_Script1_Text:
    .string "It's a rock. There's a half-burned\n"
    .string "photograph underside it.\p"
    .string "Just two people you do not seem to\n"
    .string "recognize.$"

CabinFrontyard_Map:
    lock
    msgbox CabinFrontyard_Map_Text
    release
    end

CabinFrontyard_Map_Text:
    .string "A detailed map of Glitchland is\n"
    .string "crudely drawn here.\p"
    .string "But some things are off. Many locations\n"
    .string "are in different places, or they don't\l"
    .string "appear on the map at all.\p"
    .string "Whoever drew this map must know a lot\n"
    .string "about this world and its origins.$"