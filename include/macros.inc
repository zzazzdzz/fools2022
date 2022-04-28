.macro farcall sym:req
    ldr r7, =\sym+1
    bl CallViaR7
.endm
