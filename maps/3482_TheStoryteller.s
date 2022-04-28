# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x3482_TheStoryteller/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

TheStoryteller_MapHeader:
    .word TheStoryteller_MapLayout
    .word TheStoryteller_MapEvts
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
    .word TheStoryteller_MapInitCode+1
    .word TheStoryteller_MapConnections
    .word TheStoryteller_MapInitScript
    .word TheStoryteller_MapName
    .word 0x2819

TheStoryteller_MapLayout:
    .word 8
    .word 8
    .word TheStoryteller_MapBorder
    .word TheStoryteller_MapData
    .word gTileset_General
    .word gTileset_Petalburg

.align 4
TheStoryteller_MapObjectEvents:

.align 4
TheStoryteller_MapCoordEvents:
TheStoryteller_WarpCoordEvents:

.align 4
TheStoryteller_MapBGEvents:

.align 4
TheStoryteller_MapEvts:
    map_events 0, TheStoryteller_MapObjectEvents, 0, 0, 0, TheStoryteller_MapCoordEvents, 0, TheStoryteller_MapBGEvents

.align 4
TheStoryteller_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
TheStoryteller_MapData:
    .hword 0x1170, 0x1170, 0xc409, 0xc40a, 0x31b3, 0x31b3, 0xb45a, 0xa45a
    .hword 0x1170, 0xa4cd, 0xb411, 0xb412, 0x31b3, 0x31b3, 0xc462, 0xa462
    .hword 0xa5d4, 0xa5d5, 0x305e, 0x305e, 0xb458, 0xb459, 0xc5d4, 0xa5d5
    .hword 0xb5dc, 0xb5dd, 0x305e, 0x305e, 0xb460, 0x3061, 0xc5dc, 0xc5dd
    .hword 0xa5d4, 0xb5d5, 0xb408, 0xc409, 0xa409, 0xa409, 0xa5d4, 0xc5d5
    .hword 0xa5dc, 0xa5dd, 0xc410, 0xb411, 0xb411, 0xc411, 0xb5dc, 0xc5dd
    .hword 0xb49f, 0xc47c, 0x300d, 0x300d, 0xa5d4, 0xb5d5, 0x3001, 0x3001
    .hword 0x30a7, 0xb479, 0x300d, 0x300d, 0xb5dc, 0xc5dd, 0xc487, 0xc487

.align 4
TheStoryteller_MapConnections:

.align 4
TheStoryteller_MapName:
    .string "x3482nTheStoryteller$"

# scripts/3482_TheStoryteller.s

TheStoryteller_MapInitCode:
    bx lr

TheStoryteller_MapInitScript:
    end

