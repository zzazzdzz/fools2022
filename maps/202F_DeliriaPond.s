# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x202F_DeliriaPond/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

DeliriaPond_MapHeader:
    .word DeliriaPond_MapLayout
    .word DeliriaPond_MapEvts
    .word NULL
    .word NULL
    .hword MUS_RG_SEVII_CAVE
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word DeliriaPond_MapInitCode+1
    .word DeliriaPond_MapConnections
    .word DeliriaPond_MapInitScript
    .word DeliriaPond_MapName
    .word 0x2200

DeliriaPond_MapLayout:
    .word 28
    .word 26
    .word DeliriaPond_MapBorder
    .word DeliriaPond_MapData
    .word gTileset_General
    .word gTileset_Mauville

.align 4
DeliriaPond_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_BUG_CATCHER, 0, 11, 16, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, DeliriaPond_Script1, 0
    object_event 2, OBJ_EVENT_GFX_POKEFAN_M, 0, 19, 18, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 2, 0, TRAINER_TYPE_NONE, 0, DeliriaPond_Script2, 0
    object_event 3, OBJ_EVENT_GFX_PICNICKER, 0, 17, 10, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, DeliriaPond_Script3, 0
    object_event 4, OBJ_EVENT_GFX_SWIMMER_F, 0, 23, 11, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, DeliriaPond_Script4, 0
    object_event 5, OBJ_EVENT_GFX_BOY_3, 0, 22, 5, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 2, 0, TRAINER_TYPE_NONE, 0, DeliriaPond_Script5, 0

.align 4
DeliriaPond_MapCoordEvents:
DeliriaPond_WarpCoordEvents:
    coord_event 7, 16, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 17, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 18, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 19, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
DeliriaPond_MapBGEvents:
    bg_event 11, 15, 0, BG_EVENT_PLAYER_FACING_ANY, DeliriaPond_Script6
    bg_event 24, 18, 0, BG_EVENT_PLAYER_FACING_ANY, DeliriaPond_Script7

.align 4
DeliriaPond_MapEvts:
    map_events 5, DeliriaPond_MapObjectEvents, 0, 0, 4, DeliriaPond_MapCoordEvents, 2, DeliriaPond_MapBGEvents

.align 4
DeliriaPond_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
DeliriaPond_MapData:
    .hword 0xa5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xb5d5
    .hword 0xa5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xa5e4, 0xa5e5, 0xc5e4, 0xc5e5, 0xa5e4, 0xb5e5, 0xa5e4, 0xb5e5, 0xc5e4, 0xc5e5, 0xc5e4, 0xb5e5, 0xb5e4, 0xc5e5, 0xb5e4, 0xc5e5, 0xa5e4, 0xc5e5, 0xa5e4, 0xb5e5
    .hword 0xb5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xa40d, 0xb40d, 0xb40d, 0xb40d, 0xc40d, 0xa40d, 0xc40d, 0xa40d, 0xa40d, 0xc40d, 0xc40d, 0xb40d, 0xc40d, 0xb40d, 0xa40d, 0xb40d, 0xa40d, 0xc40d, 0xa40d, 0xb40d
    .hword 0xc5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xb680, 0xc691, 0xa691, 0xc691, 0xb691, 0xb691, 0xc691, 0xb691, 0xb691, 0xa691, 0xa691, 0xb691, 0xc691, 0xc691, 0xa691, 0xb691, 0xb691, 0xa691, 0xc691, 0xa682
    .hword 0xb5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xa688, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xa68a
    .hword 0xa5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xa688, 0x3001, 0x1188, 0x1189, 0x1189, 0x1189, 0x1189, 0x118a, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xa68a
    .hword 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xb688, 0x3001, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0xa691, 0xa691, 0xb691, 0xc691, 0xb691, 0xb691, 0xb691, 0xa691, 0xc691, 0xb691, 0x3001, 0xc68a
    .hword 0xa5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xb688, 0x3001, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x119a, 0x1189, 0x1189, 0x1189, 0x1189, 0x1189, 0x1189, 0x1189, 0x1189, 0x1189, 0x118a, 0x3001, 0xa68a
    .hword 0xa5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xb688, 0x3001, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x3001, 0xc68a
    .hword 0xb5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xb688, 0x3001, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x3001, 0xb68a
    .hword 0xa5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xa688, 0x3001, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x3002, 0x3002, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x3001, 0xc68a
    .hword 0xc5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xb688, 0x3001, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x3001, 0x3001, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x3001, 0xa68a
    .hword 0xb5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xb688, 0x3001, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x119a, 0x1189, 0x1189, 0x1198, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x3001, 0xa68a
    .hword 0xb5e4, 0xb5e5, 0xc5e4, 0xb5e5, 0xb5e4, 0xa5e5, 0xb5e4, 0xc5e5, 0xc688, 0x3001, 0x3002, 0x3002, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x3001, 0xa68a
    .hword 0xb40d, 0xa40d, 0xc40d, 0xa40d, 0xc40d, 0xc40d, 0xa40d, 0xa40d, 0xb688, 0x3001, 0x31d0, 0x31d2, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x3001, 0xa68a
    .hword 0xc691, 0xc691, 0xa691, 0xb691, 0xb691, 0xb691, 0xa691, 0xb691, 0xa690, 0xb691, 0x31d8, 0xb403, 0x3002, 0x3002, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0xc402, 0xc402, 0xc402, 0xc402, 0x3001, 0xb68a
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x31d8, 0x31d9, 0x31d2, 0x3001, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xa68a
    .hword 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d9, 0x31d9, 0x31d9, 0x31d2, 0x3002, 0x3002, 0x3002, 0x3002, 0x3002, 0x3002, 0x3002, 0x3002, 0x31d0, 0x31d1, 0x31d1, 0x31d2, 0x3001, 0xa68a
    .hword 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31d9, 0x31da, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x31d8, 0x31d9, 0xb403, 0x31da, 0x3001, 0xc68a
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x31d8, 0x31d9, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d9, 0x31d9, 0x31e1, 0x31e2, 0x3001, 0xc68a
    .hword 0xa691, 0xc691, 0xa691, 0xc691, 0xa691, 0xa691, 0xb691, 0xb691, 0xb680, 0xc691, 0x3001, 0x3001, 0x31e0, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e2, 0x3001, 0x3001, 0x3001, 0xb68a
    .hword 0xa5c6, 0xa5c7, 0xa5c6, 0xc5c7, 0xb5c6, 0xb5c7, 0xc5c6, 0xc5c7, 0xc688, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xa68a
    .hword 0xa5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xc690, 0xa691, 0xa691, 0xb691, 0xa691, 0xb691, 0xc691, 0xc691, 0xa691, 0xb691, 0xc691, 0xb691, 0xa691, 0xa691, 0xb691, 0xa691, 0xc691, 0xb691, 0xc691, 0xc692
    .hword 0xb5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xc5c6, 0xa5c7, 0xa5c6, 0xa5c7, 0xb5c6, 0xc5c7, 0xb5c6, 0xb5c7, 0xa5c6, 0xb5c7, 0xa5c6, 0xb5c7, 0xc5c6, 0xa5c7, 0xa5c6, 0xc5c7, 0xb5c6, 0xa5c7, 0xa5c6, 0xb5c7
    .hword 0xc5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xa5d5
    .hword 0xc5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xb5dd

.align 4
DeliriaPond_MapConnections:
    .hword 0x1f3a
    .byte 156, 16
    .hword 0x1f3a
    .byte 156, 16
    .hword 0x1f3a
    .byte 156, 16
    .hword 0x1f3a
    .byte 156, 16

.align 4
DeliriaPond_MapName:
    .string "DELIRIA$"

# scripts/202F_DeliriaPond.s

.align 4

DeliriaPond_MapInitCode:
    bx lr

DeliriaPond_MapInitScript:
    end

DeliriaPond_Script1:
    lock
    faceplayer
    msgbox DeliriaPond_Script1_Text
    release
    end

DeliriaPond_Script1_Text:
    .string "{JPN}i watch after my pokeman\n"
    .string "its right in front of me!$"

DeliriaPond_Script2:
    lock
    faceplayer
    msgbox DeliriaPond_Script2_Text
    release
    end

DeliriaPond_Script2_Text:
    .string "{JPN}i feel very weird..\n"
    .string "oh no .. am i gregnant?$"

DeliriaPond_Script3:
    lock
    faceplayer
    msgbox DeliriaPond_Script3_Text
    release
    end

DeliriaPond_Script3_Text:
    .string "{JPN}please help !!!\n"
    .string "how do i swim ??$"

DeliriaPond_Script4:
    lock
    faceplayer
    msgbox DeliriaPond_Script4_Text
    release
    end

DeliriaPond_Script4_Text:
    .string "{JPN}please help !!!\n"
    .string "how to return to land ??$"

DeliriaPond_Script5:
    lock
    faceplayer
    msgbox DeliriaPond_Script5_Text
    release
    end

DeliriaPond_Script5_Text:
    .string "{JPN}heya !!\n"
    .string "you are new here ?\p"
    .string "can i be ur friend ??\n"
    .string "please !!$"

DeliriaPond_Script6:
    lock
    faceplayer
    msgbox DeliriaPond_Script6_Text
    release
    end

DeliriaPond_Script6_Text:
    .string "A signpost. The person in front keeps\n"
    .string "hugging it affectionately, so it's\l"
    .string "impossible to read...$"

DeliriaPond_Script7:
    lock
    faceplayer
    msgbox DeliriaPond_Script7_Text
    release
    end

DeliriaPond_Script7_Text:
    .string "An empty sign.\n"
    .string "Literally nothing's written on it.$"