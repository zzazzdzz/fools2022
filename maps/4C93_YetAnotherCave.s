# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x4C93_YetAnotherCave/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

YetAnotherCave_MapHeader:
    .word YetAnotherCave_MapLayout
    .word YetAnotherCave_MapEvts
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
    .word YetAnotherCave_MapInitCode+1
    .word YetAnotherCave_MapConnections
    .word YetAnotherCave_MapInitScript
    .word YetAnotherCave_MapName
    .word 0x2819

YetAnotherCave_MapLayout:
    .word 18
    .word 18
    .word YetAnotherCave_MapBorder
    .word YetAnotherCave_MapData
    .word gTileset_General
    .word gTileset_Petalburg

.align 4
YetAnotherCave_MapObjectEvents:

.align 4
YetAnotherCave_MapCoordEvents:
YetAnotherCave_WarpCoordEvents:

.align 4
YetAnotherCave_MapBGEvents:

.align 4
YetAnotherCave_MapEvts:
    map_events 0, YetAnotherCave_MapObjectEvents, 0, 0, 0, YetAnotherCave_MapCoordEvents, 0, YetAnotherCave_MapBGEvents

.align 4
YetAnotherCave_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
YetAnotherCave_MapData:
    .hword 0xb471, 0xc471, 0x1188, 0x1189, 0x1188, 0x1189, 0x1188, 0x1189, 0x1188, 0x1189, 0x1188, 0x1189, 0xa471, 0xa471, 0x1170, 0xc4cd, 0x1170, 0xc4cd
    .hword 0xb471, 0xb471, 0x1190, 0x1170, 0x1190, 0x1170, 0x1190, 0x1170, 0x1190, 0x1170, 0x1190, 0x1170, 0xa471, 0xc474, 0x1170, 0xc4cd, 0x1170, 0xc4cd
    .hword 0x3121, 0x3121, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0xc45a, 0xb45a, 0xb4cd, 0x1170, 0x1170, 0xb4cd, 0x1170, 0xc4cd
    .hword 0xc4e5, 0xa497, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0xa462, 0xa462, 0xa4cd, 0x1170, 0x1170, 0xb4cd, 0x1170, 0xa4cd
    .hword 0x3121, 0x3121, 0x3001, 0x3001, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x3001, 0x3001, 0x3111, 0x3111, 0x1188, 0x1189, 0xa471, 0xc471
    .hword 0xb4e5, 0xa497, 0xb487, 0xa487, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0xa487, 0xa487, 0xb4e0, 0xa4e0, 0x1190, 0x1170, 0xc471, 0xc474
    .hword 0x3121, 0x3121, 0x3001, 0x3001, 0x3001, 0x3001, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0xc5d4, 0xa5d5, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0xc4cd, 0x1170
    .hword 0xb4e5, 0xc497, 0xb487, 0xa487, 0xc487, 0xc487, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0xb5dc, 0xb5dd, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0xa4cd, 0x1170
    .hword 0x3121, 0x3121, 0x3001, 0x3001, 0xc5d4, 0xb5d5, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x3001, 0x3001, 0x31b3, 0x31b3, 0xc409, 0xb40a, 0xb4cd, 0x1170
    .hword 0xb4e5, 0xb497, 0xa487, 0xc487, 0xc5dc, 0xc5dd, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0xb487, 0xb487, 0x31b3, 0x31b3, 0xc411, 0xc412, 0xc4cd, 0x1170
    .hword 0x3121, 0x3121, 0xc5d4, 0xc5d5, 0xc45a, 0xb45a, 0xa49f, 0xa47c, 0xa49f, 0xc47c, 0xa45a, 0xb45a, 0xb5d4, 0xa5d5, 0x31b3, 0x31b3, 0xc4cd, 0x1170
    .hword 0xc4e5, 0xa497, 0xb5dc, 0xa5dd, 0xc462, 0xc462, 0x30a7, 0xb479, 0x30a7, 0xb479, 0xb462, 0xa462, 0xc5dc, 0xa5dd, 0x31b3, 0x31b3, 0xb4cd, 0x1170
    .hword 0x3121, 0x3121, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0xc409, 0xa40a, 0xa49f, 0xc47c, 0xa45a, 0xc45a, 0x305e, 0x305e, 0x305e, 0x305e, 0xb4cd, 0x1170
    .hword 0xa4e5, 0xb497, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0xb411, 0xa412, 0x30a7, 0xc479, 0xc462, 0xc462, 0x305e, 0x305e, 0x305e, 0x305e, 0xb4cd, 0x1170
    .hword 0x3121, 0x3121, 0xa468, 0xc469, 0x305e, 0x305e, 0x3121, 0x3121, 0x31b3, 0x31b3, 0x3001, 0x3001, 0x305e, 0x305e, 0xa468, 0xc469, 0xb4cd, 0x1170
    .hword 0xc4e5, 0xc497, 0xc470, 0xa471, 0x305e, 0x305e, 0x3121, 0xc403, 0x31b3, 0x31b3, 0xb487, 0xb487, 0x305e, 0x305e, 0xb470, 0xb471, 0xa4cd, 0x1170
    .hword 0x1170, 0xb4cd, 0x1170, 0xb4cd, 0x1170, 0xa4cd, 0x1170, 0xc4cd, 0x1170, 0xc4cd, 0x1170, 0xb4cd, 0x1170, 0xc4cd, 0x1170, 0xc4cd, 0x1170, 0xa4cd
    .hword 0x1170, 0xa4cd, 0xc4cd, 0xb4cd, 0xa4cd, 0xc4cd, 0xb4cd, 0xb4cd, 0xc4cd, 0xa4cd, 0xb4cd, 0xb4cd, 0xc4cd, 0xc4cd, 0xc4cd, 0xc4cd, 0x1170, 0xc4cd

.align 4
YetAnotherCave_MapConnections:

.align 4
YetAnotherCave_MapName:
    .string "x4C93nYetAnotherCave$"

# scripts/4C93_YetAnotherCave.s

YetAnotherCave_MapInitCode:
    bx lr

YetAnotherCave_MapInitScript:
    end


