.align 4

EasternEdge_MapInitCode:
    bx lr

EasternEdge_MapInitScript:
    end

EasternEdge_Script1:
    lock
    faceplayer
    checkflag FLAG_EASTERN_EDGE
    goto_if TRUE, EasternEdge_Script1_Finished
    msgbox EasternEdge_Script1_Text
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
    message EasternEdge_Script1_Text2
    setflag FLAG_EASTERN_EDGE
    setflag 0x86a
    playfanfare MUS_SLOTS_JACKPOT
    waitfanfare
    call SyncProgressScript
    release
    end
EasternEdge_Script1_Finished:
    msgbox EasternEdge_Script1_Text3
    release
    end

EasternEdge_Script1_Text:
    .string "Ah, our great land, filled with dark,\n"
    .string "immense cave systems.\p"
    .string "Many seek the power to push through\n"
    .string "the rockfall found inside them.\p"
    .string "That monumental power.\n"
    .string "This is what I grant you.$"

EasternEdge_Script1_Text2:
    .string "The STRENGTH ability was granted!$"
    
EasternEdge_Script1_Text3:
    .string "Hope I see you another time...$"
