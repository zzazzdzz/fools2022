.align 4

YeetGroundsII_MapInitCode:
    bx lr

YeetGroundsII_MapInitScript:
    end

YeetGrounds_TheCode:
    compare VAR_TEMP_4, 1
    goto_if_eq Route110_TrickHousePuzzle_EventScript_ReadScrollAgain
	setvar VAR_TEMP_4, 1
	goto Route110_TrickHousePuzzle_EventScript_FoundScroll

YeetGrounds_TheDoor:
    compare VAR_TEMP_4, 2
    goto_if_eq YeetGrounds_TheDoor_End
    compare VAR_TEMP_4, 0
    goto_if_eq Route110_TrickHousePuzzle_EventScript_DoorLocked
    msgbox YeetGrounds_TheDoor_Text
	playse SE_PIN
	setvar VAR_TEMP_4, 2
    setmetatile 11, 5, 0x20b, FALSE
    setmetatile 11, 4, 0x203, FALSE
	callnative DrawWholeMapView
    releaseall
YeetGrounds_TheDoor_End:
    end

YeetGrounds_TheDoor_Text:
    .string "You write down the secret code on\n"
    .string "the door...\p"
    .string "The lock clicked open!$"

YeetGroundsII_Script1:
    lock
    faceplayer
    msgbox YeetGroundsII_Script1_Text
    release
    end

YeetGroundsII_Script1_Text:
    .string "Well, well, well. Looks like we\n"
    .string "overdid on polishing our floors.\l"
    .string "I deeply hope you like ice puzzles.\p"
    .string "Because that's exactly what you're\n"
    .string "going to get today!\p"
    .string "You cannot have a Pok{EACUTE}mon adventure\n"
    .string "without at least one ice puzzle.$"
