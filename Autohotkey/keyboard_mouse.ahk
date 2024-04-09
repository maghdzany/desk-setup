SetTitleMatchMode, 2 ; Menggunakan pencarian judul jendela yang mengandung "7zFM.exe" secara longgar

#Persistent ; Membuat skrip tetap berjalan

;===============EVERYTHING==========================================================
programStatus := 0
;===============================7ZIP=================================================
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
