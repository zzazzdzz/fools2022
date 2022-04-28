# util.s
# Utility functions.

ShowConnectionIndicator:
    # Show the connection indicator sprite.
    push {r7, lr}
    ldr r1, =gRfuLinkStatus
    mov r0, #2
    str r0, [r1]
    farcall LoadWirelessStatusIndicatorSpriteGfx
    mov r0, #0
    mov r1, #0
    farcall CreateWirelessStatusIndicatorSprite
    pop {r7}
    pop {r0}
    bx r0

HideConnectionIndicator:
    # Hide the connection indicator sprite.
    push {r7, lr}
    farcall DestroyWirelessStatusIndicatorSprite
    pop {r7}
    pop {r0}
    bx r0

FillMemory:
    # At r1, set r2 bytes to r3 in a rather suboptimal way, but I don't care.
    strb r3, [r1]
    add r1, #1
    sub r2, #1
    bne FillMemory
    bx lr

CopyData:
    # Copy r3 bytes from r1 to r2 in a rather suboptimal way, but I don't care.
    ldrb r0, [r1]
    strb r0, [r2]
    add r1, #1
    add r2, #1
    sub r3, #1
    bne CopyData
    bx lr

DelayFrames:
    # Wait r0 VBlanks (aka r0 frames).
    push {r7, lr}
DelayFrames_Loop:
    push {r0}
    farcall WaitForVBlank
    pop {r0}
    sub r0, #1
    bne DelayFrames_Loop
DelayFrames_Finish:
    pop {r7}
    pop {r0}
    bx r0

CompareStrings:
    # Compare script string variables 1 and 2, return comparison in VAR_RESULT.
    push {r7, lr}
    ldr r0, =gStringVar1
    ldr r1, =gStringVar2
    farcall StringCompare
    ldr r1, =gSpecialVar_Result
    str r0, [r1]
    pop {r7}
    pop {r0}
    bx r0

GenericNamingScreen:
    # Show a generic text input screen.
    push {r7, lr}
    farcall GetWaldaPhrasePtr
    mov r1, #0xff
    strb r1, [r0]
    farcall DoWaldaNamingScreen
    pop {r7}
    pop {r0}
    bx r0

MarkDexCompleted:
    # Mark all Pokemon as seen and captured. This is to make all of them
    # accessible in the easy chat system, since the game only allows
    # you to use names of Pokemon that have been caught.
    push {r5, lr}
    ldr r5, =386
MarkDexCompleted_Loop:
    mov r0, r5
    mov r1, #2
    farcall GetSetPokedexFlag
    mov r0, r5
    mov r1, #3
    farcall GetSetPokedexFlag
    sub r5, #1
    bne MarkDexCompleted_Loop
MarkDexCompleted_Finish:
    pop {r5}
    pop {r0}
    bx r0

ASCIIToGenIIICharset:
    # Convert string var 2 to Gen III charset from regular ASCII.
    ldr r3, =gStringVar2
ASCIIToGenIIICharset_NextChr:
    ldrb r0, [r3]
    cmp r0, #0xff
    beq ASCIIToGenIIICharset_Done
    mov r1, #0
ASCIIToGenIIICharset_Find:
    ldr r2, =ASCIIToGenIIICharset_ASCIIChars
    add r2, r1
    ldrb r2, [r2]
    cmp r0, r2
    beq ASCIIToGenIIICharset_Found
    add r1, #1
    b ASCIIToGenIIICharset_Find
ASCIIToGenIIICharset_Found:
    ldr r2, =ASCIIToGenIIICharset_GenIIIChars
    add r2, r1
    ldrb r2, [r2]
    strb r2, [r3]
    add r3, #1
    b ASCIIToGenIIICharset_NextChr
ASCIIToGenIIICharset_Done:
    bx lr

ASCIIToGenIIICharset_GenIIIChars:
    .string " ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz=\l"
ASCIIToGenIIICharset_ASCIIChars:
    .ascii  " ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz=/"

TestROM:
    # A simple ROM integrity check. It's bugged, so it was completely
    # disabled as a "temporary workaround".
    # Yes, I never fixed it. You can try and give it a go!
    ldr r1, =0x8000000
    ldr r2, =0x300000
    ldr r3, =0x29c7a0db
TestROM_Checksum:
    ldr r0, [r1]
    add r3, r0
    add r1, #4
    sub r2, #4
    bne TestROM_Checksum
TestROM_CheckRef:
    ldr r0, =0xb2d57221
    ldr r1, =gSpecialVar_Result
    cmp r3, r0
    bne TestROM_CheckRefFail
TestROM_CheckRefOK:
    mov r0, #0
    str r0, [r1]
    bx lr
TestROM_CheckRefFail:
    # Change to `#1` if you manage to make it work.
    mov r0, #0
    str r0, [r1]
    bx lr
