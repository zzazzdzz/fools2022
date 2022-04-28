.align 4

CrackerCavern_MapInitCode:
    bx lr

CrackerCavern_MapInitScript:
    end


EventScript_CutTree:
    lock
    faceplayer
    msgbox EventScript_CutTree_Text
    release
    end

EventScript_CutTree_Text:
    .string "redacted$"