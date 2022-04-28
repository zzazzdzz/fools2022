.align 4

SouthernEncampment_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

SouthernEncampment_SetTargetMap:
    ldr r0, =zWarpTargetData
    ldr r1, =0x0a0f472b
    str r1, [r0]
    mov r1, #0
    ldr r0, =zWarpTargetDirection
    strb r1, [r0]
    ldr r0, =zSkipMapExitMovement
    strb r1, [r0]
    bx lr

.align 4
.ltorg

SouthernEncampment_MapInitScript:
    end

SouthernEncampment_Script1:
    lock
    faceplayer
    msgbox SouthernEncampment_Script1_Text, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq SouthernEncampment_Script1_Nope
    msgbox SouthernEncampment_Script1_Text2
    fadescreen 1
    fadeoutbgm 2
    delay 60
    msgbox SouthernEncampment_Script1_Text3
    closemessage
    delay 60
    fadeinbgm 1
    callnative SouthernEncampment_SetTargetMap
    goto WARP_SCRIPT
SouthernEncampment_Script1_Nope:
    msgbox SouthernEncampment_Script1_Text1
    release
    end

SouthernEncampment_Script1_Text:
    .string "Welcome. Do you wish to try our\n"
    .string "Spirit Releasing Therapy?$"

SouthernEncampment_Script1_Text1:
    .string "I understand...\n"
    .string "Come again...$"

SouthernEncampment_Script1_Text2:
    .string "Okay...\n"
    .string "Let's begin...$"

SouthernEncampment_Script1_Text3:
    .string "As the man begins chanting some kind\n"
    .string "of spell, the reality slowly starts\l"
    .string "to peel away.\p"
    .string "You feel your soul leaving your body\n"
    .string "and entering a brand new one.\p"
    .string "You wake up shortly afterwards,\n"
    .string "feeling newly born...$"

SouthernEncampment_Script2:
    lock
    faceplayer
    msgbox SouthernEncampment_Script2_Text
    release
    end

SouthernEncampment_Script2_Text:
    .string "We, the adepts of the Spirit Releasing\n"
    .string "Therapy, strongly believe in something\l"
    .string "we like to call {LQUOT}Fun Values{RQUOT}.\p"
    .string "Apparently, some things in Glitchland\n"
    .string "may be different for every person.\p"
    .string "People might say different things, or\n"
    .string "appear in different locations.\p"
    .string "It's all determined by a single number,\n"
    .string "chosen when you first appear.\p"
    .string "But here we can change that number,\n"
    .string "so maybe you discover something new.\p"
    .string "At least, that's the theory. We don't\n"
    .string "know if that's really the truth.$"
