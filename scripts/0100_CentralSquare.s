.align 4

CentralSquare_MapInitCode:
    push {lr}
    # only do that stuff if it's first load
    ldr r0, =zGeneralPurposePersistence
    ldrb r0, [r0]
    cmp r0, #0
    bne CentralSquare_MapInitCode_AlreadyDone
CentralSquare_MapInitCode_RewriteFlags:
    ldr r0, =zGeneralPurposePersistence
    mov r1, #1
    strb r1, [r0]
    # copy event flags
    ldr r1, =EventFlags
    ldr r2, =gSaveBlock1Ptr
    ldr r2, [r2]
    ldr r0, =0x1270 + (0x400 / 8)
    add r2, r0
    mov r3, #32
    bl InlineCopyData
    # copy fly flags
    ldr r0, =zLocationFlags
    ldr r1, =LocationFlags
    ldr r2, [r1]
    str r2, [r0]
    ldr r2, [r1, #0x04]
    str r2, [r0, #0x04]
    # set permanent story flags
    ldr r0, =FLAG_MANSION_PICKING1
    ldr r1, =FlagSet+1
    bl CentralSquare_MapInitCode_BXR1
    ldr r0, =FLAG_MANSION_PICKING3
    ldr r1, =FlagSet+1
    bl CentralSquare_MapInitCode_BXR1
    ldr r0, =FLAG_WESTERN_RELIC_ITEM
    ldr r1, =FlagSet+1
    bl CentralSquare_MapInitCode_BXR1
    # reconstruct the inventory
    ldr r1, =CreateInventoryBasedOnFlags+1
    bl CentralSquare_MapInitCode_BXR1
CentralSquare_MapInitCode_AlreadyDone:
    # get out
    pop {r1}
CentralSquare_MapInitCode_BXR1:
    bx r1
InlineCopyData:
    # copy r3 bytes from r1 to r2
    ldrb r0, [r1]
    strb r0, [r2]
    add r1, #1
    add r2, #1
    sub r3, #1
    bne InlineCopyData
    bx lr

.align 4
LocationFlags:
    .ascii "--FLYFLAGS--"

.align 4
EventFlags:
    .ascii "--EVENTFLAGS__________________--"

.align 4
.ltorg

CentralSquare_MapInitScript:
    end

CentralSquare_Script1:
    lock
    faceplayer
    msgbox CentralSquare_Script1_Text
    release
    end

CentralSquare_Script1_Text:
    .string "In Glitchland, there's something for\n"
    .string "everyone to enjoy!\p"
    .string "I even heard about a place called\n"
    .string "Cracker Cavern, located not too far\l"
    .string "to the east from here.\p"
    .string "It is supposedly the go-to place\n"
    .string "for testing one's hacking skills.\p"
    .string "I even heard they upgraded their\n"
    .string "challenges recently!$"

CentralSquare_Script2:
    lock
    faceplayer
    msgbox CentralSquare_Script2_Text
    release
    end

CentralSquare_Script2_Text:
    .string "Glitchland is a big world, but there are\n"
    .string "no infinite worlds.\p"
    .string "On the NORTHERN, WESTERN, EASTERN\n"
    .string "and SOUTHERN edges, you'll receive\l"
    .string "tools to help you on your adventures.\p"
    .string "Or so they say. Myself, I've never\n"
    .string "ventured this far out.\p"
    .string "I'm a brave boy, yet I'm not a brave\n"
    .string "enough boy for this...$"

CentralSquare_Script3:
    lock
    faceplayer
    msgbox CentralSquare_Script3_Text
    release
    end

CentralSquare_Script3_Text:
    .string "In Glitchland, we have long standing\n"
    .string "traditions of peace.\p"
    .string "That's why we choose to never engage\n"
    .string "in any Pok{EACUTE}mon battles.\p"
    .string "The Pok{EACUTE}mon don't even attack us in\n"
    .string "the tall grass, since they don't\l"
    .string "perceive us as a threat.\p"
    .string "Many retired trainers come here and\n"
    .string "try their luck as explorers!$"

CentralSquare_Script4:
    lock
    faceplayer
    msgbox CentralSquare_Script4_Text
    release
    end

CentralSquare_Script4_Text:
    .string "Hi there! Is it your first time\n"
    .string "here?\p"
    .string "Oh my! We haven't gotten any new\n"
    .string "adventurers since, like, 4 years?\p"
    .string "Remember to talk with everyone you\n"
    .string "meet along your way.\p"
    .string "The people of Glitchland might help\n"
    .string "you with useful tips during your\l"
    .string "journey.\p"
    .string "You also get some pop culture, movie\n"
    .string "and video game references as a bonus!\p"
    .string "I wish you best luck with your\n"
    .string "exploration. Have lots of fun!$"

CentralSquare_SignMain:
    lock
    msgbox CentralSquare_SignMain_Text
    release
    end
    
CentralSquare_SignMain_Text:
    .string "CENTRAL SQUARE\n"
    .string "The starting point of adventurers!$"
    
CentralSquare_SignNorth:
    lock
    msgbox CentralSquare_SignNorth_Text
    release
    end
    
CentralSquare_SignNorth_Text:
    .string "NORTHERN PASSAGE$"
    
CentralSquare_SignSouth:
    lock
    msgbox CentralSquare_SignSouth_Text
    release
    end
    
CentralSquare_SignSouth_Text:
    .string "SOUTHERN PASSAGE$"
    
CentralSquare_SignWest:
    lock
    msgbox CentralSquare_SignWest_Text
    release
    end
    
CentralSquare_SignWest_Text:
    .string "WESTERN PASSAGE$"
    
CentralSquare_SignEast:
    lock
    msgbox CentralSquare_SignEast_Text
    release
    end
    
CentralSquare_SignEast_Text:
    .string "EASTERN PASSAGE$"

CentralSquare_TP:
    lock
    call GenericTPScript
    release
    end
