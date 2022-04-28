.align 4

GlitchlandMansion_MapInitCode:
    bx lr

GlitchlandMansion_MapInitScript:
    end

GlitchlandMansion_Script1:
    lock
    removeobject 1
    giveitem 111
    setflag FLAG_MANSION_GOT_SCALE
    call SyncProgressScript
    release
    end
