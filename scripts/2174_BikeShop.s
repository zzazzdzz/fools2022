.align 4

BikeShop_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

BikeShop_MapInitScript:
    end

BikeShop_Script1:
    lock
    faceplayer
    checkflag FLAG_RECEIVED_BIKE
    goto_if TRUE, BikeShop_Script1_Instructions
    checkflag FLAG_RECEIVED_VOUCHER
    goto_if TRUE, BikeShop_Script1_GotVoucher
    msgbox BikeShop_Script1_Text
    release
    end
BikeShop_Script1_GotVoucher:
    msgbox BikeShop_Script1_Text2
    message BikeShop_Script1_TextExch
    waitmessage
    playfanfare MUS_RG_OBTAIN_KEY_ITEM
    waitfanfare
    setflag FLAG_RECEIVED_BIKE
    additem 360
    call SyncProgressScript
BikeShop_Script1_Instructions:
    msgbox BikeShop_Script1_Text3
    release
    end

BikeShop_Script1_Text:
    .string "Welcome to our BIKE SHOP!\n"
    .string "For limited time only, you can get\l"
    .string "a gnarly BIKE for just {DOLLAR}1000000!\p"
    .string "Oh, we're terribly sorry.\n"
    .string "You cannot afford it.$"

BikeShop_Script1_Text2:
    .string "Welcome to our BIKE SHOP!\n"
    .string "Oh, is that a BIKE VOUCHER?\p"
    .string "You're in luck, that voucher was\n"
    .string "to expire in a few minutes!\p"
    .string "Well, here you go!\n"
    .string "A gnarly, rad BICYCLE!$"

BikeShop_Script1_TextExch:
    .string "You exchanged the BIKE VOUCHER\n"
    .string "for a shining new BICYCLE!$"

BikeShop_Script1_Text3:
    .string "Just remember...\n"
    .string "No refunds! Haha!\p"
    .string "If you need instructions on how to\n"
    .string "use your BIKE, check out the enclosed\l"
    .string "instruction book in the right room.$"

BikeShop_Script2:
    lock
    faceplayer
    msgbox BikeShop_Script2_Text
    release
    end

BikeShop_Script2_Text:
    .string "What do you mean? Riding on a BIKE?\n"
    .string "Why would anyone ever do that?\p"
    .string "You already have the RUNNING SHOES for\n"
    .string "faster movement. Use them!\p"
    .string "Our BIKES are meant to be decorative.\n"
    .string "Who would ever want to ride a BIKE?$"

BikeShop_Script3:
    lock
    msgbox BikeShop_Script3_Text
    release
    end

BikeShop_Script3_Text:
    .string "This is the BICYCLE's enclosed\n"
    .string "instruction book!\p"
    .string "{LQUOT}Glitchland's special designer BIKE,\n"
    .string "designed for staring at it!\p"
    .string "With this new design, you can admire\n"
    .string "our bike even more efficiently!{RQUOT}$"
