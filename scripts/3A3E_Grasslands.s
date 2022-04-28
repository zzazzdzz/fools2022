.align 4

Grasslands_MapInitCode:
    bx lr

Grasslands_MapInitScript:
    end

Grasslands_CuttableDelirian:
	lockall
	goto_if_unset 0x867, EventScript_CheckTreeCantCut
	msgbox Text_WantToCut, MSGBOX_YESNO
	compare VAR_RESULT, NO
    goto_if_eq EventScript_CancelCut
    closemessage
	setvar VAR_RESULT, 0
	setfieldeffectargument 0, VAR_RESULT
    dofieldeffect 2
    waitstate
    playse SE_M_CUT
    waitse
    delay 16
    msgbox Grasslands_CuttableDelirian_Text
    closemessage
    delay 16
    applymovement VAR_LAST_TALKED, Grasslands_CuttableDelirian_Movement
	waitmovement 0
	removeobject VAR_LAST_TALKED
	releaseall
	end

Grasslands_CuttableDelirian_Movement:
    jump_2_left
    jump_2_left
    jump_2_left
    jump_2_left
    jump_2_left
    step_end

Grasslands_CuttableDelirian_Text:
    .string "{JPN}owowow\n"
    .string "HUrts !!\p"
    .string "i am not a tree ..\n"
    .string "you want me out?\p"
    .string "okayooo\n"
    .string "i will go now ...$"

Grasslands_Script1:
    lock
    faceplayer
    checkflag FLAG_GRASSLANDS_TREES
    goto_if TRUE, Grasslands_Script1_Done
    checkflag 0x12
    goto_if FALSE, Grasslands_Script1_Nope
    checkflag 0x13
    goto_if FALSE, Grasslands_Script1_Nope
    checkflag 0x14
    goto_if FALSE, Grasslands_Script1_Nope
    checkflag 0x15
    goto_if FALSE, Grasslands_Script1_Nope
    setflag FLAG_GRASSLANDS_TREES
    message Grasslands_Script1_Text1
    waitmessage
    playfanfare MUS_RG_OBTAIN_KEY_ITEM
    waitfanfare
    call SyncProgressScript
    release
    end
Grasslands_Script1_Nope:
    msgbox Grasslands_Script1_Text
    release
    end
Grasslands_Script1_Done:
    msgbox Grasslands_Script1_Text1
    release
    end

Grasslands_Script1_Text1:
    .string "All of the trees are gone now!\n"
    .string "Thank you so much!$"

Grasslands_Script1_Text:
    .string "Hey, can you help me out?\n"
    .string "I'm trying to get rid of all the trees.\p"
    .string "This place is called Grasslands.\n"
    .string "There's no place for random trees.\l"
    .string "Only grass allowed!\p"
    .string "Once you're done, just talk to me.\n"
    .string "I'll give you a special achievement.$"

Grasslands_Script2:
    lock
    faceplayer
    msgbox Grasslands_Script2_Text
    release
    end

Grasslands_Script2_Text:
    .string "I'm not sure why this other guy\n"
    .string "hates trees so much.\p"
    .string "Last time I checked, everyone was\n"
    .string "anti-grass...$"


EventScript_CutTree:
    lock
    faceplayer
    msgbox EventScript_CutTree_Text
    release
    end

EventScript_CutTree_Text:
    .string "redacted$"