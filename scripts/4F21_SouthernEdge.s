.align 4

SouthernEdge_MapInitCode:
    bx lr

SouthernEdge_MapInitScript:
    end

SouthernEdge_Script1:
    lock
    faceplayer
    checkflag FLAG_SOUTHERN_EDGE
    goto_if TRUE, SouthernEdge_Script1_Finished
    msgbox SouthernEdge_Script1_Text
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
    message SouthernEdge_Script1_Text2
    setflag 0x867
    setflag FLAG_SOUTHERN_EDGE
    playfanfare MUS_SLOTS_JACKPOT
    waitfanfare
    call SyncProgressScript
    release
    end
SouthernEdge_Script1_Finished:
    msgbox SouthernEdge_Script1_Text3
    release
    end

SouthernEdge_Script1_Text:
    .string "Ah, our great land, abundant in lush\n"
    .string "vegetation.\p"
    .string "Many seek the power to move through\n"
    .string "blockades sent by the nature.\p"
    .string "That monumental power.\n"
    .string "This is what I grant you.$"

SouthernEdge_Script1_Text2:
    .string "The CUT ability was granted!$"
    
SouthernEdge_Script1_Text3:
    .string "Hope I see you another time...$"