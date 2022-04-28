.align 4

TheHarbor_MapInitCode:
    bx lr

TheHarbor_MapInitScript:
    end

TheHarbor_Script1:
    lock
    faceplayer
    msgbox TheHarbor_Script1_Text
    release
    end

TheHarbor_Script1_Text:
    .string "Many foreigners from other regions\n"
    .string "come to visit Northern Glitchland.\p"
    .string "We mostly get people from Vietnam,\n"
    .string "not really sure why.\p"
    .string "There's also this one guy who claims\n"
    .string "to come from the JANTO region.$"

TheHarbor_Script2:
    lock
    faceplayer
    msgbox TheHarbor_Script2_Text
    release
    end

TheHarbor_Script2_Text:
    .string "PROf NOG is high regard. I get many\n"
    .string "amaze when he do science...\l"
    .string "So smart and hansome!!\p"
    .string "Please don.t tell I love him.\n"
    .string "I embarris.$"

TheHarbor_Script3:
    lock
    faceplayer
    checkflag FLAG_RECEIVED_BALL2
    goto_if TRUE, TheHarbor_ItemBall_Finished
    msgbox TheHarbor_Script3_Text
    release
    end

TheHarbor_Script3_Text:
    .string "Some days you just look out... onto\n"
    .string "the pond, and you think to yourself...\p"
    .string "My God... why is that Pok{EACUTE}mon ball\n"
    .string "moving on its own?\l"
    .string "WHY IS IT MOVING ON ITS OWN?!$"

TheHarbor_ItemBall:
    lock
    checkflag FLAG_RECEIVED_BALL2
    goto_if TRUE, TheHarbor_ItemBall_Finished
    removeobject 1
    setflag FLAG_RECEIVED_BALL2
    giveitem 4
    call SyncProgressScript
    release
    end
TheHarbor_ItemBall_Finished:
    msgbox TheHarbor_ItemBall_Text
    release
    end

TheHarbor_ItemBall_Text:
    .string "But the ball is never finished.\n"
    .string "It just stops moving.$"

TheHarbor_Script4:
    lock
    faceplayer
    msgbox TheHarbor_Script4_Text
    release
    end

TheHarbor_Script4_Text:
    .string "I'm doing a Randomizer Nuzlocke\n"
    .string "challenge, and the first Gym Leader\l"
    .string "obviously had to have a PALKIA.\p"
    .string "Oh boy. I could really use a SALAMENCE\n"
    .string "right about now...$"
