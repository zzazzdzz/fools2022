# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x4026_BrokenBridge/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

BrokenBridge_MapHeader:
    .word BrokenBridge_MapLayout
    .word BrokenBridge_MapEvts
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
    .word BrokenBridge_MapInitCode+1
    .word BrokenBridge_MapConnections
    .word BrokenBridge_MapInitScript
    .word BrokenBridge_MapName
    .word 0x1900

BrokenBridge_MapLayout:
    .word 32
    .word 28
    .word BrokenBridge_MapBorder
    .word BrokenBridge_MapData
    .word gTileset_General
    .word gTileset_Rustboro

.align 4
BrokenBridge_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_SCHOOL_KID_M, 0, 20, 7, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, BrokenBridge_Script1, 0
    object_event 2, OBJ_EVENT_GFX_ITEM_BALL, 0, 12, 21, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, BrokenBridge_ItemBall, FLAG_RECEIVED_BALL4

.align 4
BrokenBridge_MapCoordEvents:
BrokenBridge_WarpCoordEvents:
    coord_event 7, 6, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 9, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 24, 6, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 24, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 24, 8, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 24, 9, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
BrokenBridge_MapBGEvents:

.align 4
BrokenBridge_MapEvts:
    map_events 2, BrokenBridge_MapObjectEvents, 0, 0, 8, BrokenBridge_MapCoordEvents, 0, BrokenBridge_MapBGEvents

.align 4
BrokenBridge_MapBorder:
    .byte 0x70, 0x01, 0x70, 0x01, 0x70, 0x01, 0x70, 0x01

.align 4
BrokenBridge_MapData:
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xb550, 0xc551, 0xa570, 0xc570, 0xc550, 0xc551, 0xa570, 0xb570, 0xb550, 0xa551, 0xb570, 0xb570, 0xa550, 0xc551, 0xc570, 0xc570, 0xa570, 0xa570, 0xb570, 0xb570, 0xb570, 0xa570, 0xb570, 0xb570
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xc550, 0xb551, 0xb558, 0xa559, 0xa550, 0xa551, 0xb558, 0xb559, 0xb550, 0xb551, 0xc558, 0xa559, 0xb550, 0xb551, 0xa558, 0xc559, 0xa550, 0xb551, 0xc570, 0xb570, 0xc570, 0xb570, 0xc570, 0xc570, 0xa570, 0xa570
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xc558, 0xa559, 0x1170, 0x1170, 0xa558, 0xa559, 0x1170, 0x1170, 0xb558, 0xc559, 0x1170, 0x1170, 0xa558, 0xa559, 0x1170, 0x1170, 0xc558, 0xb559, 0xa550, 0xa551, 0xb570, 0xb570, 0xb570, 0xc570, 0xa570, 0x1170
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xc550, 0xa551, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xc558, 0xa559, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xc558, 0xb559, 0xb550, 0xa551, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xc550, 0xc551, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xb558, 0xb559, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xb558, 0xa559, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170
    .hword 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x1170, 0x1170, 0x326e, 0x326e, 0x1170, 0x1170, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e
    .hword 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x1170, 0x1170, 0x3275, 0x3275, 0x1170, 0x1170, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275
    .hword 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x1276, 0x1276, 0x326e, 0x326e, 0x326e, 0x326e, 0x1276, 0x1276, 0x1170, 0x1170, 0x1276, 0x1276, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e, 0x326e
    .hword 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x1170, 0x1170, 0x3275, 0x3275, 0x3275, 0x3275, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275, 0x3275
    .hword 0x1276, 0x1276, 0x1276, 0x1276, 0x1276, 0x1276, 0x1276, 0xb676, 0x1276, 0x1276, 0x1170, 0x1170, 0x1276, 0x1276, 0x1276, 0x1276, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1276, 0x1276, 0x1276, 0xc676, 0x1276, 0x1276, 0x1276, 0x1276, 0x1276, 0x1276
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xb550, 0xb551, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xa550, 0xc551, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xa558, 0xa559, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xb558, 0xa559, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xb550, 0xb551, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xa550, 0xa551, 0x1170, 0x1170, 0xb550, 0xa551
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xa558, 0xc559, 0xa550, 0xc551, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xc550, 0xc551, 0xc558, 0xa559, 0xb550, 0xc551, 0xb558, 0xc559
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xc558, 0xa559, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xa570, 0xa558, 0xa559, 0xb570, 0xc570, 0xa558, 0xa559, 0xc570, 0xb570
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xa550, 0xa551, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xc550, 0xa551, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xa558, 0xb559, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xb558, 0xa559, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xc550, 0xa551, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xb550, 0xb551, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xa558, 0xc559, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xa558, 0xa559, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xb550, 0xa551, 0x1170, 0x1170, 0x1192, 0x3002, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xc550, 0xc551, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xa558, 0xa559, 0x1170, 0x1192, 0x3002, 0x3001, 0x3002, 0x1190, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xb558, 0xb559, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xb550, 0xc551, 0x119a, 0x118a, 0x3001, 0x1188, 0x1198, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xa550, 0xb551, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xb558, 0xa559, 0x1170, 0x119a, 0x1189, 0x1198, 0x1170, 0x1170, 0xc550, 0xc551, 0x1170, 0x1170, 0xb550, 0xa551, 0xc558, 0xc559, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xa550, 0xa551, 0x1170, 0x1170, 0xb550, 0xb551, 0xb558, 0xb559, 0xa550, 0xc551, 0xa558, 0xc559, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xc558, 0xa559, 0xb550, 0xa551, 0xb558, 0xc559, 0x1170, 0x1170, 0xc558, 0xc559, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0xc558, 0xc559, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170
    .hword 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170

.align 4
BrokenBridge_MapConnections:
    .hword 0x412e
    .byte 150, 8
    .hword 0x412e
    .byte 150, 8
    .hword 0x412e
    .byte 150, 8
    .hword 0x412e
    .byte 150, 8
    .hword 0x3f3d
    .byte 135, 149
    .hword 0x3f3d
    .byte 135, 149
    .hword 0x3f3d
    .byte 135, 149
    .hword 0x3f3d
    .byte 135, 149

.align 4
BrokenBridge_MapName:
    .string "BROKEN BRIDGE$"

# scripts/4026_BrokenBridge.s

.align 4

BrokenBridge_MapInitCode:
    bx lr

BrokenBridge_MapInitScript:
    end

BrokenBridge_Script1:
    lock
    faceplayer
    msgbox BrokenBridge_Script1_Text
    release
    end

BrokenBridge_Script1_Text:
    .string "Unfortunately, the bridge here\n"
    .string "appears to be out of service.\p"
    .string "If only there was some way to SURF\n"
    .string "across water!$"

BrokenBridge_ItemBall:
    lock
    removeobject 2
    giveitem 4
    setflag FLAG_RECEIVED_BALL4
    call SyncProgressScript
    release
    end

