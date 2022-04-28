# stub.s
# source code of the loader stub planted in the base SAV file, for completeness

.thumb
.include "event.inc"
.include "macros.inc"

Start:
    # note: the loader stub has to be position-independent - I initially
    # thought I can't use LDR because of that, but I probably could, since
    # LDR encodes offsets relatively
    push {lr}
    push {r4, r5, r6, r7}
    # r7 = 0203d000
    mov r7, #0x02
    lsl r7, r7, #8
    add r7, #0x03
    lsl r7, r7, #8
    add r7, #0xd0
    lsl r7, r7, #8
    # r6 = r7
    mov r6, r7
    # r5 = 0e000000
    mov r5, #0x0e
    lsl r5, r5, #24
    # r4 = 0e005555
    mov r4, #0x55
    lsl r4, r4, #8
    add r4, #0x55
    add r4, r5
    # r3 = 0e002aaa
    mov r3, #0x2a
    lsl r3, r3, #8
    add r3, #0xaa
    add r3, r5
    # set flash bank to 0
    mov r0, #0xaa
    strb r0, [r4]
    mov r0, #0x55
    strb r0, [r3]
    mov r0, #0xb0
    strb r0, [r4]
    mov r0, #0
    strb r0, [r5]
    # r5 = 0e000010
    add r5, #0x10
    # r1 = 00003000
    mov r1, #0x30
    lsl r1, r1, #8
    # copy code from save data to RAM
CopyToRAM:
    ldrb r0, [r5]
    strb r0, [r6]
    add r5, #1
    add r6, #1
    sub r1, #1
    bne CopyToRAM
    # jump to that in thumb mode
CallInRAM:
    add r7, #1
    bl CallViaR7
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
CallViaR7:
    bx r7
