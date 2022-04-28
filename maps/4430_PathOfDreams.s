# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x4430_PathOfDreams/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

PathOfDreams_MapHeader:
    .word PathOfDreams_MapLayout
    .word PathOfDreams_MapEvts
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
    .word PathOfDreams_MapInitCode+1
    .word PathOfDreams_MapConnections
    .word PathOfDreams_MapInitScript
    .word PathOfDreams_MapName
    .word 0x2819

PathOfDreams_MapLayout:
    .word 18
    .word 24
    .word PathOfDreams_MapBorder
    .word PathOfDreams_MapData
    .word gTileset_General
    .word gTileset_Rustboro

.align 4
PathOfDreams_MapObjectEvents:

.align 4
PathOfDreams_MapCoordEvents:
PathOfDreams_WarpCoordEvents:

.align 4
PathOfDreams_MapBGEvents:

.align 4
PathOfDreams_MapEvts:
    map_events 0, PathOfDreams_MapObjectEvents, 0, 0, 0, PathOfDreams_MapCoordEvents, 0, PathOfDreams_MapBGEvents

.align 4
PathOfDreams_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
PathOfDreams_MapData:
    .hword 0x1150, 0x1151, 0x1170, 0x1170, 0x1170, 0x1170, 0x3356, 0x3357, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1150, 0x1151, 0x1170
    .hword 0x1158, 0x1159, 0x1170, 0x1170, 0x1170, 0x1170, 0x3356, 0x3357, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1158, 0x1159, 0x1170
    .hword 0x1170, 0x1150, 0x1151, 0x1170, 0x1170, 0x1170, 0x3356, 0x3357, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1150, 0x1151
    .hword 0x1170, 0x1158, 0x1159, 0x1170, 0x1170, 0x1170, 0x3356, 0x3357, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1158, 0x1159
    .hword 0x1150, 0x1151, 0x1170, 0x1170, 0x1170, 0x1170, 0x3356, 0x3357, 0x326e, 0x326e, 0x3356, 0x3357, 0x1170, 0x1170, 0x1170, 0x1150, 0x1151, 0x1170
    .hword 0x1158, 0x1159, 0x1170, 0x1170, 0x1170, 0x1170, 0x3356, 0x3357, 0x326d, 0x326d, 0x3356, 0x3357, 0x1170, 0x1170, 0x1170, 0x1158, 0x1159, 0x1170
    .hword 0x1170, 0x1150, 0x1151, 0x1170, 0x1170, 0x1170, 0x1276, 0x1276, 0x1276, 0x1276, 0x3356, 0x3357, 0x1170, 0x1170, 0x1170, 0x1170, 0x1150, 0x1151
    .hword 0x1170, 0x1158, 0x1159, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x3356, 0x3357, 0x1170, 0x1170, 0x1170, 0x1170, 0x1158, 0x1159
    .hword 0x1150, 0x1151, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x3356, 0x3357, 0x1170, 0x1170, 0x1170, 0x1150, 0x1151, 0x1170
    .hword 0x1158, 0x1159, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x1170, 0x3356, 0x3357, 0x1170, 0x1170, 0x1170, 0x1158, 0x1159, 0x1170
    .hword 0x1170, 0x1150, 0x1151, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x3002, 0x3002, 0x3002, 0x3002, 0x3002, 0x3002, 0x1190, 0x1170, 0x1150, 0x1151
    .hword 0x1170, 0x1158, 0x1159, 0x1170, 0x1170, 0x1170, 0x1170, 0x1192, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x1190, 0x1170, 0x1158, 0x1159
    .hword 0x1150, 0x1151, 0x1170, 0x1170, 0x1170, 0x1192, 0x3002, 0x3002, 0x3001, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0x1190, 0x1150, 0x1151, 0x1170
    .hword 0x1158, 0x1159, 0x1170, 0x1170, 0x1170, 0x1192, 0x3001, 0xa403, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3004, 0x1190, 0x1158, 0x1159, 0x1170
    .hword 0x1170, 0x1150, 0x1151, 0x1192, 0x3002, 0x3002, 0x3001, 0x3001, 0x3001, 0x3001, 0x300d, 0x300d, 0x300d, 0x300d, 0x1190, 0x1170, 0x1150, 0x1151
    .hword 0x1170, 0x1158, 0x1159, 0x1192, 0x3001, 0x3004, 0x3001, 0x3001, 0x3001, 0x3001, 0x300d, 0x300d, 0x300d, 0x300d, 0x1190, 0x1170, 0x1158, 0x1159
    .hword 0x1150, 0x1151, 0x1170, 0x1192, 0x3001, 0x3001, 0x3100, 0x3102, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x1190, 0x1150, 0x1151, 0x1170
    .hword 0x1158, 0x1159, 0x1170, 0x1192, 0x3001, 0x3001, 0x3108, 0x310a, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x300d, 0x1190, 0x1158, 0x1159, 0x1170
    .hword 0x1170, 0x1150, 0x1151, 0x1192, 0x3001, 0x3001, 0x3108, 0x310a, 0x300d, 0x300d, 0x300d, 0x300d, 0x1188, 0x1189, 0x1198, 0x1170, 0x1150, 0x1151
    .hword 0x1170, 0x1158, 0x1159, 0x1192, 0x3001, 0x3001, 0x3108, 0x310a, 0x300d, 0x300d, 0x300d, 0x300d, 0x1190, 0x1170, 0x1170, 0x1170, 0x1158, 0x1159
    .hword 0x1150, 0x1151, 0x1170, 0x1192, 0x3001, 0x3001, 0x3108, 0x3109, 0x3101, 0x3102, 0x3001, 0x3001, 0x1190, 0x1170, 0x1170, 0x1150, 0x1151, 0x1170
    .hword 0x1158, 0x1159, 0x1170, 0x1192, 0x3001, 0x3001, 0x3110, 0x3111, 0x3109, 0x310a, 0x3001, 0x3001, 0x1190, 0x1170, 0x1170, 0x1158, 0x1159, 0x1170
    .hword 0x1170, 0x1150, 0x1151, 0x119a, 0x1189, 0x118a, 0x3001, 0x3001, 0x3108, 0x310a, 0x3001, 0x3001, 0x1190, 0x1170, 0x1170, 0x1170, 0x1150, 0x1151
    .hword 0x1170, 0x1158, 0x1159, 0x1170, 0x1170, 0x1192, 0x3001, 0x3001, 0x3108, 0x310a, 0x3001, 0x3001, 0x1190, 0x1170, 0x1170, 0x1170, 0x1158, 0x1159

.align 4
PathOfDreams_MapConnections:

.align 4
PathOfDreams_MapName:
    .string "x4430nPathOfDreams$"

# scripts/4430_PathOfDreams.s

PathOfDreams_MapInitCode:
    bx lr

PathOfDreams_MapInitScript:
    end

