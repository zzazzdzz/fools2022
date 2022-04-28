# scripts.s
# Scripting engine stubs for various in-game functionalities

SetDataBasedOnEventFlags:
    setflag 0x8c0
    checkflag FLAG_NORTHERN_EDGE
    goto_if FALSE, SetDataBasedOnEventFlags_NoN
    setflag 0x86b
SetDataBasedOnEventFlags_NoN:
    checkflag FLAG_EASTERN_EDGE
    goto_if FALSE, SetDataBasedOnEventFlags_NoE
    setflag 0x86a
SetDataBasedOnEventFlags_NoE:
    checkflag FLAG_SOUTHERN_EDGE
    goto_if FALSE, SetDataBasedOnEventFlags_NoS
    setflag 0x867
SetDataBasedOnEventFlags_NoS:
    return

IntroScript:
    setflag FLAG_MANSION_PICKING1
    setflag FLAG_MANSION_PICKING3
    setflag FLAG_WESTERN_RELIC_ITEM
    callnative MarkDexCompleted
    playbgm MUS_FALLARBOR, 0
    lock
    faceplayer
    message IntroScript_IntroText
    waitmessage
IntroScript_Retry:
    callnative ShowConnectionIndicator
    callnative TestROM
    compare VAR_RESULT, 0
	goto_if_ne IntroScript_ROMTestFailed
    callnative TryDownloadMap
    compare VAR_RESULT, 0
	goto_if_eq IntroScript_Done
    call ConnectionFailedScript
    goto IntroScript_Retry
IntroScript_Done:
    callnative WarpToLoadedMap 
    delay 8
    callnative PostMapLoadEvents
    call SetDataBasedOnEventFlags
    delay 32
    callnative PostPostMapLoadEvents
    release
    end
IntroScript_ROMTestFailed:
    playse SE_FAILURE
    message IntroScript_ROMTestFailedText
    waitmessage
IntroScript_ROMTestFailed_Forever:
    goto IntroScript_ROMTestFailed_Forever

IntroScript_IntroText:
    .string "Welcome to TheZZAZZGlitch's\n"
    .string "Fools2022: Return to Glitchland!\p"
    .string "To start playing, you'll need to\n"
    .string "connect to the game server.\p"
    .string "This is done by utilizing the link cable\n"
    .string "connection in your emulator.\p"
    .string "Refer to the event site for a list of\n"
    .string "compatible emulators and setups.\p"
    .string "Looking for a server connection now.\n"
    .string "Please wait...$"
    
IntroScript_IntroText_Debug:
    .string "Good morning.\n"
    .string "I am {COLOR RED}Mesprit{COLOR 2}.$"

IntroScript_ROMTestFailedText:
    .string "Oops!\n"
    .string "An irregularity has been detected.\p"
    .string "Either you're using an invalid or\n"
    .string "modified ROM image, or you have cheats\l"
    .string "enabled that modify ROM data.\p"
    .string "Make sure you're using a clean ROM of\n"
    .string "Pok{EACUTE}mon Emerald US.\p"
    .string "Make sure you have no cheats or other\n"
    .string "game modifiers enabled.\p"
    .string "Once that's done, restart the game and\n"
    .string "try loading this save file again.$"

ConnectionFailedScript:
    playse SE_FAILURE
    loadbytefromaddr 0, zWrongSaveVersion
    compare_local_to_value 0, 0
    goto_if_eq ConnectionFailedScript_NormalError
ConnectionFailedScript_OutdatedSaveError:
    message ConnectionFailedScript_OutdatedSaveText
    waitmessage
ConnectionFailedScript_OutdatedSaveError_Forever:
    goto ConnectionFailedScript_OutdatedSaveError_Forever
ConnectionFailedScript_NormalError:
    msgbox ConnectionFailedScript_FailedText, MSGBOX_YESNO
    compare VAR_RESULT, YES
    goto_if_eq ConnectionFailedScript_RetryReturn
    msgbox ConnectionFailedScript_WarningText, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq ConnectionFailedScript_RetryReturn
    callnative 0x8000000-1
ConnectionFailedScript_RetryReturn:
    message ConnectionFailedScript_RetryText
    waitmessage
    return

ConnectionFailedScript_FailedText:
    .string "Oopsie woopsie! There was a link error.\n"
    .string "Attempt to connect again?$"
ConnectionFailedScript_WarningText:
    .string "The game will be restarted. You will\n"
    .string "lose all unsaved progress.\l"
    .string "Are you sure you want to quit?$"
ConnectionFailedScript_RetryText:
    .string "The connection will be retried.\n"
    .string "Please wait...$"
ConnectionFailedScript_OutdatedSaveText:
    .string "Looks like you're using an outdated\n"
    .string "version of the save file.\p"
    .string "Please download a new version of the\n"
    .string "save file to continue playing.$"

CommunicationText:
    .string "{COLOR BLUE}Link estabilished.\nPlease wait...$"

WarpScript:
    lock
    message WarpScript_LoadingMap
    waitmessage
WarpScript_Retry:
    callnative ExecuteWarp
    callnative TryDownloadMap
    compare VAR_RESULT, 0
	goto_if_eq WarpScript_Done
    call ConnectionFailedScript
    goto WarpScript_Retry
WarpScript_Done:
    callnative WarpToLoadedMap
    delay 8
    callnative PostMapLoadEvents
    call SetDataBasedOnEventFlags
    delay 32
    callnative PostPostMapLoadEvents
    release
    end

WarpScript_LoadingMap:
    .string "A new map will be loaded.\n"
    .string "Communicating. Please wait...$"

SyncProgressScript:
    message SyncProgressScript_Comm
    waitmessage
SyncProgressScript_Retry:
    callnative SyncProgressToServer
    compare VAR_RESULT, 0
	goto_if_eq SyncProgressScript_Done
    call ConnectionFailedScript
    goto SyncProgressScript_Retry
SyncProgressScript_Done:
    playfanfare MUS_RG_DEX_RATING
    message SyncProgressScript_Success
    waitmessage
	waitfanfare
    call SetDataBasedOnEventFlags
    return
    
GenericRequestScript:
    message GenericRequestScript_Comm
    waitmessage
GenericRequestScript_Retry:
    callnative GenericRequestToServer
    compare VAR_RESULT, 0
	goto_if_eq GenericRequestScript_Done
    call ConnectionFailedScript
    goto GenericRequestScript_Retry
GenericRequestScript_Done:
    playfanfare MUS_RG_DEX_RATING
    message SyncProgressScript_Success
    waitmessage
	waitfanfare
    return

SyncProgressScript_Comm:
    .string "Your progress will now be saved.\n"
    .string "Communicating. Please wait...$"

SyncProgressScript_Success:
    .string "Successfully synchronized your\n"
    .string "progress!$"

GenericRequestScript_Comm:
    .string "Checking in with the server.\n"
    .string "Communicating. Please wait...$"

GenericTPScript:
    checkflag FLAG_TELEPORTATION_ENABLED
    goto_if TRUE, GenericTPScript_DoTP
    msgbox GenericTPScript_LockedText
GenericTPScript_Return:
    closemessage
    delay 30
    applymovement 0xff, GenericTPScript_MoveDown
    waitmovement 0xff
    release
    return
GenericTPScript_MoveDown:
    walk_down
    step_end
GenericTPScript_DoTP:
    message GenericTPScript_InterfaceText
    waitmessage
    callnative TeleportationInterface
    closemessage
    waitse
    compare VAR_RESULT, 0
	goto_if_eq GenericTPScript_Return
    callnative TeleportationPrepareMap
    playse SE_WARP_IN
    fadescreen 1
    delay 45
    call WarpScript
GenericTPScript_GoAway:
    release
    return

GenericTPScript_LockedText:
    .string "Ground below you gives off a slight,\n"
    .string "radiant glow.\p"
    .string "After a while, you are pushed away\n"
    .string "by an unknown force.$"
    
GenericTPScript_InterfaceText:
    .string "Where do you want to go?$"

# this ended up being unused
ScriptTrampolines:
WarpScriptTrampoline:
    goto WarpScript

DefaultMapScriptData:
    .byte 0x02
    .word DefaultMapScriptSubdata
    .byte 0
DefaultMapScriptSubdata:
    .hword 0x1000
    .hword 0x1000
    .word DefaultMapScriptStub
    .hword 0

DefaultMapScriptStub:
    applymovement 0xff, DefaultMapScriptMovementDataWithUnreflect
    callnative DefaultMapScriptCodeStub
    delay 32
    callnative PostPostMapLoadEvents
    end
DefaultMapScriptMovementDataWithUnreflect:
    hide_reflection
DefaultMapScriptMovementData:
    walk_fast_down
    step_end
