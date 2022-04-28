# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x2F81_EasternEncampment/map.json

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
    .word 0x2819

EasternEncampment_MapLayout:
    .word 12
    .word 8
    .word EasternEncampment_MapBorder
    .word EasternEncampment_MapData
    .word gTileset_Building
    .word gTileset_Facility

.align 4
EasternEncampment_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_WOMAN_2, 0, 2, 3, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, EasternEncampment_Script1, 0
    object_event 2, OBJ_EVENT_GFX_MAN_4, 0, 6, 4, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, EasternEncampment_Script2, 0

.align 4
EasternEncampment_MapCoordEvents:
EasternEncampment_WarpCoordEvents:
    coord_event 2, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 3, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
EasternEncampment_MapBGEvents:
    bg_event 10, 3, 0, BG_EVENT_PLAYER_FACING_ANY, EasternEncampment_Script3
    bg_event 10, 6, 0, BG_EVENT_PLAYER_FACING_ANY, EasternEncampment_Script4
    bg_event 6, 6, 0, BG_EVENT_PLAYER_FACING_ANY, EasternEncampment_Script5
    bg_event 6, 3, 0, BG_EVENT_PLAYER_FACING_ANY, EasternEncampment_Script6

.align 4
EasternEncampment_MapEvts:
    map_events 2, EasternEncampment_MapObjectEvents, 0, 0, 2, EasternEncampment_MapCoordEvents, 4, EasternEncampment_MapBGEvents

.align 4
EasternEncampment_MapBorder:
    .byte 0x01, 0x02, 0x01, 0x02, 0x01, 0x02, 0x01, 0x02

.align 4
EasternEncampment_MapData:
    .hword 0xc788, 0xa788, 0xa788, 0xc789, 0xc788, 0xc788, 0xb788, 0xc788, 0xc789, 0xc788, 0xc788, 0xa788
    .hword 0xc790, 0xb790, 0xb790, 0xa791, 0xc790, 0xa790, 0xa790, 0xa790, 0xb791, 0xb790, 0xb790, 0xc790
    .hword 0xa7a5, 0xc7a6, 0x3384, 0x3380, 0x3380, 0x3380, 0x33a3, 0x33a4, 0x3380, 0x3380, 0x33a3, 0x33a4
    .hword 0xb7ad, 0xc7ae, 0x3384, 0x3380, 0x3380, 0x3380, 0xc7ab, 0xc7ac, 0x3380, 0x3380, 0xc7ab, 0xa7ac
    .hword 0x3384, 0x3380, 0x3380, 0x3380, 0x3380, 0x3380, 0x33a7, 0x3380, 0x3380, 0x3380, 0x33a7, 0x3380
    .hword 0x3384, 0x3380, 0x3380, 0x3380, 0x3380, 0x3380, 0x33a3, 0x33a4, 0x3380, 0x3380, 0x33a3, 0x33a4
    .hword 0x3384, 0x3380, 0x3380, 0x3380, 0x3380, 0x3380, 0xb7ab, 0xc7ac, 0x3380, 0x3380, 0xa7ab, 0xb7ac
    .hword 0x3384, 0x3380, 0x3206, 0x3207, 0x3380, 0x3380, 0x33a7, 0x3380, 0x3380, 0x3380, 0x33a7, 0x3380

.align 4
EasternEncampment_MapConnections:
    .hword 12088
    .byte 21, 3
    .hword 12088
    .byte 21, 3

.align 4
EasternEncampment_MapName:
    .string "EASTERN CAMP$"

# scripts/2F81_EasternEncampment.s

.align 4

EasternEncampment_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

EasternEncampment_MapInitScript:
    end

EasternEncampment_Script1:
    lock
    faceplayer
    msgbox EasternEncampment_Script1_Text
    release
    end

EasternEncampment_Script1_Text:
    .string "We?\n"
    .string "We're just a humble game studio.\p"
    .string "Since 2018, we're working on our launch\n"
    .string "title: Gears of Halo, Theft Auto 5.\p"
    .string "We were also chosen by Valve to aid\n"
    .string "in production of Half-Life 3.$"

EasternEncampment_Script2:
    lock
    faceplayer
    msgbox EasternEncampment_Script2_Text
    release
    end

EasternEncampment_Script2_Text:
    .string "At our game studio, we value\n"
    .string "simplicity above everything else.\p"
    .string "That's why we program all of our\n"
    .string "games in Assembly.\p"
    .string "It's the simplest programming language,\n"
    .string "no complicated constructs.\p"
    .string "I think our launch title should be\n"
    .string "ready in just 2 or 3 years.$"

EasternEncampment_Script3:
    lock
    msgbox EasternEncampment_Script3_Text
    release
    end

EasternEncampment_Script3_Text:
    .string "It's the game program. Messing with\n"
    .string "it could bug out the game!$"

EasternEncampment_Script4:
    lock
    msgbox EasternEncampment_Script4_Text
    release
    end

EasternEncampment_Script4_Text:
    .string "It's a workstation with a Maxtor\n"
    .string "7200 RPM hard drive attached.\p"
    .string "... ... ... ... ...\n"
    .string "... ... ... ... ...\p"
    .string "Wait, this isn't a Maxtor.\n"
    .string "This is a Quantum Bigfoot!$"

EasternEncampment_Script5:
    lock
    msgbox EasternEncampment_Script5_Text
    release
    end

EasternEncampment_Script5_Text:
    .string "Build failed: 913 errors, 213 warnings.\n"
    .string "That's what it says on the screen.$"

EasternEncampment_Script6:
    lock
    msgbox EasternEncampment_Script6_Text
    release
    end

EasternEncampment_Script6_Text:
    .string "The screen is filled with assembly\n"
    .string "instructions that you don't understand.$"
