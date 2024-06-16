SetTitleMatchMode, 2 ; Menggunakan pencarian judul jendela yang mengandung "7zFM.exe" secara longgar

#Persistent ; Membuat skrip tetap berjalan

nircmdPath := "E:\DATA\CODINGAN\!MY GITHUB REPO\desk-setup\Autohotkey\nircmd.exe"

;=========================================7ZIP================================================
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



;======================================CHAT GPT=======================================
Home::
IfWinExist, ahk_exe Chrome.exe
    {
        WinActivate
        Loop
        {
            Send, ^{Tab}
            Sleep, 50
            WinGetTitle, currentTitle, A
            IfInString, currentTitle, ChatGPT
            {
                Send, +{Esc}
                return
            } 
            If (A_Index > 2)
            {
                WinGetTitle, checkTitle, A
                If (currentTitle = checkTitle)
                {
                    Send, ^t
                    Sleep, 500
                    Send, chatgpt.com{Enter}
                    return
                }
            }
         }    
    }
    else
    {
        Run, chrome.exe "https://chatgpt.com"
        Sleep 4000
        Send, +{Esc}
    }
return

;=====================================================================================



;========================================CHROME========================================
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
;======================================================================================



;====================================EVERYTHING SEARCH=================================
Pause::
if (programStatus = 0) {
    Run, C:\Program Files\Everything\Everything.exe ; Menjalankan program Everything
    programStatus := 1 ; Mengatur status program menjadi terbuka
} else {
    ; Menutup program Everything dengan mengirimkan sinyal Alt+F4
    IfWinExist, ahk_exe Everything.exe
    {
        WinClose
    }
    programStatus := 0 ; Mengatur status program menjadi tertutup
}
return
;====================================================================================



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


;======================================MOUSE====================================================
XButton1::Send {Browser_Back}
XButton2::Send {Browser_Forward}
XButton1 & WheelUp::Send {Volume_Up}
XButton1 & WheelDown::Send {Volume_Down}
XButton1 & MButton::
	WinSet, AlwaysOnTop, Toggle, A
	SoundBeep
XButton2 & LButton::Send ^c
XButton2 & RButton::Send ^v
XButton1 & LButton::Send ^z
XButton1 & RButton::Send !{LButton}
XButton2 & WheelUp::Send {WheelLeft}
XButton2 & WheelDown::Send {WheelRight}

XButton2 & MButton:: ;THIS IS FOR MUTE CURRENT WINDOW
    WinGet, active_id, ID, A
    WinGet, process_name, ProcessName, ahk_id %active_id%
    Run, %nircmdPath% muteappvolume %process_name% 2
return

~LButton & RButton::^s 

~RButton & LButton::^#v

~MButton & RButton::Run %nircmdPath% monitor off

XButton1 & XButton2:: Run, %nircmdPath% savescreenshot "C:/Users/Sandemo/Pictures/Screenshots/Screenshot.png"
;==================================================================================================



;===================================NUMPAD==========================================================
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
;=======================================================================================================



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
;===============================================================================================================



;=======================================KEYSTROEKS========================================================
::codingan::
Run, E:/DATA/CODINGAN/!MY GITHUB REPO/desk-setup/Autohotkey
return
    
::reloadahk::
Reload
return

::arara::
Run, C:/Users/Sandemo/Desktop/ /
return

::ipconfig::
Run, cmd.exe /k ipconfig
return

::devman::
Run, devmgmt.msc
return

;==========================================================================================================
SetTimer, SendF, 50  ; Set timer untuk mengirim key f setiap 50 milidetik (20 kali per detik)
; Fungsi untuk mengirim key f
SendF:
IfWinActive, ahk_exe Code.exe  ; Ganti dengan nama proses yang sesuai
{
    ; Periksa apakah tombol XButton2 (tombol samping mouse) ditekan
    if (GetKeyState("XButton2", "P"))
    {
        Send, f  ; Mengirim key f
    }
    else
    {
        SetTimer, SendF, Off  ; Matikan timer jika XButton2 dilepas
    }
}
return
