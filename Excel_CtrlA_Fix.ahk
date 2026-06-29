; --- Excel CTRL+A highlight all fix ---
SetTitleMatchMode, 2
; --- Exception: Find & Replace window active ---
#IfWinActive, ahk_class bosa_sdm_XL9
$^A::
SendInput, {End}
Sleep, 50
SendInput, ^+{Home}
return

; --- Normal behavior: Excel main window ---
#IfWinActive, ahk_exe EXCEL.EXE
$^A::
SendInput, {Esc}
Sleep, 50
SendInput, {F2}
Sleep, 50
SendInput, ^+{Home}
return
#IfWinActive