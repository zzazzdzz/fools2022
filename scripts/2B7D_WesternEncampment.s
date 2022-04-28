.align 4

WesternEncampment_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

WesternEncampment_MapInitScript:
    end

WesternCamp_Interior_Script1:
    lock
    faceplayer
    checkflag FLAG_MANSION_GOT_SCALE
    goto_if TRUE, WesternCamp_Interior_Script1_PostPicking
    checkflag FLAG_CHECKOUT_DOOR
    goto_if FALSE, WesternCamp_Interior_Script1_HaventCheckedDoor
    checkflag FLAG_MANSION_PICKING1
    goto_if TRUE, WesternCamp_Interior_Script1_PrePicking
WesternCamp_Interior_Script1_PrePicking_Done:
    msgbox WesternCamp_Interior_Script1_Text2_Sub
    release
    end

WesternCamp_Interior_Script1_PostPicking:
    msgbox WesternCamp_Interior_Script1_Text3
    release
    end

WesternCamp_Interior_Script1_PrePicking:
    msgbox WesternCamp_Interior_Script1_Text2
    clearflag FLAG_MANSION_PICKING1
    call SyncProgressScript
    release
    end

WesternCamp_Interior_Script1_HaventCheckedDoor:
    msgbox WesternCamp_Interior_Script1_Text
    release
    end

WesternCamp_Interior_Script1_Text:
    .string "Hey. Exploring is fun, but my number\n"
    .string "one hobby is lockpicking.\p"
    .string "It's especially great if I get to\n"
    .string "combine both of those things together.\p"
    .string "Let me know if you find a good\n"
    .string "opportunity to practice my skills.\p"
    .string "Tell me the type of lock, and I'll\n"
    .string "immediately get to picking!$"

WesternCamp_Interior_Script1_Text2:
    .string "Hey. Exploring is fun, but my number\n"
    .string "one hobby is lockpicking.\p"
    .string "Oh, so this spooky abandoned mansion\n"
    .string "has a locked door?\l"
    .string "And it's a pin tumbler design?\p"
WesternCamp_Interior_Script1_Text2_Sub:
    .string "No need to tell me anything more. I'll\n"
    .string "meet you in the mansion.\p"
    .string "I should be able to take care of this\n"
    .string "lock pretty quickly.$"

WesternCamp_Interior_Script1_Text3:
    .string "Exploring that mansion was pretty fun.\n"
    .string "Also a great opportunity to practice my\l"
    .string "lockpicking skills. I give you my thanks.$"
