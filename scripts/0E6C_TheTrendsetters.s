.align 4

TheTrendsetters_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

TheTrendsetters_MapInitScript:
    end

TheTrendsetters_Script1:
    lock
    faceplayer
    bufferstring STR_VAR_2, TrendyPhraseString
    msgbox TheTrendsetters_Script1_Text
    release
    end

TheTrendsetters_Script1_Text:
    .string "I told my kids all about\n"
    .string "{STR_VAR_2}.\p"
    .string "I also bought them a lot of\n"
    .string "{LQUOT}{STR_VAR_2}{RQUOT}\l"
    .string "themed merchandise.$"

TheTrendsetters_Script2:
    lock
    faceplayer
    bufferstring STR_VAR_2, TrendyPhraseString
    msgbox TheTrendsetters_Script2_Text
    release
    end

TheTrendsetters_Script2_Text:
    .string "I just can't stop thinking about\n"
    .string "{STR_VAR_2}!\p"
    .string "{STR_VAR_2} is really\n"
    .string "the best thing ever conceived!$"

TheTrendsetters_Script3:
    lock
    faceplayer
    bufferstring STR_VAR_2, TrendyPhraseString
    msgbox TheTrendsetters_Script3_Text
    release
    end

TheTrendsetters_Script3_Text:
    .string "I got into {STR_VAR_2},\n"
    .string "and I lost 10 pounds with no effort!\p"
    .string "I believe {STR_VAR_2}\n"
    .string "is truly the cure for everything.$"

TheTrendsetters_Script4:
    lock
    faceplayer
    bufferstring STR_VAR_2, TrendyPhraseString
    msgbox TheTrendsetters_Script4_Text
    release
    end

TheTrendsetters_Script4_Text:
    .string "This WINGULL is daydreaming about\n"
    .string "{STR_VAR_2}.$"

TrendyPhraseString:
    .ascii "--TRENDYPHRASEPLACEHOLDER--"
	.byte 0xff