#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!Left:: Send ![

!Right:: Send !]

<#m::
Mouse_Blocked := true   ; assign the Boolean value "true" or "1" to this variable
BlockInput, MouseMove   ; disable MouseMove
return

; The #If directive creates context-sensitive hotkeys

#If (Mouse_Blocked) ; If this variable has the value "true" 

    ; block mouse buttons (allow scroll)
    ; LButton::
    ; RButton::
    ; WheelUp::
    ; WheelDown::
    ; return

    <#m::    ; press win+m to re-enable MouseMove and mouse input
    BlockInput, MouseMoveOff
    Mouse_Blocked := false
    return

#If ; turn off context sensitivity
