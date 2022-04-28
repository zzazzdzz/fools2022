.align 4

WesternEncampment_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

WesternEncampment_MapInitScript:
    end

WesternCamp_Interior_Script1:
    lock
    faceplayer
    msgbox WesternCamp_Interior_Script1_Text, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq WesternCamp_Interior_Script1_No
    goto WesternCamp_Interior_Script1_GiveBalls1

WesternCamp_Interior_Script1_No:
    msgbox WesternCamp_Interior_Script1_Text4
    release
    end

WesternCamp_Interior_Script1_BallGiven:
    message WesternCamp_Interior_Script1_Text2
    waitmessage
    playfanfare MUS_RG_OBTAIN_KEY_ITEM
    waitfanfare
    removeitem 4
    call WesternCamp_Interior_Script1_CountBalls
    buffernumberstring STR_VAR_1, VAR_TEMP_2
    msgbox WesternCamp_Interior_Script1_Text3
    call SyncProgressScript
    release
    end

WesternCamp_Interior_Script1_BallNotGiven:
    msgbox WesternCamp_Interior_Script1_Text1
    release
    end

WesternCamp_Interior_Script1_GiveBalls1:
    checkflag FLAG_RECEIVED_BALL1
    goto_if FALSE, WesternCamp_Interior_Script1_GiveBalls2
    checkflag FLAG_GIVEN_BALL1
    goto_if TRUE, WesternCamp_Interior_Script1_GiveBalls2
    setflag FLAG_GIVEN_BALL1
    goto WesternCamp_Interior_Script1_BallGiven
WesternCamp_Interior_Script1_GiveBalls2:
    checkflag FLAG_RECEIVED_BALL2
    goto_if FALSE, WesternCamp_Interior_Script1_GiveBalls3
    checkflag FLAG_GIVEN_BALL2
    goto_if TRUE, WesternCamp_Interior_Script1_GiveBalls3
    setflag FLAG_GIVEN_BALL2
    goto WesternCamp_Interior_Script1_BallGiven
WesternCamp_Interior_Script1_GiveBalls3:
    checkflag FLAG_RECEIVED_BALL3
    goto_if FALSE, WesternCamp_Interior_Script1_GiveBalls4
    checkflag FLAG_GIVEN_BALL3
    goto_if TRUE, WesternCamp_Interior_Script1_GiveBalls4
    setflag FLAG_GIVEN_BALL3
    goto WesternCamp_Interior_Script1_BallGiven
WesternCamp_Interior_Script1_GiveBalls4:
    checkflag FLAG_RECEIVED_BALL4
    goto_if FALSE, WesternCamp_Interior_Script1_GiveBalls5
    checkflag FLAG_GIVEN_BALL4
    goto_if TRUE, WesternCamp_Interior_Script1_GiveBalls5
    setflag FLAG_GIVEN_BALL4
    goto WesternCamp_Interior_Script1_BallGiven
WesternCamp_Interior_Script1_GiveBalls5:
    checkflag FLAG_RECEIVED_BALL5
    goto_if FALSE, WesternCamp_Interior_Script1_GiveBalls6
    checkflag FLAG_GIVEN_BALL5
    goto_if TRUE, WesternCamp_Interior_Script1_GiveBalls6
    setflag FLAG_GIVEN_BALL5
    goto WesternCamp_Interior_Script1_BallGiven
WesternCamp_Interior_Script1_GiveBalls6:
    checkflag FLAG_RECEIVED_BALL6
    goto_if FALSE, WesternCamp_Interior_Script1_GiveBalls7
    checkflag FLAG_GIVEN_BALL6
    goto_if TRUE, WesternCamp_Interior_Script1_GiveBalls7
    setflag FLAG_GIVEN_BALL6
    goto WesternCamp_Interior_Script1_BallGiven
WesternCamp_Interior_Script1_GiveBalls7:
    checkflag FLAG_RECEIVED_BALL7
    goto_if FALSE, WesternCamp_Interior_Script1_GiveBalls8
    checkflag FLAG_GIVEN_BALL7
    goto_if TRUE, WesternCamp_Interior_Script1_GiveBalls8
    setflag FLAG_GIVEN_BALL7
    goto WesternCamp_Interior_Script1_BallGiven
WesternCamp_Interior_Script1_GiveBalls8:
    checkflag FLAG_RECEIVED_BALL8
    goto_if FALSE, WesternCamp_Interior_Script1_GiveBalls9
    checkflag FLAG_GIVEN_BALL8
    goto_if TRUE, WesternCamp_Interior_Script1_GiveBalls9
    setflag FLAG_GIVEN_BALL8
    goto WesternCamp_Interior_Script1_BallGiven
WesternCamp_Interior_Script1_GiveBalls9:
    checkflag FLAG_RECEIVED_BALL9
    goto_if FALSE, WesternCamp_Interior_Script1_BallNotGiven
    checkflag FLAG_GIVEN_BALL9
    goto_if TRUE, WesternCamp_Interior_Script1_BallNotGiven
    setflag FLAG_GIVEN_BALL9
    goto WesternCamp_Interior_Script1_BallGiven

WesternCamp_Interior_Script1_CountBalls:
    setvar VAR_TEMP_2, 0
    checkflag FLAG_GIVEN_BALL1
    call_if TRUE, WesternCamp_Interior_Script1_CountBalls_Incr
    checkflag FLAG_GIVEN_BALL2
    call_if TRUE, WesternCamp_Interior_Script1_CountBalls_Incr
    checkflag FLAG_GIVEN_BALL3
    call_if TRUE, WesternCamp_Interior_Script1_CountBalls_Incr
    checkflag FLAG_GIVEN_BALL4
    call_if TRUE, WesternCamp_Interior_Script1_CountBalls_Incr
    checkflag FLAG_GIVEN_BALL5
    call_if TRUE, WesternCamp_Interior_Script1_CountBalls_Incr
    checkflag FLAG_GIVEN_BALL6
    call_if TRUE, WesternCamp_Interior_Script1_CountBalls_Incr
    checkflag FLAG_GIVEN_BALL7
    call_if TRUE, WesternCamp_Interior_Script1_CountBalls_Incr
    checkflag FLAG_GIVEN_BALL8
    call_if TRUE, WesternCamp_Interior_Script1_CountBalls_Incr
    checkflag FLAG_GIVEN_BALL9
    call_if TRUE, WesternCamp_Interior_Script1_CountBalls_Incr
    return

WesternCamp_Interior_Script1_CountBalls_Incr:
    addvar VAR_TEMP_2, 1
    return

WesternCamp_Interior_Script1_Text:
    .string "Hey, you know what I really like?\n"
    .string "Balls! I like POK{EACUTE} BALLS of all kind!\p"
    .string "You can pretty much say that I'm\n"
    .string "a sucker for balls, haha!\p"
    .string "So, do you happen to have any BALLS?\n"
    .string "If so, do you wish to give them to me?$"

WesternCamp_Interior_Script1_Text1:
    .string "Sir, I'm afraid you don't have any\n"
    .string "BALLS to show me.\p"
    .string "Once you get some BALLS, please let\n"
    .string "me know - I'll check them out!$"

WesternCamp_Interior_Script1_Text2:
    .string "Hmm, yes! That's a POK{EACUTE} BALL!\n"
    .string "And in great condition as well!$"

WesternCamp_Interior_Script1_Text3:
    .string "Oh yes... The taste...\n"
    .string "The smell... The texture...\p"
    .string "Thank you! So far, you've brought\n"
    .string "{STR_VAR_1} different BALLS to me.\p"
    .string "If you were to find any more BALLS,\n"
    .string "please bring them over!$"

WesternCamp_Interior_Script1_Text4:
    .string "Oh, that's disappointing. Let me\n"
    .string "know if you find any BALLS.$"