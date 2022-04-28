# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x3724_RoadOfRegression/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

RoadOfRegression_MapHeader:
    .word RoadOfRegression_MapLayout
    .word RoadOfRegression_MapEvts
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
    .word RoadOfRegression_MapInitCode+1
    .word RoadOfRegression_MapConnections
    .word RoadOfRegression_MapInitScript
    .word RoadOfRegression_MapName
    .word 0x2819

RoadOfRegression_MapLayout:
    .word 22
    .word 12
    .word RoadOfRegression_MapBorder
    .word RoadOfRegression_MapData
    .word gTileset_General
    .word gTileset_Petalburg

.align 4
RoadOfRegression_MapObjectEvents:

.align 4
RoadOfRegression_MapCoordEvents:
RoadOfRegression_WarpCoordEvents:

.align 4
RoadOfRegression_MapBGEvents:

.align 4
RoadOfRegression_MapEvts:
    map_events 0, RoadOfRegression_MapObjectEvents, 0, 0, 0, RoadOfRegression_MapCoordEvents, 0, RoadOfRegression_MapBGEvents

.align 4
RoadOfRegression_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
RoadOfRegression_MapData:
    .hword 0xb5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xb5d5
    .hword 0xb5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xb5dd
    .hword 0xa5d4, 0xb5d5, 0x3100, 0x3102, 0x3004, 0x3001, 0x3100, 0x3102, 0x3004, 0x3001, 0x3100, 0x3102, 0x3004, 0x3001, 0x3100, 0x3102, 0x3004, 0x3001, 0x3100, 0x3102, 0xb5d4, 0xa5d5
    .hword 0xc5dc, 0xc5dd, 0x3108, 0x310a, 0x3001, 0x3004, 0x3108, 0x310a, 0x3001, 0x3004, 0x3108, 0x310a, 0x3001, 0x3004, 0x3108, 0x310a, 0x3001, 0x3004, 0x3108, 0x310a, 0xc5dc, 0xc5dd
    .hword 0xa5d4, 0xb5d5, 0x3108, 0x310a, 0xc5d4, 0xb5d5, 0x3108, 0x310a, 0xc5d4, 0xc5d5, 0x3108, 0x310a, 0xc5d4, 0xa5d5, 0x3108, 0x310a, 0xb5d4, 0xa5d5, 0x3108, 0x310a, 0xa5d4, 0xa5d5
    .hword 0xa5dc, 0xa5dd, 0x3108, 0x310a, 0xc5dc, 0xb5dd, 0x3108, 0x310a, 0xa5dc, 0xc5dd, 0x3108, 0x310a, 0xc5dc, 0xc5dd, 0x3108, 0x310a, 0xc5dc, 0xc5dd, 0x3108, 0x310a, 0xc5dc, 0xa5dd
    .hword 0xb5d4, 0xc5d5, 0x3108, 0x310a, 0xc5d4, 0xa5d5, 0x3108, 0x310a, 0xa5d4, 0xb5d5, 0x3108, 0x310a, 0xc5d4, 0xa5d5, 0x3108, 0x310a, 0xb5d4, 0xc5d5, 0x3108, 0x310a, 0xa5d4, 0xb5d5
    .hword 0xa5dc, 0xb5dd, 0x3108, 0x310a, 0xa5dc, 0xc5dd, 0x3108, 0x310a, 0xc5dc, 0xb5dd, 0x3108, 0x310a, 0xb5dc, 0xb5dd, 0x3108, 0x310a, 0xa5dc, 0xa5dd, 0x3108, 0x310a, 0xb5dc, 0xb5dd
    .hword 0xa5d4, 0xa5d5, 0x3108, 0x310a, 0xa5d4, 0xa5d5, 0x3108, 0x310a, 0xc5d4, 0xc5d5, 0x3108, 0x310a, 0xc5d4, 0xc5d5, 0x3108, 0x310a, 0xb5d4, 0xb5d5, 0x3108, 0x310a, 0xb5d4, 0xb5d5
    .hword 0xc5dc, 0xa5dd, 0x3110, 0x3112, 0xa5dc, 0xb5dd, 0x3110, 0x3112, 0xc5dc, 0xb5dd, 0x3110, 0x3112, 0xc5dc, 0xa5dd, 0x3110, 0x3112, 0xb5dc, 0xc5dd, 0x3110, 0x3112, 0xb5dc, 0xb5dd
    .hword 0xa5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0x31d9, 0x31d9, 0xa5d4, 0xc5d5
    .hword 0xa5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0x31d9, 0x31d9, 0xb5dc, 0xc5dd

.align 4
RoadOfRegression_MapConnections:

.align 4
RoadOfRegression_MapName:
    .string "x3724nRoadOfRegression$"

# scripts/3724_RoadOfRegression.s

RoadOfRegression_MapInitCode:
    bx lr

RoadOfRegression_MapInitScript:
    end

