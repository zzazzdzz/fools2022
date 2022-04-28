# vars.s
# RAM variables

.align 4

zLinkNumRetries:
    .word 3
zLinkPacketTx:
    .word 0
zLinkPacketTxLen:
    .word 0
zLinkPacketRx:
    .word 0
zLinkPacketRxLen:
    .word 0
zLinkSuccess:
    .word 0
zLinkStatusWord:
    .word 0

# padding to secure against off by one errors
.word 0

zPreviousMapMusic:
    .hword 0
zSkipMapExitMovement:
    .byte 0

.align 4
zWarpTargetData:
    #.hword 0x1a3c
    #.byte 8,8
    .hword 0x0100
    .byte 17, 27
zWarpTargetDirection:
    .byte 1

.align 4
zMapPositionStruct:
    .hword 0
    .hword 0
    .byte 0

zMapStateVar:
    .byte 1

.align 4
zPacketStruct:
    # command ID
    .byte 0
    # ???
    .byte 0
    # checksum
    .hword 0
zPacketStruct_DownloadMap_MapID_DWORD:
    .word 0

.align 4
zStoredMapLayoutID:
    .hword 0
zSelectedTPOption:
    .byte 0
zGeneralPurposePersistence:
    .byte 0

.align 4
zLostWoods:
    .word 0
zLocationFlags:
    .byte 0, 0, 0, 0, 0, 0
    
# pad to word size
.byte 13, 37

zWrongSaveVersion:
    .byte 0

zDefaultMapName:
    .string "bepis$"
