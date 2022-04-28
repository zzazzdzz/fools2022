# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x1639_IndoorsTest/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

IndoorsTest_MapHeader:
    .word IndoorsTest_MapLayout
    .word IndoorsTest_MapEvts
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
    .word IndoorsTest_MapInitCode+1
    .word IndoorsTest_MapConnections
    .word IndoorsTest_MapInitScript
    .word IndoorsTest_MapName
    .word 0x2819

IndoorsTest_MapLayout:
    .word 12
    .word 10
    .word IndoorsTest_MapBorder
    .word IndoorsTest_MapData
    .word gTileset_SecretBase
    .word gTileset_Petalburg

.align 4
IndoorsTest_MapObjectEvents:

.align 4
IndoorsTest_MapCoordEvents:
IndoorsTest_WarpCoordEvents:

.align 4
IndoorsTest_MapBGEvents:

.align 4
IndoorsTest_MapEvts:
    map_events 0, IndoorsTest_MapObjectEvents, 0, 0, 0, IndoorsTest_MapCoordEvents, 0, IndoorsTest_MapBGEvents

.align 4
IndoorsTest_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
IndoorsTest_MapData:
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0x3001, 0x3001, 0xa45a, 0xc45b, 0xc45a, 0xb45b, 0xa45a, 0xa45b, 0xc45a, 0xb45b, 0x3001, 0x3001
    .hword 0x3001, 0x3001, 0xb462, 0xc463, 0xa462, 0xc463, 0xc462, 0xb463, 0xb462, 0xc463, 0x3001, 0x3001
    .hword 0x3001, 0x3001, 0xc5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0x3001, 0x3001
    .hword 0x3001, 0x3001, 0xc5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0x3001, 0x3001
    .hword 0x3001, 0x3001, 0xb5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0x3001, 0x3001
    .hword 0x3001, 0x3001, 0xb5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0x3001, 0x3001
    .hword 0x3001, 0x3001, 0xb5d4, 0xa5d5, 0x300d, 0x300d, 0xa5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0x3001, 0x3001
    .hword 0x3001, 0x3001, 0xc5dc, 0xb5dd, 0x300d, 0x300d, 0xc5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0x3001, 0x3001

.align 4
IndoorsTest_MapConnections:

.align 4
IndoorsTest_MapName:
    .string "x1639nIndoorsTest$"

# scripts/1639_IndoorsTest.s

IndoorsTest_MapInitCode:
    bx lr

IndoorsTest_MapInitScript:
    end


