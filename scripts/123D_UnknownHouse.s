.align 4

UnknownHouse_MapInitCode:
    bx lr

.ltorg
.align 4

UnknownHouse_MapInitScript:
    end

UnknownHouse_Script:
    lock
    msgbox UnknownHouse_Script_Text_Q, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq UnknownHouse_Script_N
    compare_addr_to_value UnknownHouse_FunValue, 0xd0
    goto_if_lt UnknownHouse_Script_A
    compare_addr_to_value UnknownHouse_FunValue, 0xf0
    goto_if_lt UnknownHouse_Script_B
    msgbox UnknownHouse_Script_Text3
    release
    end
UnknownHouse_Script_A:
    msgbox UnknownHouse_Script_Text1
    release
    end
UnknownHouse_Script_B:
    msgbox UnknownHouse_Script_Text2
    release
    end
UnknownHouse_Script_N:
    msgbox UnknownHouse_Script_Text_N
    release
    end

UnknownHouse_Script_Text_Q:
    .string "The door is firmly shut, but some\n"
    .string "people seem to be talking inside...\l"
    .string "Eavesdrop on the conversation?$"

UnknownHouse_Script_Text_N:
    .string "You give up on the immoral act of\n"
    .string "eavesdropping.$"

UnknownHouse_Script_Text1:
    .string "You listen closely, but the voices\n"
    .string "inside have quietened considerably.\l"
    .string "Now you can't hear anything.$"

UnknownHouse_Script_Text2:
    .string "You listen closely. You hear some people\n"
    .string "reminiscing of their times together.\l"
    .string "Sounds like a very close friend group.\p"
    .string "It's the kind of closeness some people\n"
    .string "crave, yet cannot experience...$"

UnknownHouse_Script_Text3:
    .string "You listen closely. You heard something\n"
    .string "about... someone being a dog?\l"
    .string "Cause a dog is a man's best friend.\p"
    .string "It does not make any sense, but maybe\n"
    .string "it's not supposed to.\p"
    .string "What the hell is Fidei?\n"
    .string "It's where dreams have died.$"

UnknownHouse_FunValue:
    .ascii "--FUNVAL--"
	.byte 0xff
