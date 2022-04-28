.align 4

TheWiseMan_MapInitCode:
    ldr r0, =zSkipMapExitMovement
    mov r1, #2
    strb r1, [r0]
    bx lr

.align 4
.ltorg

TheWiseMan_MapInitScript:
    end

TheWiseMan_Script1:
    lock
    faceplayer
    msgbox TheWiseMan_Script1_Text, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq TheWiseMan_Script1_Out
    msgbox TheWiseMan_Script1_Text2, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq TheWiseMan_Script1_Out
    msgbox TheWiseMan_Script1_Text3, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq TheWiseMan_Script1_Out
    msgbox TheWiseMan_Script1_Text4, MSGBOX_YESNO
    compare VAR_RESULT, NO
    goto_if_eq TheWiseMan_Script1_Out
    msgbox TheWiseMan_Script1_Text5
TheWiseMan_Script1_Out:
    release
    end

TheWiseMan_Script1_Text:
    .string "It's the Wise Man's Adventure Log!\n"
    .string "Let's take a quick look...\p"
    .string "Chapter I - The Edges\n"
    .string "Travelling to each edge will reward\l"
    .string "you with a unique field ability.\p"
    .string "Visiting north grants SURF.\n"
    .string "Visiting south grants CUT.\p"
    .string "Visiting east grants STRENGTH.\n"
    .string "Visiting west grants TELEPORT.\p"
    .string "Read the next page?$"

TheWiseMan_Script1_Text2:
    .string "Chapter II - About the North\n"
    .string "The northern fork is surely the\l"
    .string "biggest, but don't fear its size.\p"
    .string "While the journey may be long, there\n"
    .string "are no obstacles on the way, making\l"
    .string "it one of the best edges to visit first.\p"
    .string "Read the next page?$"

TheWiseMan_Script1_Text3:
    .string "Chapter III - About the South\n"
    .string "After the rockfall incident, the path\l"
    .string "to the Southern Edge is blocked by\l"
    .string "pushable boulders.\p"
    .string "Make sure you have enough STRENGTH\n"
    .string "before going for the Southern Edge!\p"
    .string "Read the next page?$"

TheWiseMan_Script1_Text4:
    .string "Chapter IV - About the West\n"
    .string "The TELEPORT ability allows you to\l"
    .string "travel between camps easily.\p"
    .string "Just stand on the hallowed ground\n"
    .string "spots and choose your destination!\p"
    .string "Be wary that you have to visit your\n"
    .string "destination at least once beforehand.\p"
    .string "Read the next page?$"

TheWiseMan_Script1_Text5:
    .string "Chapter V - About the East\n"
    .string "The Lost Woods may be confusing, but\l"
    .string "if you ask the locals, you can easily\l"
    .string "get information about where to go!\p"
    .string "Reaching the Edge is particularly easy.\n"
    .string "Just help the girl do her homework.\p"
    .string "If you're bad at maths, you can just\n"
    .string "keep pestering her until she gives in.\p"
    .string "The rest of the pages are blank...$"