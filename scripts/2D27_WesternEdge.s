.align 4

WesternEdge_MapInitCode:
    bx lr

WesternEdge_MapInitScript:
    end

WesternEdge_Script1:
    lock
    faceplayer
    checkflag FLAG_WESTERN_EDGE
    goto_if TRUE, WesternEdge_Script1_Finished
    msgbox WesternEdge_Script1_Text
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
    message WesternEdge_Script1_Text2
    setflag FLAG_WESTERN_EDGE
    setflag FLAG_TELEPORTATION_ENABLED
    playfanfare MUS_SLOTS_JACKPOT
    waitfanfare
    call SyncProgressScript
    msgbox WesternEdge_Script1_Text4
    release
    end
WesternEdge_Script1_Finished:
    msgbox WesternEdge_Script1_Text3
    release
    end

WesternEdge_Script1_Text:
    .string "Ah, our great land, far-reaching and\n"
    .string "vast.\p"
    .string "Many seek the power to traverse this\n"
    .string "terrain easier, dropping the worry\l"
    .string "about time and distance.\p"
    .string "That monumental power.\n"
    .string "This is what I grant you.$"

WesternEdge_Script1_Text2:
    .string "The TELEPORT ability was granted!$"
    
WesternEdge_Script1_Text3:
    .string "Hope I see you another time...$"

WesternEdge_Script1_Text4:
    .string "Use the hallowed ground found in\n"
    .string "town areas to commence teleportation.$"
