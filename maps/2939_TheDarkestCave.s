# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x2939_TheDarkestCave/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

TheDarkestCave_MapHeader:
    .word TheDarkestCave_MapLayout
    .word TheDarkestCave_MapEvts
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
    .word TheDarkestCave_MapInitCode+1
    .word TheDarkestCave_MapConnections
    .word TheDarkestCave_MapInitScript
    .word TheDarkestCave_MapName
    .word 0x2819

TheDarkestCave_MapLayout:
    .word 18
    .word 20
    .word TheDarkestCave_MapBorder
    .word TheDarkestCave_MapData
    .word gTileset_General
    .word gTileset_Petalburg

.align 4
TheDarkestCave_MapObjectEvents:

.align 4
TheDarkestCave_MapCoordEvents:
TheDarkestCave_WarpCoordEvents:

.align 4
TheDarkestCave_MapBGEvents:

.align 4
TheDarkestCave_MapEvts:
    map_events 0, TheDarkestCave_MapObjectEvents, 0, 0, 0, TheDarkestCave_MapCoordEvents, 0, TheDarkestCave_MapBGEvents

.align 4
TheDarkestCave_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
TheDarkestCave_MapData:
    .hword 0xc471, 0xa471, 0xc471, 0xc471, 0xa471, 0xc471, 0xa471, 0xa471, 0xb471, 0xc471, 0xb471, 0xb471, 0xa471, 0xc471, 0xc471, 0xb471, 0xb471, 0xa471
    .hword 0xc471, 0xa471, 0xc471, 0xa471, 0xa471, 0xb471, 0xa471, 0xb471, 0xa471, 0xa471, 0xc471, 0xa471, 0xb471, 0xa471, 0xb471, 0xa471, 0xc471, 0xa471
    .hword 0xc471, 0xc471, 0xa471, 0xc471, 0xc471, 0xc471, 0xa471, 0xb471, 0xc471, 0xb471, 0xa471, 0xb471, 0xc471, 0xb471, 0xb471, 0xc471, 0xb471, 0xa471
    .hword 0xc471, 0xb471, 0xa471, 0xc471, 0xa471, 0xa471, 0xb471, 0xb471, 0xc471, 0xa471, 0xc471, 0xb471, 0xc471, 0xa471, 0xa471, 0xb471, 0xb471, 0xc471
    .hword 0xa471, 0xa471, 0xa471, 0xc471, 0xb471, 0xb471, 0xb471, 0xb471, 0xc471, 0xc471, 0xc471, 0xc471, 0xc471, 0xb471, 0xc471, 0xc471, 0xa471, 0xc471
    .hword 0xa479, 0xb479, 0xb479, 0xc479, 0xa489, 0xc471, 0xb471, 0xb471, 0xb471, 0xa471, 0xa471, 0xa471, 0xc471, 0xb474, 0xa479, 0xa479, 0xa479, 0xa479
    .hword 0xc5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xa470, 0xb471, 0xa471, 0xa471, 0xc471, 0xa471, 0xc49f, 0xa47c, 0xc471, 0xc472, 0xb5d4, 0xa5d5, 0xa5d4, 0xc5d5
    .hword 0xa5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xc478, 0xb479, 0xa489, 0xb471, 0xa471, 0xb474, 0x30a7, 0xa479, 0xa479, 0xa47a, 0xa5dc, 0xb5dd, 0xc5dc, 0xb5dd
    .hword 0xa5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0x3001, 0x3001, 0xa470, 0xb471, 0xc471, 0xb472, 0x31d9, 0x31d9, 0x3004, 0x3001, 0xb5d4, 0xc5d5, 0xb5d4, 0xc5d5
    .hword 0xb5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0x3001, 0x3001, 0xb478, 0xc479, 0xb479, 0xc47a, 0x31d9, 0x31d9, 0x3001, 0x3004, 0xa5dc, 0xb5dd, 0xa5dc, 0xa5dd
    .hword 0xb5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0x3004, 0x3001, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x3004, 0x3001, 0xc5d4, 0xa5d5, 0xa5d4, 0xa5d5
    .hword 0xa5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0x3001, 0x3004, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x3001, 0x3004, 0xa5dc, 0xc5dd, 0xc5dc, 0xc5dd
    .hword 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0x3004, 0x3001, 0x31d9, 0x31d9, 0xa468, 0xc469, 0xc469, 0xa469, 0xb469, 0xc469, 0xa469, 0xc469, 0xc469, 0xb469
    .hword 0xb5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0x3001, 0x3004, 0x31d9, 0x31d9, 0xc470, 0xb471, 0xc471, 0xb471, 0xa471, 0xc471, 0xb471, 0xb471, 0xc471, 0xc471
    .hword 0xc5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0x3004, 0x3001, 0x31d9, 0x31d9, 0xa470, 0xb471, 0xc49f, 0xb47c, 0xc471, 0xa471, 0xb471, 0xa471, 0xc471, 0xc471
    .hword 0xc5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0x3001, 0x3004, 0x31d9, 0x31d9, 0xb478, 0xc479, 0x30a7, 0xc479, 0xb489, 0xa471, 0xc471, 0xc471, 0xc471, 0xc471
    .hword 0xc5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0x3001, 0x3001, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0xb470, 0xb471, 0xa471, 0xc471, 0xb471, 0xb471
    .hword 0xa5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0x3001, 0x3001, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0x31d9, 0xb478, 0xa479, 0xc479, 0xc479, 0xb479, 0xb479
    .hword 0xc5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xa5d5
    .hword 0xa5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xb5dd

.align 4
TheDarkestCave_MapConnections:

.align 4
TheDarkestCave_MapName:
    .string "x2939nTheDarkestCave$"

# scripts/2939_TheDarkestCave.s

TheDarkestCave_MapInitCode:
    bx lr

TheDarkestCave_MapInitScript:
    end


