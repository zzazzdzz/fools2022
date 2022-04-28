# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x066A_GlitchologyMuseum/map.json

.thumb
.include "include/constants.inc"
.org MAP_LOAD_BASE

.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/map.inc"
.include "include/event.inc"
.include "include/save.inc"

GlitchologyMuseum_MapHeader:
    .word GlitchologyMuseum_MapLayout
    .word GlitchologyMuseum_MapEvts
    .word NULL
    .word NULL
    .hword MUS_OCEANIC_MUSEUM
    .hword 0
    .byte 0
    .byte 0
    .byte WEATHER_NONE
    .byte 0
    .hword 0
    map_header_flags allow_cycling=1, allow_escaping=1, allow_running=1, show_map_name=1
    .byte 0
    # additional data specific to fools2022 maps
    .word GlitchologyMuseum_MapInitCode+1
    .word GlitchologyMuseum_MapConnections
    .word GlitchologyMuseum_MapInitScript
    .word GlitchologyMuseum_MapName
    .word 0x2819

GlitchologyMuseum_MapLayout:
    .word 18
    .word 12
    .word GlitchologyMuseum_MapBorder
    .word GlitchologyMuseum_MapData
    .word gTileset_Building
    .word gTileset_OceanicMuseum

.align 4
GlitchologyMuseum_MapObjectEvents:
    object_event 1, OBJ_EVENT_GFX_JUAN, 0, 2, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, GlitchologyMuseum_Script1, 0
    object_event 2, OBJ_EVENT_GFX_TWIN, 0, 8, 5, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 2, 0, TRAINER_TYPE_NONE, 0, GlitchologyMuseum_Script3, 0
    object_event 3, OBJ_EVENT_GFX_HIKER, 0, 10, 2, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, GlitchologyMuseum_Script2, 0

.align 4
GlitchologyMuseum_MapCoordEvents:
GlitchologyMuseum_WarpCoordEvents:
    coord_event 2, 9, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 3, 9, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
GlitchologyMuseum_MapBGEvents:
    bg_event 7, 7, 0, BG_EVENT_PLAYER_FACING_ANY, GlitchologyMuseum_Exhibit1
    bg_event 6, 1, 0, BG_EVENT_PLAYER_FACING_ANY, GlitchologyMuseum_Exhibit2
    bg_event 7, 1, 0, BG_EVENT_PLAYER_FACING_ANY, GlitchologyMuseum_Exhibit2
    bg_event 9, 1, 0, BG_EVENT_PLAYER_FACING_ANY, GlitchologyMuseum_Exhibit3
    bg_event 13, 4, 0, BG_EVENT_PLAYER_FACING_ANY, GlitchologyMuseum_Exhibit4
    bg_event 15, 4, 0, BG_EVENT_PLAYER_FACING_ANY, GlitchologyMuseum_Exhibit4
    bg_event 17, 4, 0, BG_EVENT_PLAYER_FACING_ANY, GlitchologyMuseum_Exhibit4

.align 4
GlitchologyMuseum_MapEvts:
    map_events 3, GlitchologyMuseum_MapObjectEvents, 0, 0, 2, GlitchologyMuseum_MapCoordEvents, 7, GlitchologyMuseum_MapBGEvents

.align 4
GlitchologyMuseum_MapBorder:
    .byte 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00

.align 4
GlitchologyMuseum_MapData:
    .hword 0xc604, 0xc604, 0xa604, 0xa604, 0xc604, 0xb604, 0xc608, 0xa609, 0xa604, 0xa608, 0xc609, 0xc604, 0xa604, 0xa604, 0xa604, 0xb604, 0xc604, 0xa604
    .hword 0xb60c, 0xc60c, 0xa60c, 0xc60c, 0xa63a, 0xa60c, 0xc610, 0xb611, 0xc60c, 0xc610, 0xc611, 0xc60c, 0xa60c, 0xc60c, 0xb60c, 0xb60c, 0xc60c, 0xb60c
    .hword 0x3246, 0x3246, 0x3246, 0x3246, 0xb642, 0x3203, 0x3218, 0x3219, 0x3203, 0x3218, 0x3219, 0x3203, 0x3203, 0x3203, 0x3203, 0x3203, 0x3203, 0x3203
    .hword 0xc633, 0xa648, 0xc649, 0xc633, 0xc64a, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0xa620, 0x3201, 0xa620, 0x3201, 0xb66a
    .hword 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0xa628, 0x3201, 0xa628, 0x3201, 0xb672
    .hword 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201
    .hword 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3253, 0x3254, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201
    .hword 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0xb65b, 0xb65c, 0x3201, 0xc401, 0xa401, 0xb401, 0xb401, 0xc401, 0xc401, 0xa401, 0xb401
    .hword 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3203, 0x3203, 0x3201, 0xc401, 0xc401, 0xa401, 0xc401, 0xc401, 0xb401, 0xa401, 0xa401
    .hword 0x3201, 0x3201, 0x3006, 0x3007, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0xa401, 0xc401, 0xb401, 0xc401, 0xa401, 0xa401, 0xa401, 0xc401
    .hword 0xa401, 0xc401, 0xc401, 0xb401, 0xb401, 0xb401, 0xc401, 0xc401, 0xc401, 0xc401, 0xc401, 0xc401, 0xa401, 0xa401, 0xb401, 0xa401, 0xa401, 0xa401
    .hword 0xc401, 0xa401, 0xc401, 0xb401, 0xc401, 0xc401, 0xa401, 0xc401, 0xc401, 0xc401, 0xb401, 0xc401, 0xa401, 0xc401, 0xa401, 0xb401, 0xc401, 0xb401

.align 4
GlitchologyMuseum_MapConnections:
    .hword 1583
    .byte 11, 15
    .hword 1583
    .byte 11, 15

.align 4
GlitchologyMuseum_MapName:
    .string "GLITCH MUSEUM$"

# scripts/066A_GlitchologyMuseum.s

.align 4

GlitchologyMuseum_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

GlitchologyMuseum_MapInitScript:
    end

GlitchologyMuseum_Script1:
    lock
    faceplayer
    msgbox GlitchologyMuseum_Script1_Text
    release
    end

GlitchologyMuseum_Script1_Text:
    .string "Welcome to Glitchland's one and only\n"
    .string "Glitchology Museum!\p"
    .string "We are terribly underfinanced, so we\n"
    .string "don't have particularly many exhibits.\p"
    .string "But there's still plenty of them. Make\n"
    .string "sure to check them out.$"

GlitchologyMuseum_Script2:
    lock
    faceplayer
    msgbox GlitchologyMuseum_Script2_Text
    release
    end

GlitchologyMuseum_Script2_Text:
    .string "Since our leap to newer generations, we\n"
    .string "hardly observe any glitches around us.\p"
    .string "In the past, we had many troubles with\n"
    .string "glitch phenomena in Glitchland.\p"
    .string "But today, our surroundings are rather\n"
    .string "peaceful. Hope it stays that way.$"

GlitchologyMuseum_Script3:
    lock
    faceplayer
    msgbox GlitchologyMuseum_Script3_Text
    release
    end

GlitchologyMuseum_Script3_Text:
    .string "The Glitchology Museum was founded\n"
    .string "by Glitch Research Lab scientists.\p"
    .string "Not only are they documenting all\n"
    .string "current glitch phenomena, but they\l"
    .string "archive glitch history for future\l"
    .string "generations to see. A noble cause!$"

GlitchologyMuseum_Exhibit1:
    lock
    msgbox GlitchologyMuseum_Exhibit1_Text
    release
    end

GlitchologyMuseum_Exhibit1_Text:
    .string "The computer displays an interactive\n"
    .string "documentary, which explains various\l"
    .string "first-generation glitches.$"

GlitchologyMuseum_Exhibit2:
    lock
    msgbox GlitchologyMuseum_Exhibit2_Text
    release
    end

GlitchologyMuseum_Exhibit2_Text:
    .string "The bones of the Aerodactyl Fossil\n"
    .string "Missingno., circa 1995.$"

GlitchologyMuseum_Exhibit3:
    lock
    msgbox GlitchologyMuseum_Exhibit3_Text
    release
    end

GlitchologyMuseum_Exhibit3_Text:
    .string "A leaf of an exploding Bulbasaur.\p"
    .string "{LQUOT}This Bulbasaur, which belonged to\n"
    .string "a trainer named ZZEZZKZZ, exploded\l"
    .string "in a fight against Charizard 'M, hoping\l"
    .string "to protect its owner to the very end.{RQUOT}$"

GlitchologyMuseum_Exhibit4:
    lock
    msgbox GlitchologyMuseum_Exhibit4_Text
    release
    end

GlitchologyMuseum_Exhibit4_Text:
    .string "Glitch items: 3F, 4F and 5F, are\n"
    .string "enclosed in glass capsules.\p"
    .string "{LQUOT}These items were commonly used\n"
    .string "by adventurers in the past, due to\l"
    .string "their unintended, beneficial effects.{RQUOT}$"

