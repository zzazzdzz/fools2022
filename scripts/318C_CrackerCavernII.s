.align 4

CrackerCavernII_MapInitCode:
    ldr r0, =CrackerCavern_ClearFlag
    ldrb r0, [r0]
    cmp r0, #0
    bne CrackerCavernII_MapInitCode_MakePassage
    bx lr
CrackerCavernII_MapInitCode_MakePassage:
    ldr r0, =CrackerCavernII_MapData+(7*12+9)*2
    ldr r1, =0x3201
    strh r1, [r0]
    bx lr

CrackerCavernII_MapInitScript:
    end

CrackerCavernI_Script1:
    lock
    msgbox CrackerCavernI_Script1_Text
    release
    end

CrackerCavernI_Script1_Text:
    .string "CRACKER CAVERN REBORN\n"
    .string "CHALLENGE II\p"
    .string "As you may have noticed, this entire\n"
    .string "world is made of many different small\l"
    .string "maps, loaded on demand.\p"
    .string "Use whatever tools you desire to\n"
    .string "reach the map with identifier 0x1337.\p"
    .string "Once this is done, return here and\n"
    .string "take the bottom exit to continue.\p"
    .string "Note - bypassing the barrier with\n"
    .string "client-side hacks won't work anymore.\l"
    .string "Checks are done server-side.\p"
    .string "Next challenge will not load until\n"
    .string "this one is completed. Good luck!$"

CrackerCavern_ClearFlag:
    .ascii "--CC2CLEAR--"
	.byte 0xff
