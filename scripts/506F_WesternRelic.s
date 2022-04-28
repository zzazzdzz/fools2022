.align 4

WesternRelic_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

WesternRelic_MapInitScript:
    end

WesternRelic_Script1:
    lock
    removeobject 1
    giveitem 4
    setflag FLAG_RECEIVED_BALL9
    setflag FLAG_WESTERN_RELIC_ITEM
    call SyncProgressScript
    release
    end

WesternRelic_Script2:
    lock
    braillemessage WesternRelic_Braille
	waitbuttonpress
	closebraillemessage
    releaseall
    end

WesternRelic_Braille:
    .byte 13, 37, 69, 4, 2, 0
    .braille "TRENDY PHRASE$"
