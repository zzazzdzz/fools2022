.align 4

GlitchlandMansion_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

GlitchlandMansion_SetTargetMap:
    ldr r0, =zWarpTargetData
    ldr r1, =0x21102276
    str r1, [r0]
    ldr r0, =zWarpTargetDirection
    mov r1, #1
    strb r1, [r0]
    ldr r0, =zSkipMapExitMovement
    mov r1, #0
    strb r1, [r0]
    bx lr

.align 4
.ltorg

GlitchlandMansion_MapInitScript:
    end

GlitchlandMansion_Script1:
    lock
    faceplayer
    msgbox GlitchlandMansion_Script1_Text
    closemessage
    delay 22
    applymovement 1, GlitchlandMansion_Script1_Turn
    waitmovement 1
    delay 44
    msgbox GlitchlandMansion_Script1_Text2
    closemessage
    applymovement 1, GlitchlandMansion_Script1_GoIn
    waitmovement 1
    setflag FLAG_MANSION_PICKING1
    clearflag FLAG_MANSION_PICKING3
    removeobject 1
    removeobject 2
    playse SE_DOOR
    delay 44
    callnative GlitchlandMansion_SetTargetMap
    goto WarpScript
GlitchlandMansion_Script1_GoIn:
    walk_up
    step_end
GlitchlandMansion_Script1_Turn:
    face_up
    step_end

GlitchlandMansion_Script1_Text:
    .string "So, you ready? Let's see what's the\n"
    .string "deal about this lock.$"

GlitchlandMansion_Script1_Text2:
    .string "I'm going to use this wiper insert as\n"
    .string "a turning tool, and a medium hook\l"
    .string "in eighteen thousands.\p"
    .string "Click out of one...\n"
    .string "Nothing on two...\p"
    .string "... ... ... ... ... ...\n"
    .string "... ... ... ... ... ...\p"
    .string "Aaaand we got this open.\n"
    .string "I'll meet you inside!$"

GlitchlandMansion_Script2:
    lock
    msgbox GlitchlandMansion_Script2_Text
    release
    end

GlitchlandMansion_Script2_Text:
    .string "Door broke.\n"
    .string "It's impossible to go through.$"

GlitchlandMansion_Script3:
    lock
    msgbox GlitchlandMansion_Script3_Text
    release
    end

GlitchlandMansion_Script3_Text:
    .string "A broken door. The hole is too small\n"
    .string "to fit in.$"

GlitchlandMansion_Script4:
    lock
    msgbox GlitchlandMansion_Script4_Text
    release
    end

GlitchlandMansion_Script4_Text:
    .string "Inside the trash can... there's some\n"
    .string "trash! Unbelievable!$"

GlitchlandMansion_Script5:
    lock
    msgbox GlitchlandMansion_Script5_Text
    checkflag FLAG_CHECKOUT_DOOR
    goto_if TRUE, GlitchlandMansion_Script5_End
    setflag FLAG_CHECKOUT_DOOR
    call SyncProgressScript
GlitchlandMansion_Script5_End:
    release
    end

GlitchlandMansion_Script5_Text:
    .string "The door is locked. Looks like it's\n"
    .string "a standard pin tumbler lock design.$"

GlitchlandMansion_Retry:
    lock
    msgbox GlitchlandMansion_Retry_Text
    delay 32
    callnative GlitchlandMansion_SetTargetMap
    goto WARP_SCRIPT

GlitchlandMansion_Retry_Text:
    .string "You want to go inside the MANSION?\n"
    .string "I will work my magic.$"
