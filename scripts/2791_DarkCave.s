.align 4

DarkCave_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

DarkCave_MapInitScript:
    end

DarkCave_Script1:
    lock
    faceplayer
    checkflag 0x0011
    goto_if TRUE, DarkCave_Script1_AlreadyBright
    msgbox DarkCave_Script1_Text
    closemessage
    delay 20
	playse SE_SWITCH
	animateflash 0
    setflashradius 0
    setflag 0x0011
DarkCave_Script1_AlreadyBright:
    msgbox DarkCave_Script1_Text2
    release
    end

DarkCave_Script1_Text:
    .string "{JPN}heyooo\n"
    .string "i give light !!$"

DarkCave_Script1_Text2:
    .string "{JPN}now is bright !\n"
    .string "very bright! VERY !!$"

EventScript_StrengthBoulder:
    lock
    faceplayer
    msgbox EventScript_StrengthBoulder_Text
    release
    end

EventScript_StrengthBoulder_Text:
    .string "redacted$"