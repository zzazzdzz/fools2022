# fools2022 - autogenerated map file, please do not change!
# created from: pokeemerald/data/maps/x2478_DesolatedCabin/map.json

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
    .hword 0xffff
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
    .word 10
    .word 8
    .word DesolatedCabin_MapBorder
    .word DesolatedCabin_MapData
    .word gTileset_Building
    .word gTileset_BrendansMaysHouse

.align 4
DesolatedCabin_MapObjectEvents:

.align 4
DesolatedCabin_MapCoordEvents:
DesolatedCabin_WarpCoordEvents:
    coord_event 6, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT
    coord_event 7, 7, 0, SCRIPT_WARP_TRIGGER, 0, WARP_SCRIPT

.align 4
DesolatedCabin_MapBGEvents:
    bg_event 0, 1, 0, BG_EVENT_PLAYER_FACING_ANY, DesolatedCabin_Script1
    bg_event 1, 1, 0, BG_EVENT_PLAYER_FACING_ANY, DesolatedCabin_Script2
    bg_event 2, 1, 0, BG_EVENT_PLAYER_FACING_ANY, DesolatedCabin_Script3
    bg_event 4, 1, 0, BG_EVENT_PLAYER_FACING_ANY, DesolatedCabin_Script4
    bg_event 6, 1, 0, BG_EVENT_PLAYER_FACING_ANY, DesolatedCabin_Script5
    bg_event 7, 1, 0, BG_EVENT_PLAYER_FACING_ANY, DesolatedCabin_Script6
    bg_event 9, 2, 0, BG_EVENT_PLAYER_FACING_ANY, DesolatedCabin_Script7
    bg_event 1, 6, 0, BG_EVENT_PLAYER_FACING_ANY, DesolatedCabin_Script8
    bg_event 1, 7, 0, BG_EVENT_PLAYER_FACING_ANY, DesolatedCabin_Script8

.align 4
DesolatedCabin_MapEvts:
    map_events 0, DesolatedCabin_MapObjectEvents, 0, 0, 2, DesolatedCabin_MapCoordEvents, 9, DesolatedCabin_MapBGEvents

.align 4
DesolatedCabin_MapBorder:
    .byte 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00

.align 4
DesolatedCabin_MapData:
    .hword 0xb652, 0xa654, 0xc654, 0xa654, 0xc653, 0xb654, 0xc61e, 0xc654, 0xa654, 0xb654
    .hword 0xc65a, 0xc65b, 0xa66c, 0xa65c, 0xc655, 0xb65c, 0xa626, 0xa665, 0xa643, 0xb644
    .hword 0x3262, 0x3263, 0x3274, 0x3205, 0x3205, 0x3205, 0x3205, 0x3266, 0xb64b, 0xc64c
    .hword 0x327a, 0x3201, 0x3201, 0x3201, 0x329b, 0x329c, 0x329c, 0x329d, 0x3201, 0x3201
    .hword 0x327a, 0x3201, 0x3201, 0x3201, 0x32a3, 0x32a4, 0x32a4, 0x32a5, 0x3201, 0x3201
    .hword 0x327a, 0x327c, 0x327d, 0x3201, 0x32ab, 0x32ac, 0x32ac, 0x32ad, 0x3201, 0x3201
    .hword 0x3283, 0xc684, 0x3285, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201, 0x3201
    .hword 0x328b, 0xb68c, 0x328d, 0x3201, 0x3201, 0x3201, 0x3202, 0x3203, 0x3201, 0x3201

.align 4
DesolatedCabin_MapConnections:
    .hword 9269
    .byte 12, 9
    .hword 9269
    .byte 12, 9

.align 4
DesolatedCabin_MapName:
    .string "DESOLATED CABIN$"

# scripts/2478_DesolatedCabin.s

.align 4

DesolatedCabin_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

DesolatedCabin_MapInitScript:
    end

DesolatedCabin_Script1:
    lock
    msgbox DesolatedCabin_Script1_Text
    release
    end

DesolatedCabin_Script1_Text:
    .string "It's a PC.\n"
    .string "Someone left it turned on.\p"
    .string "The mGBA emulator is running with GDB\n"
    .string "debugging server active.$"

DesolatedCabin_Script2:
    lock
    msgbox DesolatedCabin_Script2_Text
    release
    end

DesolatedCabin_Script2_Text:
    .string "A diary.\n"
    .string "It's tempting to look inside.\p"
    .string "But once you do, you realize that all\n"
    .string "most the pages are blank.\p"
    .string "Sometimes it's just better to leave the\n"
    .string "past behind and move forward.$"

DesolatedCabin_Script3:
    lock
    msgbox DesolatedCabin_Script3_Text
    release
    end

DesolatedCabin_Script3_Text:
    .string "A box, aptly labeled\n"
    .string "{LQUOT}MISCELLANEOUS STUFF{RQUOT}.\p"
    .string "Oh boy. That does not sound like\n"
    .string "good practice for organizing things.$"

DesolatedCabin_Script4:
    lock
    msgbox DesolatedCabin_Script4_Text
    release
    end

DesolatedCabin_Script4_Text:
    .string "A sketch is hanging on the wall.\p"
    .string "Two astral creatures are fighting.\n"
    .string "Embodiments of light and shadow.\p"
    .string "Which one will win? No one.\n"
    .string "They will fight for all eternity.$"

DesolatedCabin_Script5:
    lock
    msgbox DesolatedCabin_Script5_Text
    release
    end

DesolatedCabin_Script5_Text:
    .string "You look through the window, hoping to\n"
    .string "see a breathtaking view.\p"
    .string "Unfortunately, you see just your own,\n"
    .string "miserable, reflected self.$"

DesolatedCabin_Script6:
    lock
    msgbox DesolatedCabin_Script6_Text
    release
    end

DesolatedCabin_Script6_Text:
    .string "A game console. Looks like it got\n"
    .string "quite a bit of use.\p"
    .string "Ah, video games. Useful to distract\n"
    .string "yourself from the fact that you exist.$"

DesolatedCabin_Script7:
    lock
    msgbox DesolatedCabin_Script7_Text
    release
    end

DesolatedCabin_Script7_Text:
    .string "A shelf full of self-help books.\n"
    .string "There are some titles you recognize.\p"
    .string "{LQUOT}Coping skills for depression{RQUOT}!\n"
    .string "{LQUOT}Overcoming anxiety{RQUOT}!\p"
    .string "{LQUOT}How to tell a borderline loved one to\n"
    .string "fuck off... gently{RQUOT}!$"

DesolatedCabin_Script8:
    lock
    msgbox DesolatedCabin_Script8_Text
    release
    end

DesolatedCabin_Script8_Text:
    .string "A soft, comfy bed.\p"
    .string "Bed is soft. Bed is nice.\n"
    .string "Bed is always there for you.\l"
    .string "Everyone should be like bed.$"

