.align 4

GlitchologyMuseum_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

GlitchologyMuseum_MapInitScript:
    end

GlitchologyMuseum_Script1:
    lock
    faceplayer
    msgbox GlitchologyMuseum_Script1_Text
    release
    end

GlitchologyMuseum_Script1_Text:
    .string "Welcome to Glitchland's one and only\n"
    .string "Glitchology Museum!\p"
    .string "We are terribly underfinanced, so we\n"
    .string "don't have particularly many exhibits.\p"
    .string "But there's still plenty of them. Make\n"
    .string "sure to check them out.$"

GlitchologyMuseum_Script2:
    lock
    faceplayer
    msgbox GlitchologyMuseum_Script2_Text
    release
    end

GlitchologyMuseum_Script2_Text:
    .string "Since our leap to newer generations, we\n"
    .string "hardly observe any glitches around us.\p"
    .string "In the past, we had many troubles with\n"
    .string "glitch phenomena in Glitchland.\p"
    .string "But today, our surroundings are rather\n"
    .string "peaceful. Hope it stays that way.$"

GlitchologyMuseum_Script3:
    lock
    faceplayer
    msgbox GlitchologyMuseum_Script3_Text
    release
    end

GlitchologyMuseum_Script3_Text:
    .string "The Glitchology Museum was founded\n"
    .string "by Glitch Research Lab scientists.\p"
    .string "Not only are they documenting all\n"
    .string "current glitch phenomena, but they\l"
    .string "archive glitch history for future\l"
    .string "generations to see. A noble cause!$"

GlitchologyMuseum_Exhibit1:
    lock
    msgbox GlitchologyMuseum_Exhibit1_Text
    release
    end

GlitchologyMuseum_Exhibit1_Text:
    .string "The computer displays an interactive\n"
    .string "documentary, which explains various\l"
    .string "first-generation glitches.$"

GlitchologyMuseum_Exhibit2:
    lock
    msgbox GlitchologyMuseum_Exhibit2_Text
    release
    end

GlitchologyMuseum_Exhibit2_Text:
    .string "The bones of the Aerodactyl Fossil\n"
    .string "Missingno., circa 1995.$"

GlitchologyMuseum_Exhibit3:
    lock
    msgbox GlitchologyMuseum_Exhibit3_Text
    release
    end

GlitchologyMuseum_Exhibit3_Text:
    .string "A leaf of an exploding Bulbasaur.\p"
    .string "{LQUOT}This Bulbasaur, which belonged to\n"
    .string "a trainer named ZZEZZKZZ, exploded\l"
    .string "in a fight against Charizard 'M, hoping\l"
    .string "to protect its owner to the very end.{RQUOT}$"

GlitchologyMuseum_Exhibit4:
    lock
    msgbox GlitchologyMuseum_Exhibit4_Text
    release
    end

GlitchologyMuseum_Exhibit4_Text:
    .string "Glitch items: 3F, 4F and 5F, are\n"
    .string "enclosed in glass capsules.\p"
    .string "{LQUOT}These items were commonly used\n"
    .string "by adventurers in the past, due to\l"
    .string "their unintended, beneficial effects.{RQUOT}$"
