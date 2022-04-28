# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x3E31_DesignersCreation/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

DesignersCreation_MapHeader:
    .word DesignersCreation_MapLayout
    .word DesignersCreation_MapEvts
    .word NULL
    .word NULL
    .hword MUS_B_FRONTIER
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word DesignersCreation_MapInitCode+1
    .word DesignersCreation_MapConnections
    .word DesignersCreation_MapInitScript
    .word DesignersCreation_MapName
    .word 0x2819

DesignersCreation_MapLayout:
    .word 62
    .word 14
    .word DesignersCreation_MapBorder
    .word DesignersCreation_MapData
    .word gTileset_General
    .word gTileset_Petalburg

.align 4
DesignersCreation_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_NINJA_BOY, 0, 3, 9, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, DesignersCreation_Script1, 0

.align 4
DesignersCreation_MapCoordEvents:
DesignersCreation_WarpCoordEvents:
    coord_event 54, 6, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 54, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 54, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
DesignersCreation_MapBGEvents:
    bg_event 45, 7, 0, BG_EVENT_PLAYER_FACING_ANY, DesignersCreation_Script2
    bg_event 49, 3, 0, BG_EVENT_PLAYER_FACING_ANY, DesignersCreation_Script3
    bg_event 35, 5, 0, BG_EVENT_PLAYER_FACING_ANY, DesignersCreation_Script4
    bg_event 13, 10, 0, BG_EVENT_PLAYER_FACING_ANY, DesignersCreation_Script5
    bg_event 9, 9, 0, BG_EVENT_PLAYER_FACING_ANY, DesignersCreation_Script6

.align 4
DesignersCreation_MapEvts:
    map_events 1, DesignersCreation_MapObjectEvents, 0, 0, 3, DesignersCreation_MapCoordEvents, 5, DesignersCreation_MapBGEvents

.align 4
DesignersCreation_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
DesignersCreation_MapData:
    .hword 0xc5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xc458, 0xa45a, 0xa45a, 0xb45a, 0xb45a, 0xc45a, 0xc45a, 0xb45a, 0xc45a, 0xa45a, 0xc45a, 0xb45a, 0xc45a, 0xa45b, 0xb470, 0xa471, 0xa471, 0xc471, 0xa471, 0xb471, 0xc471, 0xa471, 0xb471, 0xb471, 0xa471, 0xa472, 0xb5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xb5d5
    .hword 0xa5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xc460, 0xc462, 0xc462, 0xb462, 0xb462, 0xa462, 0xa462, 0xc462, 0xa462, 0xc462, 0xa462, 0xb462, 0xb462, 0xb463, 0xb470, 0xc471, 0xb471, 0xa471, 0xb471, 0xb471, 0xc471, 0xa471, 0xa471, 0xb471, 0xc471, 0xb472, 0xb5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xc5dd
    .hword 0xa5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xc4e0, 0x3001, 0xa485, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xb479, 0xa479, 0xc479, 0xa479, 0xb479, 0xa479, 0xa49f, 0xc479, 0xc479, 0xb471, 0xb471, 0xb472, 0x3121, 0x3121, 0x3108, 0x310a, 0x3108, 0x310a, 0x3108, 0x310a, 0x3108, 0x310a, 0x3121, 0x3121, 0x1150, 0x1151, 0x1150, 0x1151, 0xa5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xa5d5
    .hword 0xc5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0x3001, 0x3001, 0xb485, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xc478, 0xa479, 0xa479, 0xc479, 0xb479, 0xc479, 0x30a7, 0xa479, 0xa479, 0xc479, 0xb479, 0xa47a, 0x3121, 0x3121, 0x3108, 0x310a, 0x3108, 0x310a, 0x3108, 0x310a, 0x3108, 0x310a, 0x3121, 0xb403, 0x1158, 0x1159, 0x1158, 0x1159, 0xb5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xa5dd
    .hword 0xb5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xc4e0, 0x3001, 0xc4a5, 0x3121, 0xa418, 0xc40c, 0xb40c, 0xc40c, 0xc40c, 0xa40c, 0xb40c, 0xb41a, 0x3001, 0x3001, 0x3001, 0x3001, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3102, 0xb5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0x3121, 0x3130, 0x3121, 0x3121, 0x3121, 0x3121, 0x3108, 0x310a, 0x3108, 0x310a, 0x10f5, 0x10f5, 0x10f5, 0x10f5, 0x10f5, 0x10f5, 0x1150, 0x1151, 0x1150, 0x1151, 0xb5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xc5d5
    .hword 0xa5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0x3001, 0x3001, 0xa4ad, 0x3121, 0xc420, 0xc414, 0xa414, 0xa414, 0xb414, 0xb414, 0xb414, 0xa422, 0x3001, 0x3001, 0x3001, 0x3001, 0x3111, 0x3111, 0x3111, 0x3111, 0x3109, 0x310a, 0xc5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0x3121, 0xa531, 0x3121, 0x3121, 0x3121, 0x3121, 0x3108, 0x310a, 0x3108, 0x310a, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1158, 0x1159, 0x1158, 0x1159, 0xc5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xa5dd
    .hword 0xa5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0x3001, 0x3001, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x3001, 0xc4e0, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x10f5, 0x10f5, 0x10f5, 0x10f5, 0x10f5, 0x10f5, 0x3108, 0x310a, 0x3004, 0x3001, 0x3004, 0x3001, 0x3004, 0x3001, 0x3004, 0x3001, 0x3121, 0x3121, 0x3121, 0x3121, 0x3121, 0x3121, 0x3108, 0x310a, 0x3108, 0x310a, 0x3121, 0x3121, 0x3121, 0x3121, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x3121, 0x3121, 0x3121, 0x3121, 0x3121, 0x3121, 0x3121, 0x3121, 0x3121, 0x3121
    .hword 0xc5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0x3001, 0x3001, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x3001, 0xa4e0, 0xa4d6, 0x3001, 0xb4d6, 0x3001, 0xc4d6, 0x3001, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x3108, 0x310a, 0x3001, 0x3004, 0x3001, 0x3004, 0x3001, 0x3004, 0x3001, 0x3004, 0x3121, 0x3121, 0x3121, 0x3121, 0x3121, 0x3121, 0x3108, 0x310a, 0x3108, 0x310a, 0x3121, 0xb403, 0x3121, 0x3121, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x3121, 0x3121, 0x3121, 0x3121, 0x3121, 0x3121, 0x3121, 0x3121, 0x3121, 0x3121
    .hword 0xb5d4, 0xc5d5, 0x3001, 0x3001, 0x3001, 0x3001, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x3001, 0xc4e0, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xc485, 0x3001, 0x3004, 0x3001, 0x3004, 0x3001, 0x3108, 0x310a, 0x3004, 0x3001, 0x3004, 0x3001, 0x3004, 0x3001, 0x3121, 0x3121, 0x3121, 0x3121, 0x3129, 0x3129, 0x3129, 0x3129, 0x3108, 0x310a, 0x3108, 0x310a, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x3121, 0x3121, 0xb5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xa5d5
    .hword 0xa5dc, 0xa5dd, 0x3001, 0x3001, 0x3001, 0x3001, 0x31d9, 0x31d9, 0x31d9, 0xa403, 0x3001, 0xb4e0, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xb485, 0x3001, 0x3001, 0x3004, 0x3001, 0x3004, 0x3108, 0x310a, 0x3001, 0x3004, 0x3001, 0x3004, 0x3001, 0x3004, 0x3121, 0x3121, 0x3121, 0x3121, 0xc4e0, 0xc4e0, 0xb4e0, 0xb4e0, 0x3108, 0x310a, 0x3108, 0x310a, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x3121, 0x3121, 0xb5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xb5dd
    .hword 0xa5d4, 0xc5d5, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3001, 0xc4e0, 0x3001, 0xa403, 0x3001, 0x3001, 0x3001, 0xc486, 0x3001, 0x3001, 0x3004, 0x3001, 0x3004, 0x3001, 0x3108, 0x310a, 0x3004, 0x3001, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0xb5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0x3108, 0x310a, 0x3108, 0x310a, 0x31d9, 0x31d9, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0x3129, 0xc5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xa5d5
    .hword 0xc5dc, 0xb5dd, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3001, 0xa4e0, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xa486, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0x3004, 0x3108, 0x310a, 0x3001, 0x3004, 0xc4e0, 0xa4e0, 0xb4e0, 0xc4e0, 0xc4e0, 0xc4e0, 0xa4e0, 0xc4e0, 0xb5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0x3108, 0x310a, 0x3108, 0x310a, 0x31d9, 0x31d9, 0xb4e0, 0xb4e0, 0xa4e0, 0xc4e0, 0xa4e0, 0xc4e0, 0xb4e0, 0xc4e0, 0xa5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xc5dd
    .hword 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xb458, 0xa45a, 0xb45a, 0xc45a, 0xa45a, 0xc45a, 0xb45a, 0xa45a, 0xa45a, 0xc45a, 0xb45a, 0xa45a, 0xc45a, 0xc45a, 0xb45a, 0xa45a, 0xa45a, 0xc45a, 0xc45a, 0xa45a, 0xb45a, 0xc45b, 0xa5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xa5d5
    .hword 0xc5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xb4e0, 0xc4e0, 0xc4e0, 0xc4e0, 0xa4e0, 0xa4e0, 0xb4e0, 0xc4e0, 0xb4e0, 0xb4e0, 0xb460, 0xb462, 0xc462, 0xc462, 0xb462, 0xb462, 0xc462, 0xa462, 0xa462, 0xc462, 0xa462, 0xc462, 0xb462, 0xa462, 0xb462, 0xb462, 0xa462, 0xa462, 0xc462, 0xa462, 0xb462, 0xb463, 0xa5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xc5dd

.align 4
DesignersCreation_MapConnections:
    .hword 0x3d20
    .byte 135, 142
    .hword 0x3d20
    .byte 135, 142
    .hword 0x3d20
    .byte 135, 142

.align 4
DesignersCreation_MapName:
    .string "THE CREATION$"

# scripts/3E31_DesignersCreation.s

.align 4

DesignersCreation_MapInitCode:
    bx lr

DesignersCreation_MapInitScript:
    end

DesignersCreation_Script1:
    lock
    faceplayer
    msgbox DesignersCreation_Script1_Text
    checkflag FLAG_DESIGNER_CREATION
    goto_if TRUE, DesignersCreation_Script1_Fin
    setflag FLAG_DESIGNER_CREATION
    call SyncProgressScript
DesignersCreation_Script1_Fin:
    release
    end

DesignersCreation_Script1_Text:
    .string "You like my map?\n"
    .string "I put a lot of thought into it.\p"
    .string "Thank you for being a beta-tester!$"

DesignersCreation_Script2:
    lock
    msgbox DesignersCreation_Script2_Text
    release
    end

DesignersCreation_Script2_Text:
    .string "Welcome to this great map.\n"
    .string "It's the best map you evar played.\p"
    .string "You will see it, play!\n"
    .string " - Matthew$"

DesignersCreation_Script3:
    lock
    msgbox DesignersCreation_Script3_Text
    release
    end

DesignersCreation_Script3_Text:
    .string "Turn around.\n"
    .string "This is the wrong way!\p"
    .string "You should go left instead.\n"
    .string " - Matthew$"

DesignersCreation_Script4:
    lock
    msgbox DesignersCreation_Script4_Text
    release
    end

DesignersCreation_Script4_Text:
    .string "I am sorry.\n"
    .string "The cave is out of order.\p"
    .string "I don't know how warps work yet.\n"
    .string " - Matthew$"

DesignersCreation_Script5:
    lock
    faceplayer
    msgbox DesignersCreation_Script5_Text
    release
    end

DesignersCreation_Script5_Text:
    .string "Oh no!\n"
    .string "The road is blocked off.\p"
    .string "Maybe there's a different path.\n"
    .string " - Matthew$"

DesignersCreation_Script6:
    lock
    msgbox DesignersCreation_Script6_Text
    release
    end

DesignersCreation_Script6_Text:
    .string "Congraturation!\n"
    .string "This story is happy end.\p"
    .string "Did you like the map I made?\n"
    .string " - Matthew$"

