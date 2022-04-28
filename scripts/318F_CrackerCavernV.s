.align 4

CrackerCavernV_MapInitCode:
    bx lr

CrackerCavernV_MapInitScript:
    end

CrackerCavern_Gratz:
    lock
    faceplayer
    checkflag FLAG_HACKER_BACKGROUND
    goto_if TRUE, CrackerCavern_Gratz_Finished
    msgbox CrackerCavern_Gratz_Text
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
    message CrackerCavern_Gratz_Text2
    setflag FLAG_HACKER_BACKGROUND
    playfanfare MUS_SLOTS_JACKPOT
    waitfanfare
    call SyncProgressScript
CrackerCavern_Gratz_Finished:
    msgbox CrackerCavern_Gratz_Text3
    release
    end

CrackerCavern_Gratz_Text:
    .string "x$"

CrackerCavern_Gratz_Text2:
    .string "x$"

CrackerCavern_Gratz_Text3:
    .string "x$"
