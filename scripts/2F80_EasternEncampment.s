.align 4

EasternEncampment_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

EasternEncampment_MapInitScript:
    end

EasternCamp_Script1:
    lock
    faceplayer
    checkflag FLAG_MATH_GIRL
    goto_if TRUE, EasternCamp_Script1_Post
    msgbox EasternCamp_Script1_TextQ, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq EasternCamp_Script1_No
    msgbox EasternCamp_Script1_Text
    callnative GenericNamingScreen
    waitstate
    bufferstring STR_VAR_1, EasternCamp_Script1_CorrectAnswer
    callnative CompareStrings
    compare VAR_RESULT, 0
    goto_if TRUE, EasternCamp_Script1_Correct
    addvar VAR_TEMP_1, 1
    compare_var_to_value VAR_TEMP_1, 8
    goto_if TRUE, EasternCamp_Script1_KindaCorrect
    msgbox EasternCamp_Script1_TextBad
    release
    end
EasternCamp_Script1_No:
    msgbox EasternCamp_Script1_TextN
    release
    end
EasternCamp_Script1_Correct:
    setflag FLAG_MATH_GIRL
    msgbox EasternCamp_Script1_TextGood
    call SyncProgressScript
EasternCamp_Script1_Post:
    msgbox EasternCamp_Script1_TextHint
    release
    end
EasternCamp_Script1_KindaCorrect:
    setflag FLAG_MATH_GIRL
    msgbox EasternCamp_Script1_TextGoodKinda
    call SyncProgressScript
    goto EasternCamp_Script1_Post

EasternCamp_Script1_CorrectAnswer:
    .string "633$"

EasternCamp_Script1_Text:
    .string "Great!\n"
    .string "Here's what I have.\p"
    .string "Train A is exactly 200 miles west of\n"
    .string "train B. Train A starts travelling\l"
    .string "north at a constant speed of 85 mph.\p"
    .string "Then, two hours later, train B starts\n"
    .string "travelling east, at 90 mph.\p"
    .string "Exactly 5 hours after train A starts\n"
    .string "moving, how many miles apart are the\l"
    .string "two trains? Round the result down.\p"
    .string "So, what's the answer?\n"
    .string "Give me an exact number!$"

EasternCamp_Script1_TextQ:
    .string "Wow, this math exercise sure is hard...\n"
    .string "Can you help me with my math homework?\p"
    .string "If you do, I can share an interesting\n"
    .string "secret about the Lost Woods.\l"
    .string "How about it?$"

EasternCamp_Script1_TextN:
    .string "What? You won't?\n"
    .string "Okay then...$"

EasternCamp_Script1_TextGood:
    .string "Hmm, let's see.\n"
    .string "Wow, that actually makes sense!\p"
    .string "I think that's the right answer. Thank\n"
    .string "you for helping me!$"

EasternCamp_Script1_TextBad:
    .string "Hmm, let's see.\n"
    .string "No, that just doesn't seem right.\p"
    .string "I think you must have made an error\n"
    .string "somewhere. Sorry, no hint for you!$"

EasternCamp_Script1_TextGoodKinda:
    .string "Hmm, let's see.\n"
    .string "No! It just doesn't work.\p"
    .string "I give up. I'll just turn in a wrong\n"
    .string "answer. The teacher won't notice.$"

EasternCamp_Script1_TextHint:
    .string "So, about the Lost Woods... You can\n"
    .string "get to the Eastern Edge from there!\p"
    .string "To do that, it's pretty simple.\n"
    .string "Just go east twice, then north twice!$"

# 633