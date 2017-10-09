; First use SharpKeys to map
; CapsLock -> Esc
; Left Control -> Left Alt
; Left Alt -> Left Control

; Key shortcuts
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN

WheelUp::
Send {WheelDown}
Return

WheelDown::
Send {WheelUp}
Return

!h::Send {Left}
!j::Send {Down}
!k::Send {Up}
!l::Send {Right}
^Space::Send, {Ctrl up}{LWin}

LCtrl & Tab:: 
    AltTabMenu := true
    If GetKeyState("Shift","P")
        Send {Alt Down}{Shift Down}{Tab}
    else
        Send {Alt Down}{Tab}
return

#If (AltTabMenu)

    ~*LCtrl Up::
        Send {Shift Up}{Alt Up}
        AltTabMenu := false
    return

#If

