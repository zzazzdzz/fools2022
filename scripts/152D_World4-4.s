.align 4

World4_4_MapInitCode:
    bx lr

World4_4_MapInitScript:
    end

World44_Script1:
    lock
    faceplayer
    msgbox World44_Script1_Text
    release
    end

World44_Script1_Text:
    .string "This map once used to contain a small\n"
    .string "puzzle, but since our migration to the\l"
    .string "Generation III engine, it stopped\l"
    .string "working.\p"
    .string "We are performing a series of tests to\n"
    .string "discover the root cause of this issue.$"

World44_Script2:
    lock
    faceplayer
    msgbox World44_Script2_Text
    release
    end

World44_Script2_Text:
    .string "I see... So in Generation III, there is\n"
    .string "no direct equivalent for map scripts,\l"
    .string "where code could be run every step.\p"
    .string "And once the map script is gone, the\n"
    .string "puzzle just stops working completely.$"


World44_Script3:
    lock
    faceplayer
    msgbox World44_Script3_Text
    release
    end

World44_Script3_Text:
    .string "Hmmm... maybe, with proper usage of\n"
    .string "trigger tiles and map load events, it\l"
    .string "could be possible to return the puzzle\l"
    .string "back to full functionality.$"

World44_Script4:
    lock
    faceplayer
    msgbox World44_Script4_Text
    release
    end

World44_Script4_Text:
    .string "Our specialized glitchology equipment\n"
    .string "detects lack of appropriate map\l"
    .string "scripts in this area.\p"
    .string "Given the map script did most of the\n"
    .string "heavy lifting here, no wonder that the\l"
    .string "puzzle stopped working!$"

World44_Truck:
    lock
    msgbox World44_Truck_Text
    release
    end

World44_Truck_Text:
    .string "The truck is filled with specialized\n"
    .string "glitchology equipment and scientific,\l"
    .string "GCRI-approved research instruments.$"