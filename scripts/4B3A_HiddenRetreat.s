.align 4

HiddenRetreat_MapInitCode:
    bx lr

HiddenRetreat_MapInitScript:
    end

HiddenRetreat_Script1:
    lock
    faceplayer
    msgbox HiddenRetreat_Script1_Text
    checkflag FLAG_HIDDEN_RETREAT
    goto_if TRUE, HiddenRetreat_Script1_NoMark
    setflag FLAG_HIDDEN_RETREAT
    call SyncProgressScript
HiddenRetreat_Script1_NoMark:
    release
    end

HiddenRetreat_Script1_Text:
    .string "What? How did you know I concealed\n"
    .string "myself within those trees?\p"
    .string "You have an overhead view?\n"
    .string "But that's cheating!\p"
    .string "Please don't tell anyone I'm here,\n"
    .string "kay-o?$"


EventScript_CutTree:
    lock
    faceplayer
    msgbox EventScript_CutTree_Text
    release
    end

EventScript_CutTree_Text:
    .string "redacted$"