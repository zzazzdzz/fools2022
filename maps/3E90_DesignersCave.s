# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x3E90_DesignersCave/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

DesignersCave_MapHeader:
    .word DesignersCave_MapLayout
    .word DesignersCave_MapEvts
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
    .word DesignersCave_MapInitCode+1
    .word DesignersCave_MapConnections
    .word DesignersCave_MapInitScript
    .word DesignersCave_MapName
    .word 0x2819

DesignersCave_MapLayout:
    .word 12
    .word 12
    .word DesignersCave_MapBorder
    .word DesignersCave_MapData
    .word gTileset_General
    .word gTileset_Petalburg

.align 4
DesignersCave_MapObjectEvents:

.align 4
DesignersCave_MapCoordEvents:
DesignersCave_WarpCoordEvents:

.align 4
DesignersCave_MapBGEvents:

.align 4
DesignersCave_MapEvts:
    map_events 0, DesignersCave_MapObjectEvents, 0, 0, 0, DesignersCave_MapCoordEvents, 0, DesignersCave_MapBGEvents

.align 4
DesignersCave_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
DesignersCave_MapData:
    .hword 0xa458, 0xb459, 0xc458, 0xb459, 0xa458, 0xc459, 0xa458, 0xa459, 0xc458, 0xc459, 0xb458, 0xa459
    .hword 0xa460, 0x3061, 0xa460, 0x3061, 0xa460, 0x3061, 0xa460, 0x3061, 0xc460, 0x3061, 0xa460, 0x3061
    .hword 0xa4cd, 0x1170, 0x1170, 0xa4cd, 0xb4cd, 0xb4cd, 0xc458, 0xa459, 0xc458, 0xb459, 0xb458, 0xa459
    .hword 0xc4cd, 0xb4cd, 0xb4cd, 0xa4cd, 0xa4cd, 0x1170, 0xb460, 0x3061, 0xa460, 0x3061, 0xb460, 0x3061
    .hword 0x3111, 0x3111, 0xb471, 0xc472, 0x1189, 0x118a, 0x0000, 0x0000, 0x0000, 0x0000, 0x3001, 0x3001
    .hword 0xa4e0, 0xa4e0, 0xb471, 0xc472, 0x1170, 0x1192, 0x0000, 0x0000, 0x0000, 0x0000, 0xb4d6, 0x3001
    .hword 0xa458, 0xb459, 0x3001, 0xc4e0, 0x3001, 0xa4e0, 0x3001, 0xa4e0, 0x3001, 0xc4e0, 0x3001, 0xb4e0
    .hword 0xa460, 0x3061, 0x3001, 0xa4e0, 0x3001, 0xb4e0, 0x3001, 0xa4e0, 0x3001, 0xb4e0, 0x3001, 0xb4e0
    .hword 0xc458, 0xb459, 0xb458, 0xc459, 0x3001, 0xc4e0, 0x3001, 0xb4e0, 0x3001, 0xb4e0, 0x3001, 0xc4e0
    .hword 0xa460, 0x3061, 0xb460, 0x3061, 0x3001, 0xb4e0, 0x3001, 0xc4e0, 0x3001, 0xc4e0, 0x3001, 0xc4e0
    .hword 0xc458, 0xc459, 0xc458, 0xa459, 0xb4e0, 0xb4e0, 0xc4e0, 0xb4e0, 0xb470, 0xb471, 0xb4e0, 0xc4e0
    .hword 0xb460, 0x3061, 0xa460, 0x3061, 0x3001, 0x3001, 0x3001, 0x3001, 0xc478, 0xc479, 0x3001, 0x3001

.align 4
DesignersCave_MapConnections:

.align 4
DesignersCave_MapName:
    .string "x3E90nDesignersCave$"

# scripts/3E90_DesignersCave.s

DesignersCave_MapInitCode:
    bx lr

DesignersCave_MapInitScript:
    end


