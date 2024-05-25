SetTitleMatchMode, 2 ; Menggunakan pencarian judul jendela yang mengandung "7zFM.exe" secara longgar

#Persistent ; Membuat skrip tetap berjalan

;===============================7ZIP================================================
Loop
    {
        IfWinExist, ahk_exe 7zFM.exe ; Memeriksa apakah jendela "7zFM.exe" ada
        {
            WinMove, ahk_exe 7zFM.exe,, 960, -5, 990, 540
            WinSet, AlwaysOnTop, On, ahk_exe 7zFM.exe
        }
        else
            {
                ; Mengatur jendela "7zFM.exe" untuk tidak selalu di atas
                WinSet, AlwaysOnTop, Off, ahk_exe 7zFM.exe
            }
            
            Sleep, 1000 ; Jeda 1 detik sebelum memeriksa lagi
        }
;===================================================================================


Home::
Process, Exist, chrome.exe 
If Not ErrorLevel
{
	; Jika Chrome sudah berjalan, cari tab dengan URL yang mengandung "chat.openai.com"
	WinActivate, ahk_exe chrome.exe
	ControlGet, hWnd, hWnd,, Chrome_RenderWidgetHostHWND1, A
	if (hWnd)
	{
		; Aktifkan tab dengan URL yang mengandung "chat.openai.com"
		ControlSend,, ^1, A ; Tekan Ctrl+1 untuk pindah ke tab pertama (sesuaikan jika perlu)
		Sleep, 100
		ControlSend,, ^f, A ; Tekan Ctrl+F untuk membuka fitur pencarian
		Sleep, 100
		Send, chat.openai.com
		Sleep, 100
		ControlSend,, {Esc}, A ; Tutup fitur pencarian setelah pencarian
	}
}
Else
{
	Run, "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://chat.openai.com"
}
return


Insert::
Process, Exist, chrome.exe 
If Not ErrorLevel
{
	Run, C:\Program Files\Google\Chrome\Application\chrome.exe 
}
Else
{
	WinActivate, ahk_exe chrome.exe
}
return

Pause::
Process, Exist, Everything.exe 
If Not ErrorLevel
{
	Run, C:\Program Files\Everything\Everything.exe 
}
Else
{
	WinActivate, ahk_exe Everything.exe
}
return




;=======================BLENDER========================================================
#IfWinActive ahk_exe blender.exe

; Mengubah Capslock menjadi toggle jika berada dalam program Blender
Capslock::
    SetCapsLockState, % (GetKeyState("Capslock", "T") ? "Off" : "On")
    return

; Membuat hotkey untuk tombol 1
1::
    ; Memeriksa apakah Capslock aktif
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad 1
        Send, {Numpad1}
    } else {
        ; Jika tidak aktif, tetapkan perilaku tombol 1 biasa
        Send, 1
    }
    return

2::
    ; Memeriksa apakah Capslock aktif
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad 1
        Send, {Numpad2}
    } else {
        ; Jika tidak aktif, tetapkan perilaku tombol 1 biasa
        Send, 2
    }
    return

3::
    ; Memeriksa apakah Capslock aktif
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad 1
        Send, {Numpad3}
    } else {
        ; Jika tidak aktif, tetapkan perilaku tombol 1 biasa
        Send, 3
    }
    return

4::
    ; Memeriksa apakah Capslock aktif
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad 1
        Send, {Numpad4}
    } else {
        ; Jika tidak aktif, tetapkan perilaku tombol 1 biasa
        Send, 4
    }
    return

5::
    ; Memeriksa apakah Capslock aktif
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad 1
        Send, {Numpad5}
    } else {
        ; Jika tidak aktif, tetapkan perilaku tombol 1 biasa
        Send, 5
    }
    return

6::
    ; Memeriksa apakah Capslock aktif
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad 1
        Send, {Numpad6}
    } else {
        ; Jika tidak aktif, tetapkan perilaku tombol 1 biasa
        Send, 6
    }
    return

7::
    ; Memeriksa apakah Capslock aktif
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad 1
        Send, {Numpad7}
    } else {
        ; Jika tidak aktif, tetapkan perilaku tombol 1 biasa
        Send, 7
    }
    return

8::
    ; Memeriksa apakah Capslock aktif
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad 1
        Send, {Numpad8}
    } else {
        ; Jika tidak aktif, tetapkan perilaku tombol 1 biasa
        Send, 8
    }
    return

9::
    ; Memeriksa apakah Capslock aktif
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad 1
        Send, {Numpad9}
    } else {
        ; Jika tidak aktif, tetapkan perilaku tombol 1 biasa
        Send, 9
    }
    return

0::
    ; Memeriksa apakah Capslock aktif
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad 1
        Send, {Numpad0}
    } else {
        ; Jika tidak aktif, tetapkan perilaku tombol 1 biasa
        Send, 0
    }
    return

Space::
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad period
        Send, {NumpadDot}
    } else {
        ; Jika tidak aktif, tetapkan perilaku spasi biasa
        Send, {Space}
    }
    return



#IfWinActive ; Mengakhiri kondisi khusus saat berada di dalam program Blender
;==============================================================================================


;INI BUAT FUNGSI MOUSE
XButton1::Send {Browser_Back}
XButton2::Send {Browser_Forward}
XButton1 & WheelUp::Send {Volume_Up}
XButton1 & WheelDown::Send {Volume_Down}
XButton1 & MButton::WinSet, AlwaysOnTop, Toggle, A
XButton2 & LButton::Send ^c
XButton2 & RButton::Send ^v
XButton1 & LButton::Send ^z
XButton1 & RButton::Send ^y
XButton2 & WheelUp::Send {WheelLeft}
XButton2 & WheelDown::Send {WheelRight}


;===================================NUMPAD====================================
F13::
Run, explorer.exe "C:\Users\Sandemo\Desktop\ "
return


#IfWinActive, ahk_exe fusion360.exe
{
    SetKeyDelay, -1  ; Tidak ada penundaan dalam mengirim tombol
    *Shift::Send, {Ctrl down}  ; Ketika Shift ditekan, kirim Ctrl
    *Shift up::Send, {Ctrl up}  ; Ketika Shift dilepas, kirim Ctrl
    *Ctrl::Send, {Shift down}  ; Ketika Ctrl ditekan, kirim Shift
    *Ctrl up::Send, {Shift up}  ; Ketika Ctrl dilepas, kirim Shift
}
#IfWinActive


^m:: ; Ctrl+M to toggle mute/unmute
{
    ; Get the process ID of the active window
    WinGet, active_pid, PID, A
    
    ; Toggle mute state for the active window's audio
    if (active_pid) {
        ; Loop through all audio sessions and find the one with the matching PID
        Loop {
            audioSession := ComObjCreate("IAudioSessionEnumerator", "{E58D1EED-44D9-468C-99B1-DBA2BAA2E8D0}")
            sessionCount := audioSession.GetCount()
            
            Loop, % sessionCount {
                session := audioSession.GetSession(A_Index - 1)
                control := session.QueryInterface("{F8679F50-850A-41CF-9C72-430F290290C8}")
                control.GetProcessId(session_pid)
                
                if (session_pid == active_pid) {
                    control.GetMute(isMuted)
                    control.SetMute(!isMuted, NULL) ; Toggle mute state
                    break
                }
            }
            break
        }
    }
}






; =======================================HOME ASSISTANT STUFF=============================================
Delete::
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad period
        Run, curl -X POST -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiI0Y2JlYzYzZTg1NzQ0OTc3OGRkNzM2ZWVlNzAzNDc2NyIsImlhdCI6MTcxNDcyODE4OCwiZXhwIjoyMDMwMDg4MTg4fQ.kSOcbk8T9vpYQozrWwoEDxXhKKEySqALSvrzqwt6feQ" -H "Content-Type: application/json" http://192.168.0.100:8123/api/services/script/relay_1,,hide
    } else {
        ; Jika tidak aktif, tetapkan perilaku spasi biasa
        Send, {Delete}
    }
    return

End::
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad period
        Run, curl -X POST -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiI0Y2JlYzYzZTg1NzQ0OTc3OGRkNzM2ZWVlNzAzNDc2NyIsImlhdCI6MTcxNDcyODE4OCwiZXhwIjoyMDMwMDg4MTg4fQ.kSOcbk8T9vpYQozrWwoEDxXhKKEySqALSvrzqwt6feQ" -H "Content-Type: application/json" http://192.168.0.100:8123/api/services/script/relay_2,,hide
    } else {
        ; Jika tidak aktif, tetapkan perilaku spasi biasa
        Send, {End}
    }
    return
    
PgUp::
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad period
        Run, curl -X POST -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiI0Y2JlYzYzZTg1NzQ0OTc3OGRkNzM2ZWVlNzAzNDc2NyIsImlhdCI6MTcxNDcyODE4OCwiZXhwIjoyMDMwMDg4MTg4fQ.kSOcbk8T9vpYQozrWwoEDxXhKKEySqALSvrzqwt6feQ" -H "Content-Type: application/json" http://192.168.0.100:8123/api/services/script/relay_3,,hide
    } else {
        ; Jika tidak aktif, tetapkan perilaku spasi biasa
        Send, {PgUp}
    }
    return

PgDn::
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad period
        Run, curl -X POST -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiI0Y2JlYzYzZTg1NzQ0OTc3OGRkNzM2ZWVlNzAzNDc2NyIsImlhdCI6MTcxNDcyODE4OCwiZXhwIjoyMDMwMDg4MTg4fQ.kSOcbk8T9vpYQozrWwoEDxXhKKEySqALSvrzqwt6feQ" -H "Content-Type: application/json" http://192.168.0.100:8123/api/services/script/relay_4,,hide
    } else {
        ; Jika tidak aktif, tetapkan perilaku spasi biasa
        Send, {PgDn}
    }
    return

Down::
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad period
        Run, curl -X POST -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiI0Y2JlYzYzZTg1NzQ0OTc3OGRkNzM2ZWVlNzAzNDc2NyIsImlhdCI6MTcxNDcyODE4OCwiZXhwIjoyMDMwMDg4MTg4fQ.kSOcbk8T9vpYQozrWwoEDxXhKKEySqALSvrzqwt6feQ" -H "Content-Type: application/json" http://192.168.0.100:8123/api/services/script/desk_light,,hide
    } else {
        ; Jika tidak aktif, tetapkan perilaku spasi biasa
        Send, {PgDn}
    }
    return

Up::
    if (GetKeyState("Capslock", "T")) {
        ; Jika aktif, trigger numpad period
        Run, curl -X POST -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiI0Y2JlYzYzZTg1NzQ0OTc3OGRkNzM2ZWVlNzAzNDc2NyIsImlhdCI6MTcxNDcyODE4OCwiZXhwIjoyMDMwMDg4MTg4fQ.kSOcbk8T9vpYQozrWwoEDxXhKKEySqALSvrzqwt6feQ" -H "Content-Type: application/json" http://192.168.0.100:8123/api/services/script/ring_light,,hide
    } else {
        ; Jika tidak aktif, tetapkan perilaku spasi biasa
        Send, {PgDn}
    }
    return
