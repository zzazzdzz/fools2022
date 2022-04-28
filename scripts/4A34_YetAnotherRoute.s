.align 4

YetAnotherRoute_MapInitCode:
    bx lr

YetAnotherRoute_MapInitScript:
    end

YetAnotherRoute_Switch_No:
    release
    end
YetAnotherRoute_Switch_Locked:
    msgbox YetAnotherRoute_Switch_Text5
    release
    end
YetAnotherRoute_Switch_Lock:
    setflag 0x0011
    msgbox YetAnotherRoute_Switch_Text2
    release
    end
YetAnotherRoute_Switch_Unlock:
    msgbox YetAnotherRoute_Switch_Text3
    release
    end

# 0x0011 - is locked
# 0x0012 - is 1 pressed
# 0x0013 - is 2 pressed
# 0x0014 - is 3 pressed

YetAnotherRoute_Script2:
    lock
    msgbox YetAnotherRoute_Switch_Text, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq YetAnotherRoute_Switch_No
    checkflag 0x0011
    goto_if TRUE, YetAnotherRoute_Switch_Locked
    checkflag 0x0012
    goto_if TRUE, YetAnotherRoute_Switch_Lock
    checkflag 0x0013
    goto_if TRUE, YetAnotherRoute_Switch_Lock
    checkflag 0x0014
    goto_if FALSE, YetAnotherRoute_Switch_Lock
    setflag 0x0012
    goto YetAnotherRoute_Switch_Unlock

YetAnotherRoute_Script3:
    lock
    msgbox YetAnotherRoute_Switch_Text, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq YetAnotherRoute_Switch_No
    checkflag 0x0011
    goto_if TRUE, YetAnotherRoute_Switch_Locked
    checkflag 0x0012
    goto_if FALSE, YetAnotherRoute_Switch_Lock
    checkflag 0x0013
    goto_if TRUE, YetAnotherRoute_Switch_Lock
    checkflag 0x0014
    goto_if FALSE, YetAnotherRoute_Switch_Lock
    setflag 0x0013
    # unlock the passage
    msgbox YetAnotherRoute_Switch_Text4
    closemessage
    delay 10
    playse SE_DOOR
    setmetatile 20, 6, 0x001, FALSE
    setmetatile 21, 6, 0x001, FALSE
    setmetatile 22, 6, 0x001, FALSE
    setmetatile 23, 6, 0x001, FALSE
    setmetatile 24, 6, 0x001, FALSE
    setmetatile 25, 6, 0x001, FALSE
    setmetatile 26, 6, 0x001, FALSE
    setmetatile 27, 6, 0x001, FALSE
    setmetatile 20, 7, 0x1ce, FALSE
    setmetatile 21, 7, 0x1cf, FALSE
    setmetatile 22, 7, 0x1ce, FALSE
    setmetatile 23, 7, 0x1cf, FALSE
    setmetatile 24, 7, 0x1ce, FALSE
    setmetatile 25, 7, 0x1cf, FALSE
    setmetatile 26, 7, 0x1ce, FALSE
    setmetatile 27, 7, 0x1cf, FALSE
    setmetatile 20, 5, 0x1e4, TRUE
    setmetatile 21, 5, 0x1e5, TRUE
    setmetatile 22, 5, 0x1e4, TRUE
    setmetatile 23, 5, 0x1e5, TRUE
    setmetatile 24, 5, 0x1e4, TRUE
    setmetatile 25, 5, 0x1e5, TRUE
    setmetatile 26, 5, 0x1e4, TRUE
    setmetatile 27, 5, 0x1e5, TRUE
    callnative DrawWholeMapView
    delay 30
    release
    end

YetAnotherRoute_Script4:
    lock
    msgbox YetAnotherRoute_Switch_Text, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq YetAnotherRoute_Switch_No
    checkflag 0x0011
    goto_if TRUE, YetAnotherRoute_Switch_Locked
    checkflag 0x0012
    goto_if TRUE, YetAnotherRoute_Switch_Locked
    checkflag 0x0013
    goto_if TRUE, YetAnotherRoute_Switch_Locked
    checkflag 0x0014
    goto_if TRUE, YetAnotherRoute_Switch_Locked
    setflag 0x0014
    goto YetAnotherRoute_Switch_Unlock

YetAnotherRoute_Switch_Text:
    .string "Oh, look! A secret switch!\n"
    .string "Press it with confidence?$"

YetAnotherRoute_Switch_Text2:
    .string "You pressed the switch, and you\n"
    .string "heard a shallow click.$"

YetAnotherRoute_Switch_Text3:
    .string "You pressed the switch, and you\n"
    .string "heard a loud, resounding click.$"

YetAnotherRoute_Switch_Text4:
    .string "You pressed the switch, and a hidden\n"
    .string "passage opened!$"

YetAnotherRoute_Switch_Text5:
    .string "You pressed the switch, but it seems\n"
    .string "like nothing happened.$"

YetAnotherRoute_Sign:
    lock
    msgbox YetAnotherRoute_Sign_Text
    release
    end

YetAnotherRoute_Sign_Text:
    .string "Welcome to Yet Another Route!\n"
    .string "It leads to Yet Another Cave, which\l"
    .string "in turn leads to Yet Another Pathway.$"

YetAnotherRoute_Script1:
    lock
    faceplayer
    msgbox YetAnotherRoute_Script1_Text
    release
    end

YetAnotherRoute_Script1_Text:
    .string "Hello! I'm yet another useless NPC,\n"
    .string "who will just say some generic lines\l"
    .string "with no gameplay impact!$"