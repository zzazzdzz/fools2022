.align 4

BrokenBridge_MapInitCode:
    bx lr

BrokenBridge_MapInitScript:
    end

BrokenBridge_Script1:
    lock
    faceplayer
    msgbox BrokenBridge_Script1_Text
    release
    end

BrokenBridge_Script1_Text:
    .string "Unfortunately, the bridge here\n"
    .string "appears to be out of service.\p"
    .string "If only there was some way to SURF\n"
    .string "across water!$"

BrokenBridge_ItemBall:
    lock
    removeobject 2
    giveitem 4
    setflag FLAG_RECEIVED_BALL4
    call SyncProgressScript
    release
    end
