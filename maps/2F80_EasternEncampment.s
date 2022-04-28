# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x2F80_EasternEncampment/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

EasternEncampment_MapHeader:
    .word EasternEncampment_MapLayout
    .word EasternEncampment_MapEvts
    .word NULL
    .word NULL
    .hword MUS_RG_FUCHSIA
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word EasternEncampment_MapInitCode+1
    .word EasternEncampment_MapConnections
    .word EasternEncampment_MapInitScript
    .word EasternEncampment_MapName
    .word 0x0700

EasternEncampment_MapLayout:
    .word 10
    .word 9
    .word EasternEncampment_MapBorder
    .word EasternEncampment_MapData
    .word gTileset_Building
    .word gTileset_GenericBuilding

.align 4
EasternEncampment_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_TWIN, 0, 5, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, EasternCamp_Script1, 0

.align 4
EasternEncampment_MapCoordEvents:
EasternEncampment_WarpCoordEvents:
    coord_event 3, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 4, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
EasternEncampment_MapBGEvents:

.align 4
EasternEncampment_MapEvts:
    map_events 1, EasternEncampment_MapObjectEvents, 0, 0, 2, EasternEncampment_MapCoordEvents, 0, EasternEncampment_MapBGEvents

.align 4
EasternEncampment_MapBorder:
    .byte 0x01, 0x02, 0x01, 0x02, 0x01, 0x02, 0x01, 0x02

.align 4
EasternEncampment_MapData:
    .hword 0xc686, 0xb687, 0xb679, 0xb67a, 0xb605, 0xa607, 0xb605, 0xc605, 0xb605, 0xa605
    .hword 0xa68e, 0xc68f, 0xc681, 0xc682, 0xa60d, 0xc60f, 0xc60d, 0xb60d, 0xb690, 0xa690
    .hword 0x3296, 0x3297, 0x3289, 0x328a, 0x3224, 0x3224, 0x3224, 0x3224, 0xb698, 0xa698
    .hword 0x3239, 0x3235, 0x3236, 0x3236, 0x3236, 0x3236, 0x3236, 0x3237, 0x3223, 0x3223
    .hword 0x3239, 0x323d, 0x32e1, 0xa648, 0xb649, 0x32e2, 0x323e, 0x323f, 0x3223, 0x3223
    .hword 0x3239, 0x323d, 0x32e1, 0xc650, 0xb651, 0x32e2, 0x323e, 0x323f, 0x3223, 0x3223
    .hword 0x3239, 0x3245, 0x3246, 0x3246, 0x3246, 0x3246, 0x3246, 0x3247, 0x3223, 0x3223
    .hword 0x3239, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3223, 0x3222
    .hword 0x3239, 0x3223, 0x3223, 0x0208, 0x0209, 0x3223, 0x3223, 0x3223, 0x3223, 0xb62a

.align 4
EasternEncampment_MapConnections:
    .hword 12088
    .byte 23, 9
    .hword 12088
    .byte 23, 9

.align 4
EasternEncampment_MapName:
    .string "EASTERN CAMP$"

# scripts/2F80_EasternEncampment.s

.align 4

EasternEncampment_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

EasternEncampment_MapInitScript:
    end

EasternCamp_Script1:
    lock
    faceplayer
    checkflag FLAG_MATH_GIRL
    goto_if TRUE, EasternCamp_Script1_Post
    msgbox EasternCamp_Script1_TextQ, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq EasternCamp_Script1_No
    msgbox EasternCamp_Script1_Text
    callnative GenericNamingScreen
    waitstate
    bufferstring STR_VAR_1, EasternCamp_Script1_CorrectAnswer
    callnative CompareStrings
    compare VAR_RESULT, 0
    goto_if TRUE, EasternCamp_Script1_Correct
    addvar VAR_TEMP_1, 1
    compare_var_to_value VAR_TEMP_1, 8
    goto_if TRUE, EasternCamp_Script1_KindaCorrect
    msgbox EasternCamp_Script1_TextBad
    release
    end
EasternCamp_Script1_No:
    msgbox EasternCamp_Script1_TextN
    release
    end
EasternCamp_Script1_Correct:
    setflag FLAG_MATH_GIRL
    msgbox EasternCamp_Script1_TextGood
    call SyncProgressScript
EasternCamp_Script1_Post:
    msgbox EasternCamp_Script1_TextHint
    release
    end
EasternCamp_Script1_KindaCorrect:
    setflag FLAG_MATH_GIRL
    msgbox EasternCamp_Script1_TextGoodKinda
    call SyncProgressScript
    goto EasternCamp_Script1_Post

EasternCamp_Script1_CorrectAnswer:
    .string "633$"

EasternCamp_Script1_Text:
    .string "Great!\n"
    .string "Here's what I have.\p"
    .string "Train A is exactly 200 miles west of\n"
    .string "train B. Train A starts travelling\l"
    .string "north at a constant speed of 85 mph.\p"
    .string "Then, two hours later, train B starts\n"
    .string "travelling east, at 90 mph.\p"
    .string "Exactly 5 hours after train A starts\n"
    .string "moving, how many miles apart are the\l"
    .string "two trains? Round the result down.\p"
    .string "So, what's the answer?\n"
    .string "Give me an exact number!$"

EasternCamp_Script1_TextQ:
    .string "Wow, this math exercise sure is hard...\n"
    .string "Can you help me with my math homework?\p"
    .string "If you do, I can share an interesting\n"
    .string "secret about the Lost Woods.\l"
    .string "How about it?$"

EasternCamp_Script1_TextN:
    .string "What? You won't?\n"
    .string "Okay then...$"

EasternCamp_Script1_TextGood:
    .string "Hmm, let's see.\n"
    .string "Wow, that actually makes sense!\p"
    .string "I think that's the right answer. Thank\n"
    .string "you for helping me!$"

EasternCamp_Script1_TextBad:
    .string "Hmm, let's see.\n"
    .string "No, that just doesn't seem right.\p"
    .string "I think you must have made an error\n"
    .string "somewhere. Sorry, no hint for you!$"

EasternCamp_Script1_TextGoodKinda:
    .string "Hmm, let's see.\n"
    .string "No! It just doesn't work.\p"
    .string "I give up. I'll just turn in a wrong\n"
    .string "answer. The teacher won't notice.$"

EasternCamp_Script1_TextHint:
    .string "So, about the Lost Woods... You can\n"
    .string "get to the Eastern Edge from there!\p"
    .string "To do that, it's pretty simple.\n"
    .string "Just go east twice, then north twice!$"

# 633
