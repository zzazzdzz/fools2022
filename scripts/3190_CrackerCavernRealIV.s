.align 4

CrackerCavernRealIV_MapInitCode:
    ldr r0, =CrackerCavern_ClearFlag
    ldrb r0, [r0]
    cmp r0, #0
    bne CrackerCavernRealIV_MapInitCode_MakePassage
    bx lr
CrackerCavernRealIV_MapInitCode_MakePassage:
    ldr r0, =CrackerCavernRealIV_MapData+(7*12+9)*2
    ldr r1, =0x3201
    strh r1, [r0]
    bx lr
    
CrackerCavernIV_SetTile:
    push {lr}
    mov r0, #9+7
    mov r1, #7+7
    ldr r2, =0x3201
    ldr r3, =MapGridSetMetatileEntryAt+1
    bl CrackerCavernIV_SetTile_BXR3
    pop {r3}
CrackerCavernIV_SetTile_BXR3:
    bx r3

CrackerCavern_PrepareCertGeneratorPacket:
    # set packet length
    ldr r1, =zLinkPacketTxLen
    mov r0, #9
    str r0, [r1]
    # set packet struct address
    ldr r1, =zLinkPacketTx
    ldr r0, =CrackerCavern_CertRequestBuffer
    str r0, [r1]
    # prepare packet type
    mov r1, #COMMAND_ID_CRACKER4_GIVECERT
    str r1, [r0]
    # receive 256 bytes
    ldr r1, =zLinkPacketRxLen
    ldr r0, =#256
    str r0, [r1]
    # to the cert buffer
    ldr r1, =zLinkPacketRx
    ldr r0, =CrackerCavern_CertBuffer
    str r0, [r1]
    bx lr

CrackerCavern_PrepareCertAppraisalPacket:
    # set packet length
    ldr r1, =zLinkPacketTxLen
    mov r0, #65
    str r0, [r1]
    # set packet struct address
    ldr r1, =zLinkPacketTx
    ldr r0, =CrackerCavern_CertAppraiseBuffer
    str r0, [r1]
    # prepare packet type
    mov r1, #COMMAND_ID_CRACKER4_TESTCERT
    str r1, [r0]
    # receive 256 bytes
    ldr r1, =zLinkPacketRxLen
    ldr r0, =#256
    str r0, [r1]
    # to gStringVar2-4
    ldr r1, =zLinkPacketRx
    ldr r0, =gStringVar2-4
    str r0, [r1]
    bx lr

CrackerCavernRealIV_MapInitScript:
    end

.align 4
.ltorg

CrackerCavernIV_MapInitScript:
    end

CrackerCavern_Wello1:
    lock
    faceplayer
    loadbytefromaddr 0, CrackerCavern_CertBuffer
    compare_local_to_value 0, 0
    goto_if_eq CrackerCavern_Wello1_NoCert
    msgbox CrackerCavern_Wello1_Text4, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq CrackerCavern_Wello1_NewCertInstead
CrackerCavern_Wello1_AppraiseCert:
    callnative CrackerCavern_PrepareCertAppraisalPacket
    call GenericRequestScript
    callnative ASCIIToGenIIICharset
    msgbox CrackerCavern_Wello1_Text6
    loadbytefromaddr 0, gStringVar2-4
    compare_local_to_value 0, 0x47
    goto_if_eq CrackerCavern_Wello1_YouDidIt
CrackerCavern_Wello1_Done:
    release
    end
CrackerCavern_Wello1_NoCert:
    msgbox CrackerCavern_Wello1_Text, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq CrackerCavern_Wello1_Done
CrackerCavern_Wello1_MakeNewCert:
    msgbox CrackerCavern_Wello1_Text2
    callnative CrackerCavern_PrepareCertGeneratorPacket
    call GenericRequestScript
    msgbox CrackerCavern_Wello1_Text3
    release
    end
CrackerCavern_Wello1_NewCertInstead:
    msgbox CrackerCavern_Wello1_Text5, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq CrackerCavern_Wello1_Done
    goto CrackerCavern_Wello1_MakeNewCert
CrackerCavern_Wello1_YouDidIt:
    msgbox CrackerCavern_Wello1_Text7
	playse SE_ICE_STAIRS
    callnative CrackerCavernIV_SetTile
    callnative DrawWholeMapView
    release
    end


CrackerCavern_Wello1_Text:
    .string "Wello! Do you want me to issue a new\n"
    .string "Silver Certificate?$"

CrackerCavern_Wello1_Text2:
    .string "Great! I'm going to generate a Silver\n"
    .string "Certificate of Commendation for the\l"
    .string "holder name of {LQUOT}Aelita{RQUOT}.$"

CrackerCavern_Wello1_Text3:
    .string "Your certificate was received.\n"
    .string "Speak to me again to have it appraised.$"

CrackerCavern_Wello1_Text4:
    .string "Wello! I see you have a certificate.\n"
    .string "Would you like me to appraise it?$"

CrackerCavern_Wello1_Text5:
    .string "OK. In that case, should I generate\n"
    .string "a new Silver Certificate?$"
    
CrackerCavern_Wello1_Text6:
    .string "Here's your certificate!\n"
    .string "{STR_VAR_2}$"

CrackerCavern_Wello1_Text7:
    .string "Wow, that's a Gold Certificate!\n"
    .string "That's hugely impressive!$"

CrackerCavernI_Script1:
    lock
    msgbox CrackerCavernI_Script1_Text
    release
    end

CrackerCavernI_Script1_Text:
    .string "CRACKER CAVERN REBORN\n"
    .string "CHALLENGE IV\p"
    .string "You have come so far.\n"
    .string "Here's your final mission!\p"
    .string "The person on your right gives away\n"
    .string "Silver Certificates of Commendation.\p"
    .string "They're cool and all, but I really\n"
    .string "want to see a Gold Certificate.\p"
    .string "I heard the certificates are protected\n"
    .string "with military-grade AES encryption.\p"
    .string "Can you forge a Gold Certificate?\n"
    .string "Maybe there's a weakness somewhere?\p"
    .string "That's for you to find out.\n"
    .string "Good luck!$"

CrackerCavern_ClearFlag:
    .ascii "--CC4CLEAR--"
	.byte 0xff

.align 4
CrackerCavern_CertRequestBuffer:
    .word 0
CrackerCavern_CertData:
    .ascii "holder=Aelita/type=silver"
    .byte 0xff

.align 4
CrackerCavern_CertAppraiseBuffer:
    .word 0
CrackerCavern_CertBuffer:
    .byte 0

