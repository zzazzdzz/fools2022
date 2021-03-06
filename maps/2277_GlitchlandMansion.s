# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x2277_GlitchlandMansion/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

GlitchlandMansion_MapHeader:
    .word GlitchlandMansion_MapLayout
    .word GlitchlandMansion_MapEvts
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
    .word GlitchlandMansion_MapInitCode+1
    .word GlitchlandMansion_MapConnections
    .word GlitchlandMansion_MapInitScript
    .word GlitchlandMansion_MapName
    .word 0x1718

GlitchlandMansion_MapLayout:
    .word 16
    .word 12
    .word GlitchlandMansion_MapBorder
    .word GlitchlandMansion_MapData
    .word gTileset_Building
    .word gTileset_InsideShip

.align 4
GlitchlandMansion_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_ITEM_BALL, 0, 11, 3, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, GlitchlandMansion_Script1, FLAG_MANSION_GOT_SCALE

.align 4
GlitchlandMansion_MapCoordEvents:
GlitchlandMansion_WarpCoordEvents:
    coord_event 2, 10, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 3, 10, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
GlitchlandMansion_MapBGEvents:

.align 4
GlitchlandMansion_MapEvts:
    map_events 1, GlitchlandMansion_MapObjectEvents, 0, 0, 2, GlitchlandMansion_MapCoordEvents, 0, GlitchlandMansion_MapBGEvents

.align 4
GlitchlandMansion_MapBorder:
    .byte 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00

.align 4
GlitchlandMansion_MapData:
    .hword 0xc401, 0xa401, 0xc401, 0xa401, 0xa401, 0xc401, 0xb401, 0xb401, 0xb401, 0xb636, 0xc66c, 0xa66c, 0xa66c, 0xb637, 0xb401, 0xb401
    .hword 0xb401, 0xa401, 0xc401, 0xc401, 0xc401, 0xa401, 0xa401, 0xa401, 0xa401, 0xb63e, 0xb674, 0xc674, 0xb674, 0xa63f, 0xb401, 0xa401
    .hword 0xa401, 0xb401, 0xa401, 0xc401, 0xa401, 0xb401, 0xb401, 0xb401, 0xc401, 0xc63e, 0x323a, 0x323b, 0x323b, 0xa63f, 0xb401, 0xb401
    .hword 0xa401, 0xa401, 0xa401, 0xb401, 0xa401, 0xc401, 0xb401, 0xa401, 0xc401, 0xc63e, 0x323d, 0x3238, 0x3238, 0xb63f, 0xb401, 0xc401
    .hword 0xb636, 0xa66c, 0xc66c, 0xa66c, 0xc66c, 0xc676, 0xa66c, 0xb676, 0xc66c, 0xa66c, 0x323d, 0x3238, 0xa6aa, 0xa66c, 0xc637, 0xa401
    .hword 0xc63e, 0xa648, 0xa673, 0xb674, 0xc674, 0xc67e, 0xb674, 0xb67e, 0xb674, 0xa674, 0x323d, 0x3238, 0x3238, 0xb674, 0xc63f, 0xb401
    .hword 0xa63e, 0xa650, 0xc651, 0xc668, 0x323b, 0x323b, 0x323b, 0x323b, 0x323b, 0x323b, 0x323c, 0x3238, 0x3238, 0x3238, 0xb63f, 0xb401
    .hword 0xc63e, 0xa658, 0xc659, 0x323d, 0x3238, 0x3238, 0x3238, 0x3238, 0xa6aa, 0xb6ab, 0xa660, 0xb656, 0xa657, 0xb661, 0xa63f, 0xb401
    .hword 0xc63e, 0xa6ab, 0x3238, 0x3238, 0x3238, 0x3238, 0x3238, 0x3238, 0x3238, 0x3238, 0xb660, 0xc65e, 0xa65f, 0xc661, 0xb63f, 0xb401
    .hword 0xa63e, 0x3238, 0x3238, 0x3238, 0x3238, 0x3238, 0xc6aa, 0xb6ab, 0x3238, 0x3238, 0x3238, 0x3238, 0x3238, 0x3238, 0xb63f, 0xa401
    .hword 0xc63e, 0x3238, 0x3006, 0x3007, 0x3238, 0xa63f, 0xc401, 0xc401, 0xb401, 0xb401, 0xc401, 0xc401, 0xc401, 0xc401, 0xb401, 0xb401
    .hword 0xa401, 0xa401, 0xa401, 0xc401, 0xa401, 0xc401, 0xb401, 0xc401, 0xc401, 0xa401, 0xb401, 0xc401, 0xb401, 0xa401, 0xc401, 0xc401

.align 4
GlitchlandMansion_MapConnections:
    .hword 8821
    .byte 17, 3
    .hword 8821
    .byte 17, 3

.align 4
GlitchlandMansion_MapName:
    .string "WEST MANSION$"

# scripts/2277_GlitchlandMansion.s

.align 4

GlitchlandMansion_MapInitCode:
    bx lr

GlitchlandMansion_MapInitScript:
    end

GlitchlandMansion_Script1:
    lock
    removeobject 1
    giveitem 111
    setflag FLAG_MANSION_GOT_SCALE
    call SyncProgressScript
    release
    end

