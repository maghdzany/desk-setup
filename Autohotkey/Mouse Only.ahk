


::reloadahk::
{
Reload
return
}

DoubleX1 := false
DoubleX2 := false




; This detects "double-clicks" of the alt key.
~F13::
DoubleX2 := A_PriorHotkey = "~F13" AND A_TimeSincePriorHotkey < 400
Sleep 0
KeyWait F13  ; This prevents the keyboard's auto-repeat feature from interfering.
return

; XButton2 & LButton::
; If DoubleX2
; {
;     Send, Anjing kau
; }
; Send, babi kau
; return

F13::Send {Browser_Forward}


F13 & LButton::
{
    global DoubleX2  ; Declare it since this hotkey function must modify it.
    if DoubleX2
    {
        Send "DoubleX1 dan LButton ditekan"
        DoubleX2 := false
        return
    }
    Send "SingleX1 dan LButton ditekan"
}

