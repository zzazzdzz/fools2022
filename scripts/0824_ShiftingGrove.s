.align 4

ShiftingGrove_MapInitCode:
    bx lr

ShiftingGrove_MapInitScript:
    setvar VAR_TEMP_1, 0
    setvar VAR_TEMP_2, 0
    setvar VAR_TEMP_3, 0
    end

ShiftingGrove_Script1:
    lock
    faceplayer
    msgbox ShiftingGrove_Script1_Text
    release
    end

ShiftingGrove_Script1_Text:
    .string "You know what grinds my gears?\n"
    .string "Useless puzzles!\p"
    .string "Why is all of this even necessary?\n"
    .string "Come on, game designers! Get with it!\p"
    .string "Geez. What were they thinking?\n"
    .string "This game's a bunch of poopy ass-dicks!$"

ShiftingGrove_Script2:
    lock
    faceplayer
    msgbox ShiftingGrove_Script2_Text
    release
    end

ShiftingGrove_Script2_Text:
    .string "With ledges, you have to jump. Once\n"
    .string "you jump, there's no way back.\p"
    .string "How in life, time only flows forward.\n"
    .string "You can't go back to fix your mistakes.\p"
    .string "It's all a symbol of evanescence.\n"
    .string "Panta rhei. Everything flows...\l"
    .string "Or am I just overthinking things?$"

ShiftingGrove_Script3:
    lock
    faceplayer
    msgbox ShiftingGrove_Script3_Text
    release
    end

ShiftingGrove_Script3_Text:
    .string "You know any... {LQUOT}weird{RQUOT} people, by\n"
    .string "chance? Someone who's just... not like\l"
    .string "everyone else.\p"
    .string "Authorities in Glitchland are treating\n"
    .string "any deviations from social norm\l"
    .string "extremely harshly.\p"
    .string "All people who don't comply are forced\n"
    .string "to live in a special Glitchland region\l"
    .string "named Deliria.$"

ShiftingGrove_Switch1:
    lock
    msgbox ShiftingGrove_Switch_Text, MSGBOX_YESNO
    compare_var_to_value VAR_RESULT, NO
    goto_if_eq ShiftingGrove_SwitchCancel
	playse SE_ICE_STAIRS
    call ShiftingGrove_Rotate_1
    call ShiftingGrove_UpdateTiles
    callnative DrawWholeMapView
    delay 30
    release
    end

ShiftingGrove_Switch2:
    lock
    msgbox ShiftingGrove_Switch_Text, MSGBOX_YESNO
    compare_var_to_value VAR_RESULT, NO
    goto_if_eq ShiftingGrove_SwitchCancel
	playse SE_ICE_STAIRS
    call ShiftingGrove_Rotate_2
    call ShiftingGrove_UpdateTiles
    callnative DrawWholeMapView
    delay 30
    release
    end

ShiftingGrove_Switch3:
    lock
    msgbox ShiftingGrove_Switch_Text, MSGBOX_YESNO
    compare_var_to_value VAR_RESULT, NO
    goto_if_eq ShiftingGrove_SwitchCancel
	playse SE_ICE_STAIRS
    call ShiftingGrove_Rotate_3
    call ShiftingGrove_UpdateTiles
    callnative DrawWholeMapView
    delay 30
    release
    end

ShiftingGrove_SwitchCancel:
    msgbox ShiftingGrove_SwitchCancel_Text
    release
    end

ShiftingGrove_SwitchCancel_Text:
    .string "Understandable.\n"
    .string "Have a great day.$"

ShiftingGrove_Rotate_1:
    addvar VAR_TEMP_1, 1
    compare_var_to_value VAR_TEMP_1, 3
    goto_if_eq ShiftingGrove_Rotate_1_Reset
    return
ShiftingGrove_Rotate_1_Reset:
    setvar VAR_TEMP_1, 0
    return

ShiftingGrove_Rotate_2:
    addvar VAR_TEMP_2, 1
    compare_var_to_value VAR_TEMP_2, 3
    goto_if_eq ShiftingGrove_Rotate_2_Reset
    return
ShiftingGrove_Rotate_2_Reset:
    setvar VAR_TEMP_2, 0
    return

ShiftingGrove_Rotate_3:
    addvar VAR_TEMP_3, 1
    compare_var_to_value VAR_TEMP_3, 3
    goto_if_eq ShiftingGrove_Rotate_3_Reset
    return
ShiftingGrove_Rotate_3_Reset:
    setvar VAR_TEMP_3, 0
    return

ShiftingGrove_UpdateTiles:
    compare_var_to_value VAR_TEMP_1, 0
    call_if_eq ShiftingGrove_Set_1_1
    call_if_eq ShiftingGrove_Set_1_2
    call_if_eq ShiftingGrove_Clear_1_3
    compare_var_to_value VAR_TEMP_1, 1
    call_if_eq ShiftingGrove_Clear_1_1
    call_if_eq ShiftingGrove_Set_1_2
    call_if_eq ShiftingGrove_Set_1_3
    compare_var_to_value VAR_TEMP_1, 2
    call_if_eq ShiftingGrove_Set_1_1
    call_if_eq ShiftingGrove_Clear_1_2
    call_if_eq ShiftingGrove_Set_1_3
    compare_var_to_value VAR_TEMP_2, 0
    call_if_eq ShiftingGrove_Clear_2_1
    call_if_eq ShiftingGrove_Set_2_2
    call_if_eq ShiftingGrove_Set_2_3
    compare_var_to_value VAR_TEMP_2, 1
    call_if_eq ShiftingGrove_Set_2_1
    call_if_eq ShiftingGrove_Clear_2_2
    call_if_eq ShiftingGrove_Set_2_3
    compare_var_to_value VAR_TEMP_2, 2
    call_if_eq ShiftingGrove_Set_2_1
    call_if_eq ShiftingGrove_Set_2_2
    call_if_eq ShiftingGrove_Clear_2_3
    compare_var_to_value VAR_TEMP_3, 0
    call_if_eq ShiftingGrove_Set_3_1
    call_if_eq ShiftingGrove_Clear_3_2
    call_if_eq ShiftingGrove_Set_3_3
    compare_var_to_value VAR_TEMP_3, 1
    call_if_eq ShiftingGrove_Set_3_1
    call_if_eq ShiftingGrove_Set_3_2
    call_if_eq ShiftingGrove_Clear_3_3
    compare_var_to_value VAR_TEMP_3, 2
    call_if_eq ShiftingGrove_Clear_3_1
    call_if_eq ShiftingGrove_Set_3_2
    call_if_eq ShiftingGrove_Set_3_3
    return

ShiftingGrove_Set_1_1:
    setmetatile 15, 6, 0x068, TRUE
    setmetatile 16, 6, 0x06A, TRUE
    setmetatile 15, 7, 0x078, TRUE
    setmetatile 16, 7, 0x07A, TRUE
    return

ShiftingGrove_Clear_1_1:
    setmetatile 15, 6, 0x0E0, TRUE
    setmetatile 16, 6, 0x001, FALSE
    setmetatile 15, 7, 0x001, FALSE
    setmetatile 16, 7, 0x001, FALSE
    return

ShiftingGrove_Set_2_1:
    setmetatile 17, 6, 0x068, TRUE
    setmetatile 18, 6, 0x06A, TRUE
    setmetatile 17, 7, 0x078, TRUE
    setmetatile 18, 7, 0x07A, TRUE
    return

ShiftingGrove_Clear_2_1:
    setmetatile 17, 6, 0x0E0, TRUE
    setmetatile 18, 6, 0x001, FALSE
    setmetatile 17, 7, 0x001, FALSE
    setmetatile 18, 7, 0x001, FALSE
    return

ShiftingGrove_Set_3_1:
    setmetatile 19, 6, 0x068, TRUE
    setmetatile 20, 6, 0x06A, TRUE
    setmetatile 19, 7, 0x078, TRUE
    setmetatile 20, 7, 0x07A, TRUE
    return

ShiftingGrove_Clear_3_1:
    setmetatile 19, 6, 0x0E0, TRUE
    setmetatile 20, 6, 0x001, FALSE
    setmetatile 19, 7, 0x001, FALSE
    setmetatile 20, 7, 0x001, FALSE
    return

ShiftingGrove_Set_1_2:
    setmetatile 15, 8, 0x068, TRUE
    setmetatile 16, 8, 0x06A, TRUE
    setmetatile 15, 9, 0x078, TRUE
    setmetatile 16, 9, 0x07A, TRUE
    return

ShiftingGrove_Clear_1_2:
    setmetatile 15, 8, 0x0E0, TRUE
    setmetatile 16, 8, 0x001, FALSE
    setmetatile 15, 9, 0x001, FALSE
    setmetatile 16, 9, 0x001, FALSE
    return

ShiftingGrove_Set_2_2:
    setmetatile 17, 8, 0x068, TRUE
    setmetatile 18, 8, 0x06A, TRUE
    setmetatile 17, 9, 0x078, TRUE
    setmetatile 18, 9, 0x07A, TRUE
    return

ShiftingGrove_Clear_2_2:
    setmetatile 17, 8, 0x0E0, TRUE
    setmetatile 18, 8, 0x001, FALSE
    setmetatile 17, 9, 0x001, FALSE
    setmetatile 18, 9, 0x001, FALSE
    return

ShiftingGrove_Set_3_2:
    setmetatile 19, 8, 0x068, TRUE
    setmetatile 20, 8, 0x06A, TRUE
    setmetatile 19, 9, 0x078, TRUE
    setmetatile 20, 9, 0x07A, TRUE
    return

ShiftingGrove_Clear_3_2:
    setmetatile 19, 8, 0x0E0, TRUE
    setmetatile 20, 8, 0x001, FALSE
    setmetatile 19, 9, 0x001, FALSE
    setmetatile 20, 9, 0x001, FALSE
    return

ShiftingGrove_Set_1_3:
    setmetatile 15, 10, 0x068, TRUE
    setmetatile 16, 10, 0x06A, TRUE
    setmetatile 15, 11, 0x078, TRUE
    setmetatile 16, 11, 0x07A, TRUE
    return

ShiftingGrove_Clear_1_3:
    setmetatile 15, 10, 0x0E0, TRUE
    setmetatile 16, 10, 0x001, FALSE
    setmetatile 15, 11, 0x001, FALSE
    setmetatile 16, 11, 0x001, FALSE
    return

ShiftingGrove_Set_2_3:
    setmetatile 17, 10, 0x068, TRUE
    setmetatile 18, 10, 0x06A, TRUE
    setmetatile 17, 11, 0x078, TRUE
    setmetatile 18, 11, 0x07A, TRUE
    return

ShiftingGrove_Clear_2_3:
    setmetatile 17, 10, 0x0E0, TRUE
    setmetatile 18, 10, 0x001, FALSE
    setmetatile 17, 11, 0x001, FALSE
    setmetatile 18, 11, 0x001, FALSE
    return

ShiftingGrove_Set_3_3:
    setmetatile 19, 10, 0x068, TRUE
    setmetatile 20, 10, 0x06A, TRUE
    setmetatile 19, 11, 0x078, TRUE
    setmetatile 20, 11, 0x07A, TRUE
    return

ShiftingGrove_Clear_3_3:
    setmetatile 19, 10, 0x0E0, TRUE
    setmetatile 20, 10, 0x001, FALSE
    setmetatile 19, 11, 0x001, FALSE
    setmetatile 20, 11, 0x001, FALSE
    return

ShiftingGrove_Switch_Text:
    .string "Aha! A rather suspicious object!\n"
    .string "Try to push it?$"