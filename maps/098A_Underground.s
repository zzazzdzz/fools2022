# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x098A_Underground/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

Underground_MapHeader:
    .word Underground_MapLayout
    .word Underground_MapEvts
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
    .word Underground_MapInitCode+1
    .word Underground_MapConnections
    .word Underground_MapInitScript
    .word Underground_MapName
    .word 0x2819

Underground_MapLayout:
    .word 16
    .word 16
    .word Underground_MapBorder
    .word Underground_MapData
    .word gTileset_General
    .word gTileset_Cave

.align 4
Underground_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_FOSSIL, 0, 8, 11, 3, MOVEMENT_TYPE_NONE, 0, 0, TRAINER_TYPE_NONE, 0, Underground_Fossil, FLAG_UNDERGROUND_CAVE_HELIX

.align 4
Underground_MapCoordEvents:
Underground_WarpCoordEvents:
    coord_event 8, 1, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
Underground_MapBGEvents:

.align 4
Underground_MapEvts:
    map_events 1, Underground_MapObjectEvents, 0, 0, 1, Underground_MapCoordEvents, 0, Underground_MapBGEvents

.align 4
Underground_MapBorder:
    .byte 0xf1, 0x02, 0xf1, 0x02, 0xf1, 0x02, 0xf1, 0x02

.align 4
Underground_MapData:
    .hword 0xb6f1, 0xb6f1, 0xc6f1, 0xb6f1, 0xc6eb, 0xa6f9, 0xc6f9, 0xa6f9, 0xb6fe, 0xc6ff, 0xc6f9, 0xb6ec, 0xb6f1, 0xa6f1, 0xa6f1, 0xa6f1
    .hword 0xb6f1, 0xc6f1, 0xa6f1, 0xa6f1, 0xa6f2, 0xa6eb, 0xc6f9, 0xc6f9, 0x3306, 0xb707, 0xc6ec, 0xb6f0, 0xc6f1, 0xb6f1, 0xb6f1, 0xb6f1
    .hword 0xc6f1, 0xb6f1, 0xb6f1, 0xb6f1, 0xb6f2, 0xb6f2, 0x32f1, 0xb6ed, 0x32f1, 0x32f1, 0xa6f0, 0xc6f0, 0xa6f1, 0xa6f1, 0xb6f1, 0xc6f1
    .hword 0xa6f1, 0xb6f1, 0xb6f1, 0xb6f1, 0xc6f2, 0xc6f2, 0xb6ed, 0x32f1, 0x32f1, 0x32f1, 0xc6f0, 0xc6f0, 0xb6f1, 0xc6f1, 0xb6f1, 0xa6f1
    .hword 0xc6eb, 0xa6f9, 0xc6f9, 0xa6f9, 0xb6fa, 0xa6f2, 0xa6ee, 0x32f1, 0x32f1, 0xa6ef, 0xc6f0, 0xb6f8, 0xa6f9, 0xb6f9, 0xc6f9, 0xa6ec
    .hword 0xa6f2, 0xa6eb, 0xa6f9, 0xa6f9, 0xa6f9, 0xc6fa, 0x32f1, 0x32f1, 0x32f1, 0xb6f7, 0xc6f8, 0xb6f9, 0xb6f9, 0xa6f9, 0xc6ec, 0xc6f0
    .hword 0xa6f2, 0xb6f2, 0xb6ee, 0x32f1, 0x32f1, 0xc6ee, 0x32f1, 0x32f1, 0x32f1, 0x32f1, 0xa6ed, 0xb6ed, 0xc6ee, 0xb6ef, 0xc6f0, 0xc6f0
    .hword 0xb6f2, 0xc6f2, 0xb6ed, 0xc6ed, 0x32f1, 0xa6ed, 0x32f1, 0x32f1, 0x32f1, 0x32f1, 0x32f1, 0x32f1, 0x32f1, 0xb6f7, 0xa6f0, 0xc6f0
    .hword 0xc6f2, 0xb6f2, 0xa6ef, 0x32f1, 0x32f1, 0x32f1, 0x32f1, 0x32f1, 0xa6ee, 0x32f1, 0x32f1, 0x32f1, 0x32f1, 0x32f1, 0xa6f0, 0xa6f0
    .hword 0xa6f2, 0xb6f2, 0xc6f7, 0x32f1, 0x32f1, 0x32f1, 0x32f1, 0x32f1, 0xb6ed, 0xc6ee, 0x32f1, 0x32f1, 0x32f1, 0xa6ed, 0xc6f0, 0xa6f0
    .hword 0xb6f2, 0xc6e9, 0xc6e9, 0xc6e9, 0xa6e9, 0xc703, 0x32f1, 0x32f1, 0x32f1, 0x32f1, 0xb702, 0xc6e9, 0xa6e9, 0xa6e9, 0xc6e9, 0xb6f0
    .hword 0xb6e9, 0xa6e9, 0xb6e9, 0xb6e9, 0xa703, 0xc6f2, 0xb6ed, 0x32f1, 0x32f1, 0xa6ef, 0xa6f0, 0xa702, 0xc6e9, 0xc6e9, 0xa6e9, 0xb6e9
    .hword 0xb6f1, 0xb6f1, 0xb6f1, 0xa6f1, 0xc6f2, 0xb6f2, 0xa6ee, 0x32f1, 0x32f1, 0xb6f7, 0xc6f0, 0xb6f0, 0xb6f1, 0xa6f1, 0xa6f1, 0xa6f1
    .hword 0xb6f1, 0xc6f1, 0xc6f1, 0xc6f1, 0xb6f2, 0xa6f2, 0x32f1, 0xc6ed, 0x32f1, 0x32f1, 0xc6f0, 0xc6f0, 0xb6f1, 0xa6f1, 0xc6f1, 0xa6f1
    .hword 0xc6f1, 0xb6f1, 0xc6f1, 0xc6f1, 0xa6f2, 0xb6e9, 0xa6e9, 0xc6e9, 0xb6e9, 0xc6e9, 0xc6e9, 0xb6f0, 0xb6f1, 0xa6f1, 0xb6f1, 0xc6f1
    .hword 0xa6f1, 0xa6f1, 0xb6f1, 0xa6f1, 0xb6e9, 0xb6e9, 0xc6e9, 0xa6e9, 0xb6e9, 0xa6e9, 0xc6e9, 0xb6e9, 0xc6f1, 0xc6f1, 0xb6f1, 0xb6f1

.align 4
Underground_MapConnections:
    .hword 2354
    .byte 11, 18

.align 4
Underground_MapName:
    .string "UNDERGROUND CAVE$"

# scripts/098A_Underground.s

.align 4

Underground_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

Underground_MapInitScript:
    end

Underground_Fossil:
    lock
    setflag FLAG_UNDERGROUND_CAVE_HELIX
    message Underground_Fossil_Text
    waitmessage
    playfanfare MUS_RG_OBTAIN_KEY_ITEM
    waitfanfare
    call SyncProgressScript
    removeobject 1
    release
    end

Underground_Fossil_Text:
    .string "All praise the Helix.$"