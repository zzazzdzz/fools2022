.align 4

BikeShop_MapInitCode:
    bx lr

BikeShop_MapInitScript:
    end

BikeShop_Script1:
    lock
    msgbox BikeShop_Script1_Text
    release
    end

BikeShop_Script1_Text:
    .string "Best designer BIKES!\n"
    .string "GLITCHLAND BIKE SHOP$"