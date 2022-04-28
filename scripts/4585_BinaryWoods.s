.align 4

BinaryWoods_MapInitCode:
    bx lr

BinaryWoods_MapInitScript:
    end

BinaryWoods_Script1:
    lock
    faceplayer
    msgbox BinaryWoods_Script1_Text
    release
    end

BinaryWoods_Script1_Text:
    .string "IT IS SAID THERE IS A SPIRIT\n"
    .string "IN THE FOREST.\l"
    .string "DON'T SERVE THE DEVIL.$"

BinaryWoods_Script2:
    lock
    faceplayer
    msgbox BinaryWoods_Script2_Text
    release
    end

BinaryWoods_Script2_Text:
    .string "I bet if we had wild encounters, there\n"
    .string "would be tons of bugs in this forest!$"

BinaryWoods_Script3:
    lock
    faceplayer
    msgbox BinaryWoods_Script3_Text
    release
    end

BinaryWoods_Script3_Text:
    .string "The ability to SURF would be very\n"
    .string "useful. It makes going through the\l"
    .string "forest much less painful!$"

BinaryWoods_Script4:
    lock
    faceplayer
    msgbox BinaryWoods_Script4_Text
    release
    end

BinaryWoods_Script4_Text:
    .string "Wow, you tell me that the exit was\n"
    .string "just a few steps from here?\p"
    .string "I've been lost here for a week, and\n"
    .string "now you tell me?\p"
    .string "I shouldn't have used a depth-first\n"
    .string "search while looking for the exit...$"

BinaryWoods_Script5:
    lock
    msgbox BinaryWoods_Script5_Text
    release
    end

BinaryWoods_Script5_Text:
    .string "Please respect the nature!\p"
    .string "Do not make the trees imbalanced, or\n"
    .string "they'll become harder to traverse.\p"
    .string "Be careful with the roots. Breaking\n"
    .string "them could split the trees in half.\p"
    .string "Hope you enjoy your stay at the\n"
    .string "Binary Woods.$"

BinaryWoods_ItemBall:
    lock
    removeobject 5
    giveitem 4
    setflag FLAG_RECEIVED_BALL5
    call SyncProgressScript
    release
    end
