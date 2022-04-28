.align 4

MysteryZone_MapInitCode:
    bx lr

StrangeSign_SetTargetMap:
    ldr r0, =zWarpTargetData
    ldr r1, =0x18110100
    str r1, [r0]
    ldr r0, =zWarpTargetDirection
    mov r1, #0
    strb r1, [r0]
    ldr r0, =zSkipMapExitMovement
    mov r1, #0
    strb r1, [r0]
    bx lr

.align 4
.ltorg

MysteryZone_MapInitScript:
    end

MysteryZone_Script1:
    lock
    faceplayer
    msgbox MysteryZone_Script1_Text, MSGBOX_YESNO
    compare VAR_RESULT, YES
    goto_if_eq MysteryZone_WarpOut
    release
    end
MysteryZone_WarpOut:
    callnative StrangeSign_SetTargetMap
    goto WarpScript

MysteryZone_Script1_Text:
    .string "You have attempted to load an\n"
    .string "invalid or inexistent map.\p"
    .string "Either you found a serious bug, or\n"
    .string "you're just a dirty hacker.\p"
    .string "Warp back to Central Square?$"