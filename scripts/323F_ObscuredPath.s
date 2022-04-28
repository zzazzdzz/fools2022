.align 4

ObscuredPath_MapInitCode:
    bx lr

ObscuredPath_MapInitScript:
    end

ObscuredPath_Script1:
    lock
    msgbox ObscuredPath_Script1_Text
    setflag FLAG_OBSCURED_PATH
    call SyncProgressScript
    release
    end

ObscuredPath_Script1_Text:
    .string "Looks like this recursion didn't have\n"
    .string "a termination condition, and your\l"
    .string "persistent questions caused a stack\l"
    .string "overflow. Interesting.\p"
    .string "Based on this experience, you have\n"
    .string "learned something new about this world.$"

