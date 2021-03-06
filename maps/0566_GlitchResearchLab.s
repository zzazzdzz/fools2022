# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x0566_GlitchResearchLab/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

GlitchResearchLab_MapHeader:
    .word GlitchResearchLab_MapLayout
    .word GlitchResearchLab_MapEvts
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
    .word GlitchResearchLab_MapInitCode+1
    .word GlitchResearchLab_MapConnections
    .word GlitchResearchLab_MapInitScript
    .word GlitchResearchLab_MapName
    .word 0x2819

GlitchResearchLab_MapLayout:
    .word 12
    .word 12
    .word GlitchResearchLab_MapBorder
    .word GlitchResearchLab_MapData
    .word gTileset_General
    .word gTileset_Petalburg

.align 4
GlitchResearchLab_MapObjectEvents:

.align 4
GlitchResearchLab_MapCoordEvents:
GlitchResearchLab_WarpCoordEvents:

.align 4
GlitchResearchLab_MapBGEvents:

.align 4
GlitchResearchLab_MapEvts:
    map_events 0, GlitchResearchLab_MapObjectEvents, 0, 0, 0, GlitchResearchLab_MapCoordEvents, 0, GlitchResearchLab_MapBGEvents

.align 4
GlitchResearchLab_MapBorder:
    .byte 0xd4, 0x01, 0xd5, 0x01, 0xdc, 0x01, 0xdd, 0x01

.align 4
GlitchResearchLab_MapData:
    .hword 0xa45a, 0xb45b, 0xc45a, 0xa45b, 0xc45a, 0xc45b, 0xa45a, 0xb45b, 0xa45a, 0xc45b, 0xb45a, 0xa45b
    .hword 0xa462, 0xb463, 0xb462, 0xb463, 0xa462, 0xa463, 0xb462, 0xa463, 0xa462, 0xa463, 0xb462, 0xb463
    .hword 0xa45a, 0xb45b, 0xc420, 0xb414, 0x1190, 0x1170, 0xc4cd, 0x1189, 0xc420, 0xc414, 0x3004, 0x3001
    .hword 0xc462, 0xb463, 0xb420, 0xa414, 0x1190, 0x1170, 0xa4cd, 0x1170, 0xa420, 0xc414, 0x3001, 0x3004
    .hword 0x1190, 0x1170, 0xc49f, 0xc472, 0x1170, 0x1170, 0x0000, 0x0000, 0x3004, 0x3001, 0x31d9, 0x31d9
    .hword 0x1190, 0x1170, 0x30a7, 0xa47a, 0xa4cd, 0xa4cd, 0x0000, 0x0000, 0x3001, 0x3004, 0x31d9, 0x31d9
    .hword 0x1170, 0x1170, 0x31d9, 0x31d9, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x10f5, 0x10f5, 0x0000, 0x0000
    .hword 0xb4cd, 0xc4cd, 0x31d9, 0x31d9, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x1170, 0x1170, 0x0000, 0x0000
    .hword 0xc4a5, 0x3121, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x0000, 0x0000, 0x3004, 0x3001, 0x0000, 0x0000
    .hword 0xb4a5, 0x3121, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x0000, 0x0000, 0x3001, 0x3004, 0x0000, 0x0000
    .hword 0xb45a, 0xb45b, 0xa45a, 0xa45b, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x10f5, 0x10f5
    .hword 0xa462, 0xb463, 0xb462, 0xc463, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x31b3, 0x1170, 0x1170

.align 4
GlitchResearchLab_MapConnections:

.align 4
GlitchResearchLab_MapName:
    .string "x0566nGlitchResearchLab$"

# scripts/0566_GlitchResearchLab.s

GlitchResearchLab_MapInitCode:
    bx lr

GlitchResearchLab_MapInitScript:
    end


