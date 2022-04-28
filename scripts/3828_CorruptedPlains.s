.align 4

CorruptedPlains_MapInitCode:
    bx lr

CorruptedPlains_MapInitScript:
    end

CorruptedPlains_Script1:
    lock
    faceplayer
    msgbox CorruptedPlains_Script1_Text
    release
    end

CorruptedPlains_Script1_Text:
    .string "This area looks peaceful, but once\n"
    .string "upon a time, it was a corrupted\l"
    .string "wasteland created by a failed glitch\l"
    .string "research experiment.\p"
    .string "The corruption was removed, but to this\n"
    .string "day, people affected by the glitch\l"
    .string "aura haven't returned to normal.$"

CorruptedPlains_Script2:
    lock
    faceplayer
    msgbox CorruptedPlains_Script2_Text
    release
    end

CorruptedPlains_Script2_Text:
    .string "{PLAY_SE}{SE_USE_ITEM}{WAIT_SE}"
    .string "{PLAY_SE}{SE_PC_LOGIN}{WAIT_SE}"
    .string "{PLAY_SE}{SE_M_HYPER_BEAM2}{WAIT_SE}"
    .string "{PK}ROCKET "
    .string "{PLAY_BGM}{MUS_EVOLUTION}{PAUSE 6}"
    .string "{PLAY_BGM}{MUS_EVOLUTION}{PAUSE 6}"
    .string "{PLAY_BGM}{MUS_EVOLUTION}{PAUSE 6}"
    .string "{PLAY_SE}{SE_ITEMFINDER}{WAIT_SE}"
    .string "{PLAY_SE}{SE_M_NIGHTMARE}{WAIT_SE}"
    .string "{PLAY_SE}{SE_ITEMFINDER}{WAIT_SE}"
    .string "{PLAY_BGM}{MUS_RG_SLOW_PALLET}{PAUSE 6}"
    .string "{PLAY_SE}{SE_M_NIGHTMARE}{WAIT_SE}"
    .string "{PLAY_SE}{SE_USE_ITEM}{WAIT_SE}"
    .string "{PLAY_BGM}{MUS_RG_SLOW_PALLET}{PAUSE 6}"
    .string "{PLAY_SE}{SE_PC_LOGIN}{WAIT_SE}"
    .string "{PLAY_SE}{SE_SAVE}{WAIT_SE}"
    .string "{PLAY_SE}{SE_USE_ITEM}{WAIT_SE}"
    .string "{PLAY_SE}{SE_PC_LOGIN}{WAIT_SE}"
    .string "{PLAY_SE}{SE_M_NIGHTMARE}{WAIT_SE}"
    .string "{PLAY_SE}{SE_PC_LOGIN}{WAIT_SE}"
    .byte 0x00, 0xb6, 0x29, 0x2c, 0x2c, 0x25, 0x00, 0xf6
    .string "1 ERROR.$"

CorruptedPlains_Script3:
    lock
    faceplayer
    msgbox CorruptedPlains_Script3_Text
    release
    end

CorruptedPlains_Script3_Text:
    .string "Even though this place was cleansed\n"
    .string "of corruption, it still gives off a\l"
    .string "very strange vibe.\p"
    .string "As such, all people nearby remain\n"
    .string "vigilant. But that's to be expected.\p"
    .string "After all, stagnant air is often\n"
    .string "foreshadowing that something bad is\l"
    .string "going to happen.$"
