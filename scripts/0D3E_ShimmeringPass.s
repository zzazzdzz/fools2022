.align 4

ShimmeringPass_MapInitCode:
    bx lr

ShimmeringPass_MapInitScript:
    end

ShimmeringPass_Script1:
    lock
    faceplayer
    checkflag FLAG_RECEIVED_BALL1
    goto_if TRUE, ShimmeringPass_Script1_Finished
    msgbox ShimmeringPass_Script1_Text
    setflag FLAG_RECEIVED_BALL1
    giveitem 4
    call SyncProgressScript
    release
    end
ShimmeringPass_Script1_Finished:
    msgbox ShimmeringPass_Script1_Text_Done
    release
    end

ShimmeringPass_Script1_Text:
    .string "I found this Pok{EACUTE} Ball just lying\n"
    .string "on the ground.\p"
    .string "There are no wild encounters, so it's\n"
    .string "completely useless for me.\p"
    .string "You can have it. Maybe you can find\n"
    .string "a better use for it!$"

ShimmeringPass_Script1_Text_Done:
    .string "I already gave you a Pok{EACUTE} Ball, you\n"
    .string "greedy pig!$"

ShimmeringPass_Script2:
    lock
    faceplayer
    msgbox ShimmeringPass_Script2_Text, MSGBOX_YESNO
    compare VAR_RESULT, YES
    goto_if_eq ShimmeringPass_Script2_AnsweredYes
    msgbox ShimmeringPass_Script2_No
    release
    end
ShimmeringPass_Script2_AnsweredYes:
    msgbox ShimmeringPass_Script2_Yes
    release
    end

ShimmeringPass_Script2_Text:
    .string "Hey!\n"
    .string "What's your name?$"

ShimmeringPass_Script2_Yes:
    .string "Yes? That's a pretty funny name.\n"
    .string "Never heard it before.$"

ShimmeringPass_Script2_No:
    .string "No? Come on!\n"
    .string "You must have a name.$"

ShimmeringPass_Script3:
    lock
    faceplayer
    msgbox ShimmeringPass_Script3_Text
    release
    end

ShimmeringPass_Script3_Text:
    .string "Hello adventurer! Are you heading for\n"
    .string "the Northern Edge?\p"
    .string "Once upon a time, glitch items were\n"
    .string "used by adventurers like you, to help\l"
    .string "them get around obstacles.\p"
    .string "However, recent analysis done by Glitch\n"
    .string "Research Lab scientists proved that\l"
    .string "prolonged use of these items could\l"
    .string "have adverse effects.\p"
    .string "Since then, people have been looking\n"
    .string "for viable alternatives.$"

ShimmeringPass_Script4:
    lock
    faceplayer
    msgbox ShimmeringPass_Script4_Text
    release
    end

ShimmeringPass_Script4_Text:
    .string "I once had a girlfriend. But then,\n"
    .string "she put pineapple on my pizza.\l"
    .string "We're not together anymore.$"