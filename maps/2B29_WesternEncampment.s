# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x2B29_WesternEncampment/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

WesternEncampment_MapHeader:
    .word WesternEncampment_MapLayout
    .word WesternEncampment_MapEvts
    .word NULL
    .word NULL
    .hword MUS_RG_SEVII_45
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word WesternEncampment_MapInitCode+1
    .word WesternEncampment_MapConnections
    .word WesternEncampment_MapInitScript
    .word WesternEncampment_MapName
    .word 0x2819

WesternEncampment_MapLayout:
    .word 32
    .word 16
    .word WesternEncampment_MapBorder
    .word WesternEncampment_MapData
    .word gTileset_General
    .word gTileset_Petalburg

.align 4
WesternEncampment_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_BOY_1, 0, 15, 8, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, WesternEncampment_Script1, 0
    object_event 2, OBJ_EVENT_GFX_WOMAN_5, 0, 13, 15, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 2, 0, TRAINER_TYPE_NONE, 0, WesternEncampment_Script2, 0

.align 4
WesternEncampment_MapCoordEvents:
    coord_event 26, 3, 0, SCRIPT_NO_TRIGGER, 0, WesternEncampment_TP
WesternEncampment_WarpCoordEvents:
    coord_event 7, 4, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 5, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 6, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 9, 11, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 11, 3, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 21, 3, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 24, 12, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 24, 13, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 24, 14, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 24, 15, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
WesternEncampment_MapBGEvents:
    bg_event 15, 11, 0, BG_EVENT_PLAYER_FACING_ANY, WesternEncampment_Script3
    bg_event 16, 8, 0, BG_EVENT_PLAYER_FACING_ANY, WesternEncampment_Script4

.align 4
WesternEncampment_MapEvts:
    map_events 2, WesternEncampment_MapObjectEvents, 0, 0, 12, WesternEncampment_MapCoordEvents, 2, WesternEncampment_MapBGEvents

.align 4
WesternEncampment_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
WesternEncampment_MapData:
    .hword 0xa5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xa66c, 0xa66d, 0xb66d, 0xb66e, 0xa5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xa66c, 0xb66d, 0xb66d, 0xb66e, 0xa5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xa5d5
    .hword 0xb5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xb674, 0xc675, 0xa675, 0xc676, 0xb5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xa674, 0xc675, 0xb675, 0xb676, 0xc5e4, 0xa5e5, 0xb5e4, 0xa5e5, 0xb5dc, 0xa5dd, 0xa5dc, 0xc5dd
    .hword 0xb5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xb67c, 0xa67f, 0xc67d, 0xa67e, 0xb5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xa67c, 0xa67f, 0xc67d, 0xa67e, 0xc4e0, 0x3103, 0x3104, 0x3105, 0xc5d4, 0xc5d5, 0xc5d4, 0xb5d5
    .hword 0xb5e4, 0xa5e5, 0xc5e4, 0xc5e5, 0xc5e4, 0xa5e5, 0xb5e4, 0xb5e5, 0xa5e4, 0xa5e5, 0xc684, 0x3287, 0xa68f, 0xc686, 0xb5e4, 0xa5e5, 0xa5e4, 0xa5e5, 0xa5e4, 0xa5e5, 0xb684, 0x3287, 0xa68f, 0xc686, 0x3001, 0x310b, 0x310c, 0x310d, 0xc5dc, 0xc5dd, 0xb5dc, 0xa5dd
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3113, 0x3114, 0x3115, 0xc5d4, 0xc5d5, 0xa5d4, 0xb5d5
    .hword 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x311a, 0x3001, 0xa5dc, 0xa5dd, 0xa5dc, 0xb5dd
    .hword 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3121, 0x3121, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x312a, 0xa4e0, 0xa5d4, 0xb5d5, 0xb5d4, 0xa5d5
    .hword 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3004, 0x3120, 0x3122, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0xc5dc, 0xc5dd, 0xc5dc, 0xb5dd
    .hword 0xa5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb60c, 0xa60d, 0xa60d, 0xc60d, 0xa60d, 0xb60d, 0xa60e, 0x3001, 0xc4e0, 0x3001, 0x3120, 0x3122, 0xa5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xb5d5
    .hword 0xb5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xb614, 0xc615, 0xb615, 0xa615, 0xb615, 0xa615, 0xc616, 0x3004, 0x3001, 0x3001, 0x3120, 0x3122, 0xb5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xb5dd
    .hword 0xa5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xa61e, 0xc641, 0xc62e, 0xc60f, 0xb62e, 0xa60f, 0xc61f, 0x3001, 0x3004, 0x3001, 0x3120, 0x3122, 0xc5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xc5d5
    .hword 0xc5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xa626, 0x3249, 0xc636, 0xc617, 0xb636, 0xb617, 0xb627, 0xa403, 0x3001, 0x3004, 0x3120, 0x3122, 0xb5e4, 0xa5e5, 0xa5e4, 0xb5e5, 0xb5e4, 0xc5e5, 0xc5e4, 0xc5e5, 0xb5e4, 0xc5e5, 0xb5e4, 0xb5e5
    .hword 0xa5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3120, 0x3122, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0xa5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0x3118, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3121, 0x3121, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119, 0x3119
    .hword 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0x3128, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129
    .hword 0xc5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf

.align 4
WesternEncampment_MapConnections:
    .hword 0x2c29
    .byte 156, 4
    .hword 0x2c29
    .byte 156, 4
    .hword 0x2c29
    .byte 156, 4
    .hword 0x2c29
    .byte 156, 4
    .hword 11134
    .byte 4, 137
    .hword 11132
    .byte 4, 136
    .hword 11133
    .byte 4, 136
    .hword 0x2731
    .byte 136, 148
    .hword 0x2731
    .byte 136, 148
    .hword 0x2731
    .byte 136, 148
    .hword 0x2731
    .byte 136, 148

.align 4
WesternEncampment_MapName:
    .string "WESTERN CAMP$"

# scripts/2B29_WesternEncampment.s

.align 4

WesternEncampment_MapInitCode:
    ldr r0, =zLocationFlags
    ldr r1, =LocationFlags
    ldr r2, [r1]
    str r2, [r0]
    ldr r2, [r1, #0x04]
    str r2, [r0, #0x04]
    bx lr

.align 4
LocationFlags:
    .ascii "--FLYFLAGS--"

.align 4
.ltorg

WesternEncampment_MapInitScript:
    end

WesternEncampment_Script1:
    lock
    faceplayer
    msgbox WesternEncampment_Script1_Text
    release
    end

WesternEncampment_Script1_Text:
    .string "The inscription on this rock says:\n"
    .string "{LQUOT}NEVER GIVE UP{RQUOT}.\p"
    .string "It's very inspiring how the ancients\n"
    .string "share their vast knowledge and\l"
    .string "experience with future generations.\p"
    .string "This is why I decided to become\n"
    .string "an explorer.$"

WesternEncampment_Script2:
    lock
    faceplayer
    msgbox WesternEncampment_Script2_Text
    release
    end

WesternEncampment_Script2_Text:
    .string "This town is home to many explorers,\n"
    .string "both amateur and professional.\p"
    .string "Western Glitchland has some of the\n"
    .string "best locations to explore.\p"
    .string "No wonder this town is just filled with\n"
    .string "all kinds of exploration freaks.$"

WesternEncampment_Script3:
    lock
    msgbox WesternEncampment_Script3_Text
    release
    end

WesternEncampment_Script3_Text:
    .string "WESTERN GLITCHLAND\n"
    .string "EXPLORER SINDICATE$"

WesternEncampment_Script4:
    lock
    braillemessage WesternEncampment_Script4_Braille
	waitbuttonpress
	closebraillemessage
    releaseall
    end

WesternEncampment_Script4_Braille:
    .byte 13, 37, 69, 4, 2, 0
    .braille "LETTUCE$"

WesternEncampment_TP:
    lock
    call GenericTPScript
    release
    end

