.align 4

CrossingField_MapInitCode:
    bx lr

CrossingField_MapInitScript:
    end

CrossingField_Script1:
    lock
    faceplayer
    msgbox CrossingField_Script1_Text
    release
    end

CrossingField_Script1_Text:
    .string "We must save my family!$"

CrossingField_Script2:
    lock
    faceplayer
    msgbox CrossingField_Script2_Text
    release
    end

CrossingField_Script2_Text:
    .string "The bandits are coming!$"

CrossingField_Script3:
    lock
    faceplayer
    msgbox CrossingField_Script3_Text
    release
    end

CrossingField_Script3_Text:
    .string "Let me introduce you to my crew.\n"
    .string "I call them {LQUOT}the crew{RQUOT}, by the way.\p"
    .string "They are all NPCs I got from\n"
    .string "various quests.\p"
    .string "They help you fight, but as long as\n"
    .string "don't finish the quests, they stay\l"
    .string "with you forever!$"