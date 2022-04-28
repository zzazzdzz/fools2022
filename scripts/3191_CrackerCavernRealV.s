.align 4

CrackerCavernRealV_MapInitCode:
    bx lr

CrackerCavernRealV_MapInitScript:
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
    .string "Congratulations! You have completed\n"
    .string "the Cracker Cavern Reborn!\p"
    .string "People of Glitchland are hugely amazed\n"
    .string "by your hacking skill.\p"
    .string "With such an achievement, I think\n"
    .string "a proper reward is in order.$"

CrackerCavern_Gratz_Text2:
    .string "You have unlocked the coveted\n"
    .string "Exploitation Expert title!$"

CrackerCavern_Gratz_Text3:
    .string "This leaderboard flair will let\n"
    .string "everyone know of your greatness.\p"
    .string "Now go forth and continue exploring\n"
    .string "Glitchland.\p"
    .string "Hopefully, do so without hacking.\n"
    .string "Don't ruin the fun for yourself!$"
