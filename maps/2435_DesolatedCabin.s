# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x2435_DesolatedCabin/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

DesolatedCabin_MapHeader:
    .word DesolatedCabin_MapLayout
    .word DesolatedCabin_MapEvts
    .word NULL
    .word NULL
    .hword MUS_END
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word DesolatedCabin_MapInitCode+1
    .word DesolatedCabin_MapConnections
    .word DesolatedCabin_MapInitScript
    .word DesolatedCabin_MapName
    .word 0x2819

DesolatedCabin_MapLayout:
    .word 32
    .word 24
    .word DesolatedCabin_MapBorder
    .word DesolatedCabin_MapData
    .word gTileset_General
    .word gTileset_Rustboro

.align 4
DesolatedCabin_MapObjectEvents:

.align 4
DesolatedCabin_MapCoordEvents:
DesolatedCabin_WarpCoordEvents:
    coord_event 7, 4, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 5, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 6, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 10, 16, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 11, 16, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 12, 9, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 12, 16, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 24, 12, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 24, 13, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 24, 14, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 24, 15, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
DesolatedCabin_MapBGEvents:

.align 4
DesolatedCabin_MapEvts:
    map_events 0, DesolatedCabin_MapObjectEvents, 0, 0, 12, DesolatedCabin_MapCoordEvents, 0, DesolatedCabin_MapBGEvents

.align 4
DesolatedCabin_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
DesolatedCabin_MapData:
    .hword 0xb5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xb5d5
    .hword 0xa5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xc5dd, 0xc5e4, 0xb5e5, 0xb5e4, 0xa5e5, 0xc5e4, 0xb5e5, 0xc5e4, 0xa5e5, 0xb5e4, 0xb5e5, 0xb5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xa5dd
    .hword 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xb549, 0xc549, 0xc549, 0xb549, 0xb549, 0xc549, 0xa549, 0xc549, 0xb549, 0xb53a, 0xb5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xb5d5
    .hword 0xb5e4, 0xa5e5, 0xa5e4, 0xb5e5, 0xc5e4, 0xc5e5, 0xb5e4, 0xc5e5, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0xa542, 0xc5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xa5dd
    .hword 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x31d0, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d2, 0xb542, 0xa5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5
    .hword 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d9, 0x31d9, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31d9, 0x31da, 0xc542, 0xb5e4, 0xb5e5, 0xc5e4, 0xa5e5, 0xc5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xa5dd
    .hword 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e2, 0xa668, 0xb669, 0xb66a, 0xb66b, 0x326c, 0x31d8, 0x31da, 0x3133, 0xc549, 0xc549, 0xc549, 0xa53a, 0xa5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xb5d5
    .hword 0xc5ce, 0x31cf, 0xc5ce, 0x31cf, 0xb5ce, 0x31cf, 0xc5ce, 0x31cf, 0x3001, 0x3004, 0xa670, 0xb671, 0xb672, 0xb673, 0x3274, 0x31d8, 0x31da, 0x3004, 0x3001, 0x3001, 0x3001, 0xa542, 0xc5e4, 0xb5e5, 0xc5dc, 0xc5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0xc5dc, 0xc5dd
    .hword 0xb5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0x3001, 0x3001, 0xc678, 0x3279, 0xc67a, 0xc67b, 0x327c, 0x31d8, 0x31d9, 0x31d1, 0x31d1, 0x31d1, 0x31d2, 0x3133, 0xc549, 0xa549, 0xc5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xa5d5
    .hword 0xa5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0x3001, 0x3001, 0x3280, 0x3281, 0x3282, 0x3283, 0x3284, 0x31d8, 0x31d9, 0x31e1, 0x31e1, 0x31d9, 0x31da, 0x3001, 0x3001, 0x3001, 0xa5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xc5dd
    .hword 0xc5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0x3001, 0x3001, 0x31d0, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d9, 0x31da, 0x3001, 0x3001, 0x31d8, 0x31da, 0x3001, 0x3001, 0x3001, 0xc5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xa5d5
    .hword 0xa5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0x3001, 0x3001, 0x31d8, 0x31d9, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e2, 0x3004, 0x3001, 0x31d8, 0x31da, 0x3004, 0x3001, 0x3001, 0xb5e4, 0xc5e5, 0xc5e4, 0xc5e5, 0xa5e4, 0xa5e5, 0xb5e4, 0xa5e5
    .hword 0xc5d4, 0xb5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0x3004, 0x3001, 0x31d8, 0x31da, 0x3001, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0x3001, 0x31d8, 0x31da, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001, 0x3001, 0x3001, 0x3001, 0x3001, 0x3004, 0x3001
    .hword 0xb5dc, 0xa5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xa5ce, 0x31cf, 0x31d8, 0x31da, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x31ce, 0x31cf, 0x3001, 0x31d8, 0x31d9, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1, 0x31d1
    .hword 0xb5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0x31d8, 0x31da, 0xa5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0x3001, 0x31e0, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1, 0x31e1
    .hword 0xb5dc, 0xb5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0x31d8, 0x31da, 0xc5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xb5ce, 0xc5cf, 0xa5ce, 0xc5cf, 0xa5ce, 0xa5cf, 0xc5ce, 0xa5cf, 0xb5ce, 0xb5cf, 0xc5ce, 0xc5cf, 0xc5ce, 0xa5cf
    .hword 0xa5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0x31d8, 0x31da, 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xc5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xc5d5, 0xc5d4, 0xa5d5
    .hword 0xc5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0x31d8, 0x31da, 0xc5dc, 0xc5dd, 0xb5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xc5dd
    .hword 0xc5d4, 0xa5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xa5d4, 0xc5d5, 0x31d8, 0x31da, 0xa5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xa5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xa5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xb5d4, 0xa5d5
    .hword 0xc5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0x31d8, 0x31da, 0xc5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xb5dd, 0xa5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xa5dc, 0xa5dd, 0xa5dc, 0xa5dd, 0xb5dc, 0xc5dd
    .hword 0xc5d4, 0xb5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xb5d5, 0xa5d4, 0xb5d5, 0x31d8, 0x31da, 0xb5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xb5d5, 0xb5d4, 0xa5d5
    .hword 0xa5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xc5dc, 0xa5dd, 0x31d8, 0x31da, 0xa5dc, 0xa5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xc5dc, 0xb5dd, 0xa5dc, 0xc5dd, 0xa5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xb5dc, 0xc5dd
    .hword 0xc5d4, 0xc5d5, 0xc5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xb5d4, 0xc5d5, 0x31d8, 0x31da, 0xc5d4, 0xb5d5, 0xc5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xc5d5, 0xa5d4, 0xa5d5, 0xa5d4, 0xa5d5, 0xc5d4, 0xc5d5, 0xb5d4, 0xc5d5, 0xa5d4, 0xb5d5, 0xb5d4, 0xc5d5
    .hword 0xb5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0x31d8, 0x31da, 0xc5dc, 0xa5dd, 0xc5dc, 0xc5dd, 0xc5dc, 0xa5dd, 0xa5dc, 0xc5dd, 0xc5dc, 0xb5dd, 0xc5dc, 0xc5dd, 0xb5dc, 0xb5dd, 0xb5dc, 0xa5dd, 0xb5dc, 0xc5dd, 0xb5dc, 0xc5dd

.align 4
DesolatedCabin_MapConnections:
    .hword 0x2632
    .byte 142, 11
    .hword 0x2632
    .byte 142, 11
    .hword 0x2632
    .byte 142, 11
    .hword 0x2632
    .byte 142, 11
    .hword 0x2536
    .byte 3, 7
    .hword 0x2536
    .byte 3, 7
    .hword 9336
    .byte 7, 135
    .hword 0x2536
    .byte 3, 7
    .hword 0x232d
    .byte 135, 154
    .hword 0x232d
    .byte 135, 154
    .hword 0x232d
    .byte 135, 154
    .hword 0x232d
    .byte 135, 154

.align 4
DesolatedCabin_MapName:
    .string "???$"

# scripts/2435_DesolatedCabin.s

.align 4

DesolatedCabin_MapInitCode:
    bx lr

DesolatedCabin_MapInitScript:
    end


