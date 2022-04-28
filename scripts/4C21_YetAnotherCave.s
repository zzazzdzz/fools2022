.align 4

YetAnotherCave_MapInitCode:
    bx lr

YetAnotherCave_MapInitScript:
    end

YetAnotherCave_Script1:
    lock
    faceplayer
    msgbox YetAnotherCave_Script1_Text
    release
    end

YetAnotherCave_Script1_Text:
    .string "The entrance to Yet Another Cave was\n"
    .string "blocked by huge rockfall weeks ago.\p"
    .string "Even with immense STRENGTH, it's still\n"
    .string "impossible to move these...\p"
    .string "But no worries, this place was\n"
    .string "pointless from the very beginning.$"

YetAnotherCave_Script2:
    lock
    faceplayer
    msgbox YetAnotherCave_Script2_Text
    release
    end

YetAnotherCave_Script2_Text:
    .string "I dropped my Pok{EACUTE} Ball somewhere around\n"
    .string "here... What should I do?\p"
    .string "I think there's a guy in the Western\n"
    .string "Camp who collects Pok{EACUTE} Balls.\p"
    .string "He would be so happy if you happened\n"
    .string "to find it!$"

YetAnotherCave_BuriedItem:
    checkflag FLAG_RECEIVED_BALL6
    goto_if TRUE, YetAnotherCave_BuriedItem_No
    lock
    finditem 4
    setflag FLAG_RECEIVED_BALL6
    call SyncProgressScript
    release
YetAnotherCave_BuriedItem_No:
    end


EventScript_StrengthBoulder:
    lock
    faceplayer
    msgbox EventScript_StrengthBoulder_Text
    release
    end

EventScript_StrengthBoulder_Text:
    .string "redacted$"