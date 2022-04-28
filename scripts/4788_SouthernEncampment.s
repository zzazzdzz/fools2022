.align 4

SouthernEncampment_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

SouthernCamp_ChangeToFeminineAndSetTargetMap:
    ldr r0, =gSaveBlock2Ptr
    ldr r0, [r0]
    mov r1, #1
    strb r1, [r0, #0x08]
    b SouthernCamp_SetTargetMap
SouthernCamp_ChangeFromFeminineAndSetTargetMap:
    ldr r0, =gSaveBlock2Ptr
    ldr r0, [r0]
    mov r1, #0
    strb r1, [r0, #0x08]
SouthernCamp_SetTargetMap:
    ldr r0, =zWarpTargetData
    ldr r1, =0x100f472b
    str r1, [r0]
    ldr r0, =zWarpTargetDirection
    mov r1, #0
    strb r1, [r0]
    bx lr

.align 4
.ltorg

SouthernEncampment_MapInitScript:
    end

SouthernCamp_Script1:
    lock
    faceplayer
    checkflag FLAG_HEART_SCALE_RETURNED
    goto_if TRUE, SouthernCamp_Script1_Transform
    checkflag FLAG_MANSION_GOT_SCALE
    goto_if TRUE, SouthernCamp_Script1_GiveScale
    msgbox SouthernCamp_Script1_Text
    release
    end

SouthernCamp_Script1_GiveScale:
    setflag FLAG_HEART_SCALE_RETURNED
    msgbox SouthernCamp_Script1_Text
    message SouthernCamp_Script1_Text2
    waitmessage
    playfanfare MUS_RG_OBTAIN_KEY_ITEM
    waitfanfare
    call SyncProgressScript
    msgbox SouthernCamp_Script1_Text3
    release
    end

SouthernCamp_Script1_Transform:
    checkplayergender
    compare VAR_RESULT, MALE
    goto_if_eq SouthernCamp_Script1_MToF
SouthernCamp_Script1_FToM:
    msgbox SouthernCamp_Script1_Text7, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq SouthernCamp_Script1_NoToM
    msgbox SouthernCamp_Script1_Text9
    playse SE_PIKE_CURTAIN_CLOSE
    fadescreen 1
    waitse
    callnative SouthernCamp_ChangeFromFeminineAndSetTargetMap
    goto WARP_SCRIPT
SouthernCamp_Script1_MToF:
    msgbox SouthernCamp_Script1_Text4, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq SouthernCamp_Script1_NoToF
    msgbox SouthernCamp_Script1_Text6
    playse SE_PIKE_CURTAIN_CLOSE
    fadescreen 1
    waitse
    callnative SouthernCamp_ChangeToFeminineAndSetTargetMap
    goto WARP_SCRIPT
SouthernCamp_Script1_NoToF:
    msgbox SouthernCamp_Script1_Text5
    release
    end
SouthernCamp_Script1_NoToM:
    msgbox SouthernCamp_Script1_Text8
    release
    end

SouthernCamp_Script1_Text:
    .string "Oh, hi! I might look like a girl, but I'm\n"
    .string "actually a boy.\p"
    .string "Say, have you perhaps stumbled across\n"
    .string "a HEART SCALE?\p"
    .string "I think it would make for a really cute\n"
    .string "head accessory, but I have trouble\l"
    .string "finding any around here...$"

SouthernCamp_Script1_Text2:
    .string "Wow, you actually have a HEART SCALE!\n"
    .string "Thank you so much!$"

SouthernCamp_Script1_Text3:
    .string "I've been looking for one for years!\n"
    .string "I don't know how I can repay you.\p"
    .string "Well, if you wanted, I could teach you\n"
    .string "the sacred arts of crossdressing.\p"
    .string "Just speak to me if you ever wanted to\n"
    .string "take up a feminine look.$"

SouthernCamp_Script1_Text4:
    .string "Oh, hi! I might look like a girl, but I'm\n"
    .string "actually a boy.\p"
    .string "Are you inspired? Do you perhaps want\n"
    .string "to take up a feminine look yourself?$"

SouthernCamp_Script1_Text5:
    .string "No? That's OK. After all, people can\n"
    .string "be really judgmental around here.\p"
    .string "You do not want to end up in Deliria,\n"
    .string "trust me!$"

SouthernCamp_Script1_Text6:
    .string "Great! If I recall correctly, I happen\n"
    .string "to have a spare set of femboy attire.\l"
    .string "This will only take a minute...$"

SouthernCamp_Script1_Text7:
    .string "Oh, hi! I might look like a girl, but I'm\n"
    .string "actually a boy. Just like you!\p"
    .string "Are you satisfied with your new look?\n"
    .string "Or do you want to swap back?$"

SouthernCamp_Script1_Text8:
    .string "I understand. Once you put on the cat\n"
    .string "ears, you never go back. Ha ha!$"

SouthernCamp_Script1_Text9:
    .string "Okay! Let me get your original clothes\n"
    .string "real quick!$"