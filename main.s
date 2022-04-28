.thumb

.include "include/event.inc"
.include "include/macros.inc"
.include "include/symbols.inc"
.include "include/constants.inc"
.include "include/map.inc"

.org MAIN_BASE

EntryPoint:
    b InitAndRunIntroScript
CallViaR7:
    bx r7

.include "engine/util.s"

.align 4
.ltorg

.include "engine/serial.s"
.include "engine/overworld.s"

.align 4
.ltorg

.include "engine/commutil.s"

DefaultMapScriptCodeStub:
    # clear map script
    mov r0, #0
    ldr r1, =gMapHeader
    str r0, [r1, #0x08]
    # don't show map name if exiting from building
    # (if the movement wasn't forced)
    ldr r0, =DefaultMapScriptMovementData
    ldrb r0, [r0]
    mov r1, #MOVEMENT_ACTION_STEP_END
    cmp r0, r1
    beq DefaultMapScriptCodeStub_Return
    # show map name
    farcall ShowMapNamePopup
DefaultMapScriptCodeStub_Return:
    bx lr

.align 4
.ltorg

.include "engine/teleport.s"

.align 4
.ltorg

.include "vars.s"

.include "scripts.s"

StepDirectionTable:
    walk_fast_down
    walk_fast_up
    walk_fast_left
    walk_fast_right

DefaultPokemonData:
    .incbin "assets/default_mon.bin"

