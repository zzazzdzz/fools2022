# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x353C_StandstillPark/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

StandstillPark_MapHeader:
    .word StandstillPark_MapLayout
    .word StandstillPark_MapEvts
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
    .word StandstillPark_MapInitCode+1
    .word StandstillPark_MapConnections
    .word StandstillPark_MapInitScript
    .word StandstillPark_MapName
    .word 0x2819

StandstillPark_MapLayout:
    .word 12
    .word 14
    .word StandstillPark_MapBorder
    .word StandstillPark_MapData
    .word gTileset_General
    .word gTileset_Petalburg

.align 4
StandstillPark_MapObjectEvents:

.align 4
StandstillPark_MapCoordEvents:
StandstillPark_WarpCoordEvents:

.align 4
StandstillPark_MapBGEvents:

.align 4
StandstillPark_MapEvts:
    map_events 0, StandstillPark_MapObjectEvents, 0, 0, 0, StandstillPark_MapCoordEvents, 0, StandstillPark_MapBGEvents

.align 4
StandstillPark_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
StandstillPark_MapData:
    .hword 0xa5d4, 0xa5d5, 0x3108, 0x310a, 0xb5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xb5d5
    .hword 0xb5dc, 0xc5dd, 0x3108, 0x310a, 0xb5e4, 0xc5e5, 0xc5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xc5dd
    .hword 0xc5d4, 0xb5d5, 0x3108, 0x310a, 0x3004, 0x3001, 0xb5d4, 0xc5d5, 0x3004, 0x3001, 0x3001, 0x3001
    .hword 0xc5dc, 0xb5dd, 0x3108, 0x310a, 0x3001, 0x3004, 0xa5e4, 0xc5e5, 0x3001, 0x3004, 0x3001, 0x3001
    .hword 0xa5d4, 0xa5d5, 0x3108, 0x310a, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0xb5dc, 0xb5dd, 0x3108, 0x310a, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0xa5d4, 0xa5d5, 0x3108, 0x3109, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101, 0x3101
    .hword 0xa5dc, 0xa5dd, 0x3108, 0x3109, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111, 0x3111
    .hword 0xc5d4, 0xb5d5, 0x3108, 0x310a, 0x3004, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001
    .hword 0xc5dc, 0xa5dd, 0x3108, 0x3109, 0x3101, 0x3102, 0x3001, 0x3001, 0x31ce, 0x31cf, 0x31ce, 0x31cf
    .hword 0xa5d4, 0xc5d5, 0x3110, 0x3111, 0x3109, 0x310a, 0x3004, 0x3001, 0xb5d4, 0xa5d5, 0xb5d4, 0xb5d5
    .hword 0xb5dc, 0xc5dd, 0x31ce, 0x31cf, 0x3108, 0x310a, 0x31ce, 0x31cf, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd
    .hword 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0x3108, 0x310a, 0xc5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xa5d5
    .hword 0xa5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0x3108, 0x310a, 0xc5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xa5dd

.align 4
StandstillPark_MapConnections:

.align 4
StandstillPark_MapName:
    .string "x353CnStandstillPark$"

# scripts/353C_StandstillPark.s

StandstillPark_MapInitCode:
    bx lr

StandstillPark_MapInitScript:
    end


