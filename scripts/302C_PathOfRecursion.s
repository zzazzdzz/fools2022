.align 4

PathOfRecursion_MapInitCode:
    bx lr

PathOfRecursion_SetTargetMap:
    ldr r0, =zWarpTargetData
    ldr r1, =0x0707323f
    str r1, [r0]
    ldr r0, =zWarpTargetDirection
    mov r1, #0
    strb r1, [r0]
    bx lr

PathOfRecursion_MapInitScript:
    end

PathOfRecursion_Script1:
    lock
    faceplayer
    msgbox PathOfRecursion_Script1_Text1, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq PathOfRecursion_Script1_Break
    setvar VAR_TEMP_1, 0
PathOfRecursion_Script1_Loop:
    msgbox PathOfRecursion_Script1_Text2, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq PathOfRecursion_Script1_Break
    addvar VAR_TEMP_1, 1
    compare_var_to_value VAR_TEMP_1, 10
    goto_if_eq PathOfRecursion_Script1_Crash
    goto PathOfRecursion_Script1_Loop
PathOfRecursion_Script1_Break:
    msgbox PathOfRecursion_Script1_Text3
    release
    end
PathOfRecursion_Script1_Crash:
    closemessage
    fadescreen 1
    delay 60
    msgbox PathOfRecursion_Script1_Text4
    closemessage
    delay 60
    callnative PathOfRecursion_SetTargetMap
    goto WARP_SCRIPT

PathOfRecursion_Script1_Text1:
    .string "Hi there? Do you want me to explain\n"
    .string "recursion to you?$"

PathOfRecursion_Script1_Text2:
    .string "Great! But before I explain recursion,\n"
    .string "I should explain recursion first.\l"
    .string "Do you want me to explain recursion?$"

PathOfRecursion_Script1_Text3:
    .string "Dang.\n"
    .string "I just wanted to help...$"

PathOfRecursion_Script1_Text4:
    .string "Once you answer the question, the old\n"
    .string "lady turns into a glitchy mess.\p"
    .string "The glitchy mess engulfs you.\n"
    .string "You lose consciousness.\p"
    .string "After some time, you wake up in\n"
    .string "a place you've never seen before...$"

PathOfRecursion_Script2:
    lock
    faceplayer
    msgbox PathOfRecursion_Script2_Text
    release
    end

PathOfRecursion_Script2_Text:
    .string "Perseverance is key!\p"
    .string "I strongly believe that if I try to\n"
    .string "understand recursion hard enough,\l"
    .string "then I will get rewarded eventually!$"
