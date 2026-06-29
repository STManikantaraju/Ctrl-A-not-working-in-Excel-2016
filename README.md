# Ctrl+A-not-working-in-Excel-2016

## Goto https://www.autohotkey.com/
## download this app & install
## with version v1.1  -> https://www.autohotkey.com/download/ahk-install.exe

## then
## you can download the file "**Excel_CtrlA_Fix.ahk**"  or can create a file & work on that
## (better you can download, because with this script line alignment may vary)

## create a file with name "Excel_CtrlA_Fix.ahk"    -> ahk means ** autohotkey format**
## then copy below code to that file

; --- Excel CTRL+A highlight all fix --- \
SetTitleMatchMode, 2 \
; --- Exception: Find & Replace window active --- \
#IfWinActive, ahk_class bosa_sdm_XL9 \
$^A:: \
SendInput, {End} \
Sleep, 50 \
SendInput, ^+{Home} \
return \


; --- Normal behavior: Excel main window --- \
#IfWinActive, ahk_exe EXCEL.EXE \
$^A:: \
SendInput, {Esc} \
Sleep, 50 \
SendInput, {F2} \
Sleep, 50 \
SendInput, ^+{Home} \
return \
#IfWinActive \



## u can add this file to startup or auto start else need to run everytime when u r using excel file. instead of that startup is the better option to run as default
