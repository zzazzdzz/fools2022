.align 4

NorthernEdge_MapInitCode:
    bx lr

NorthernEdge_MapInitScript:
    end

NorthernEdge_Script1:
    lock
    faceplayer
    checkflag FLAG_NORTHERN_EDGE
    goto_if TRUE, NorthernEdge_Script1_Finished
    msgbox NorthernEdge_Script1_Text
    waitmessage
	closemessage
    delay 60
    playse SE_M_DETECT
    delay 20
	setvar VAR_RESULT, 3
	playse SE_ORB
	callnative DoOrbEffect
    delay 150
    callnative FadeOutOrbEffect
    waitstate
    delay 10
    message NorthernEdge_Script1_Text2
    setflag 0x86b
    setflag FLAG_NORTHERN_EDGE
    playfanfare MUS_SLOTS_JACKPOT
    waitfanfare
    call SyncProgressScript
    release
    end
NorthernEdge_Script1_Finished:
    msgbox NorthernEdge_Script1_Text3
    release
    end

NorthernEdge_Script1_Text:
    .string "Ah, our great land, filled with\n"
    .string "boundless seas and oceans.\p"
    .string "Many seek the power to traverse the\n"
    .string "water, to make seas their domain.\p"
    .string "That monumental power.\n"
    .string "This is what I grant you.$"

NorthernEdge_Script1_Text2:
    .string "The SURF ability was granted!$"
    
NorthernEdge_Script1_Text3:
    .string "Hope I see you another time...$"