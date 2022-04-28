# overworld.s
# Handle map loading, warps, connections and overworld events.

TryDownloadMap:
    # Attempt to download a new map.
    push {lr}
    # set packet length
    ldr r1, =zLinkPacketTxLen
    mov r0, #2
    str r0, [r1]
    # set packet struct address
    ldr r1, =zLinkPacketTx
    ldr r0, =zPacketStruct
    str r0, [r1]
    # set command ID
    mov r1, #COMMAND_ID_GETMAP
    str r1, [r0]
    # set warp target field
    ldr r1, =zWarpTargetData
    ldr r1, [r1]
    str r1, [r0, #0x04]
    # checksum the packet and fill random value
    bl PopulatePacketRandValue
    bl PopulatePacketChecksum
    # receive at most 0x4000 bytes
    ldr r1, =zLinkPacketRxLen
    ldr r0, =0x4000
    str r0, [r1]
    # to MAP_LOAD_BASE
    ldr r1, =zLinkPacketRx
    ldr r0, =MAP_LOAD_BASE
    str r0, [r1]
    # request data
    bl Request
    beq TryDownloadMapFailed
TryDownloadMapSucceeded:
    # tell scripts that the load succeeded
    ldr r1, =gSpecialVar_Result
    mov r0, #0
    str r0, [r1]
    # execute map loader code
    # valid loader codes should be at $0201XXXX
    ldr r0, =MAP_LOAD_BASE
    ldrh r0, [r0, #0x1e]
    ldr r1, =#0x0201
    cmp r0, r1
    # if the address looks invalid, error out
    bne TryDownloadMapFailed
TryDownloadMapExecPreloadCode:
    # if the address looks valid, go for it
    ldr r0, =MAP_LOAD_BASE
    ldr r0, [r0, #0x1c]
    bl TryDownloadMapBXR0
TryDownloadMapReturn:
    # NotLikeThis
    pop {r0}
    bx r0
TryDownloadMapFailed:
    ldr r1, =gSpecialVar_Result
    mov r0, #1
    str r0, [r1]
    pop {r0}
TryDownloadMapBXR0:
    bx r0

PostMapLoadEvents:
    # This code gets executed once the map is loaded.
    push {r7, lr}
    # are we on a non-silent map? if so, skip music change
    ldr r0, =gSaveBlock1Ptr
    ldr r0, [r0]
    ldrh r0, [r0, #0x04]
    ldr r1, =0x2819
    cmp r0, r1
    bne PostMapLoadEvents_SkipMusicChange
    # load current map music
    ldr r0, =MAP_LOAD_BASE
    ldrh r0, [r0, #0x10]
    farcall Overworld_ChangeMusicTo
PostMapLoadEvents_SkipMusicChange:
    # give the player a nice mew for hms
    ldr r1, =gPlayerParty
    mov r2, #200
    mov r3, #0
    bl FillMemory
    ldr r1, =DefaultPokemonData
    ldr r2, =gPlayerParty
    mov r3, #100
    bl CopyData
    # rig the save function
    ldr r0, =gFlashMemoryPresent
    mov r1, #0
    str r1, [r0]
    # spoof for a bit; store previous layout
    ldr r0, =gMapHeader
    ldrh r1, [r0, #0x12]
    ldr r0, =zStoredMapLayoutID
    strh r1, [r0]
    # and replace current layout with battle pyramid
    ldr r0, =gMapHeader
    ldr r1, =#0x0169
    strh r1, [r0, #0x12]
    # invalid pyramid floor 0x1a8, with name pointing to RAM
    ldr r0, =gSaveBlock2Ptr
    ldr r0, [r0]
    ldr r1, =#0x0cb2
    add r0, r1
    ldr r1, =0x01a8
    strh r1, [r0]
    # load map name to correct RAM location
    ldr r0, =#0x0201c000
    ldr r1, =MAP_LOAD_BASE
    ldr r1, [r1, #0x28]
    mov r2, #32
    farcall StringCopyN
    # return
    pop {r7}
    pop {r0}
    bx r0

PostPostMapLoadEvents:
    # This executes once the map is loaded and map name is shown.
    # ---
    # bring back the old layout
    ldr r0, =zStoredMapLayoutID
    ldrh r1, [r0]
    ldr r0, =gMapHeader
    strh r1, [r0, #0x12]
    # make the next warp go to mystery zone x=4 y=4 as a failsafe
    # (valid warps should replace this value)
    ldr r0, =zWarpTargetData
    ldr r1, =0x04040000
    str r1, [r0]
    bx lr

WarpToLoadedMap:
    # Load the downloaded map and warp to it.
    # ---
    # set player position first
    push {r7, lr}
    mov r0, #0
    mov r1, #0
    mov r2, #0
    sub r2, #1
    mov r3, #16
    push {r3}
    farcall SetWarpDestination
    pop {r3}
    # change map to value specified in header (for surf music)
    # defaults to silent (0x2819, inside of truck)
    ldr r1, =MAP_LOAD_BASE
    ldr r1, [r1, #0x2c]
    ldr r0, =gSaveBlock1Ptr
    ldr r0, [r0]
    strh r1, [r0, #0x04]
    # change the map global script
    ldr r0, =DefaultMapScriptData
    ldr r1, =MAP_LOAD_BASE
    str r0, [r1, #0x08]
    # change movement according to zWarpTargetDirection
    ldr r0, =zWarpTargetDirection
    ldrb r1, [r0]
    ldr r0, =StepDirectionTable
    ldrb r0, [r0, r1]
    ldr r1, =DefaultMapScriptMovementData
    strb r0, [r1]
    # or do no movement if skip movement counter is at 1
    ldr r0, =zSkipMapExitMovement
    ldrb r0, [r0]
    mov r1, #1
    cmp r0, r1
    bne WarpToLoadedMap_MovementOK
    # do no movement
    # btw you could cut some instructions by clever register management
    # NotLikeThis
    ldr r1, =DefaultMapScriptMovementData
    mov r0, #MOVEMENT_ACTION_STEP_END
    strb r0, [r1]
WarpToLoadedMap_MovementOK:
    # decrement movement skip flag
    ldr r1, =zSkipMapExitMovement
    ldrb r0, [r1]
    mov r2, #1
    sub r0, r2
    bvc WarpToLoadedMap_MovementCounterNoOV
    mov r0, #0
WarpToLoadedMap_MovementCounterNoOV:
    strb r0, [r1]
    # copy map header
    ldr r1, =MAP_LOAD_BASE
    ldr r2, =gMapHeader
    mov r3, #0x1c
    bl CopyData
    # set up player position
    ldr r0, =zWarpTargetData
    ldrb r1, [r0, #3]
    ldrb r0, [r0, #2]
    lsl r1, #16
    add r1, r0
    ldr r0, =gSaveBlock1Ptr
    ldr r0, [r0]
    str r1, [r0]
    ldr r0, =WarpToLoadedMap_Return+1
    push {r0}
    push {r4-r7}
    mov r7, #0
    ldr r0, =LoadMapFromWarp+8+1
    bx r0
WarpToLoadedMap_Return:
    ldr r0, =zMapStateVar
    mov r1, #1
    strb r1, [r0]
    farcall DoMapLoadLoop
    # SetMainCallback2(CB2_LoadMap);
    ldr r0, =CB2_ReturnToFieldLocal+1
    farcall SetMainCallback2
    farcall RemoveAllObjectEventsExceptPlayer
    # turn the player around in the appropriate direction
    ldr r0, =gPlayerAvatar
    ldrb r1, [r0, #0x05]
    lsl r0, r1, #3
    add r0, r1
    lsl r0, #2
    ldr r1, =gObjectEvents
    add r0, r1
    ldr r1, =zWarpTargetDirection
    ldrb r1, [r1]
    add r1, #1
    farcall SetObjectEventDirection
    mov r0, #1
    farcall DisableWildEncounters
    pop {r7}
    pop {r0}
    bx r0

InitAndRunIntroScript:
    # This is called by the save file entry point upon talking to the
    # NPC in the truck.
    push {lr}
    # set up trampolines
    ldr r1, =ScriptTrampolines
    ldr r2, =WARP_SCRIPT
    mov r3, #32
    bl CopyData
    # run IntroScript after the subroutine returns
    ldr r0, =IntroScript
    ldr r1, =sScriptContext1 + 8
    str r0, [r1]
    # switch to joybus communication mode
    ldr r3, =REG_SIODATA
    # RCNT = 0xc000
    mov r0, #0xc0
    lsl r0, r0, #8
    strh r0, [r3, #0x14]
    # JOYSTAT = 0x00000000
    mov r0, #0
    str r0, [r3, #0x38]
    # return (and run script)
    pop {r0}
    bx r0

ExecuteWarp:
    # Perform a warp or map connection.
    push {lr}
    push {r4, r5, r7}
    # get player position
    ldr r0, =zMapPositionStruct
    farcall GetPlayerPosition
    # get map header
    ldr r0, =gMapHeader
    # get pointer to events
    ldr r0, [r0, #0x04]
    # get num of coord events
    ldrb r5, [r0, #0x02]
    # get pointer to coord events
    ldr r0, [r0, #0x0c]
    # index starts at 0
    mov r4, #0
ExecuteWarp_CheckEvents:
    # is coord event a warp?
    ldrh r2, [r0, #0x06]
    ldr r3, =SCRIPT_WARP_TRIGGER
    cmp r2, r3
    # skip it if it isn't
    bne ExecuteWarp_GoNext
    # load position and offset by map border
    ldr r2, =zMapPositionStruct
    ldr r2, [r2]
    ldr r1, =0x00070007
    sub r2, r1
    # is event on same coords?
    ldr r1, [r0]
    cmp r2, r1
    # if it is, we found the warp index
    beq ExecuteWarp_Found
    # otherwise increment warp index
    add r4, #1
ExecuteWarp_GoNext:
    # go to next event
    add r0, #16
    sub r5, #1
    cmp r5, #0
    bne ExecuteWarp_CheckEvents
ExecuteWarp_NotFound:
    # no matching warp data found
    # just go through with data that was already there
    b ExecuteWarp_Return
ExecuteWarp_Found:
    # found matching warp data
    # find entry with given index (at r4)
    # get map header
    ldr r0, =MAP_LOAD_BASE
    # get pointer to connections
    ldr r0, [r0, #0x20]
    # r4 = 4*r4
    lsl r4, r4, #2
    # get entry from this offset
    ldr r0, [r0, r4]
    mov r2, r0
    # mask out direction bits
    ldr r1, =0x7f7fffff
    and r0, r1
    # store actual warp data
    ldr r1, =zWarpTargetData
    str r0, [r1]
    # get warp direction: shift in first bit to r0
    mov r0, r2
    lsr r0, r0, #31
    mov r3, #1
    and r0, r3
    # then second bit to r1
    mov r1, r2
    lsr r1, r1, #22
    mov r3, #2
    and r1, r3 
    # combine in r0 and store
    orr r0, r1
    ldr r1, =zWarpTargetDirection
    strb r0, [r1]
ExecuteWarp_Return:
    pop {r4, r5, r7}
    pop {r0}
    bx r0
