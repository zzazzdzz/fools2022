.align 4

YetAnotherSecret_MapInitCode:
    bx lr

YetAnotherSecret_MapInitScript:
    end

YetAnotherSecret_Script1:
    lock
    msgbox YetAnotherSecret_Script1_Text
    checkflag FLAG_YET_ANOTHER_SECRET
    goto_if TRUE, YetAnotherSecret_Script1_Done
    setflag FLAG_YET_ANOTHER_SECRET
    call SyncProgressScript
YetAnotherSecret_Script1_Done:
    release
    end

YetAnotherSecret_Script1_Text:
    .string "You found yet another secret!\n"
    .string "You should be proud of yourself.\p"
    .string "Here, have this yet another achievement\n"
    .string "to commemorate your success!$"
