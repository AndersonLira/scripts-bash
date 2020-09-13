echo off
D:
cd "D:\programs\screensavers"



set max=3
set /p data=<"next.dat"
set /A data=%data%+1
set num=%data%

if %data% GEQ %max% (
    set data=-1
)
echo %data% > "next.dat"



set list0=mario.lnk
set list1=matrix.lnk
set list2=pipes.lnk
set list3=bsod.lnk

setlocal enabledelayedexpansion
start /WAIT !list%num%!
endlocal
"C:\Windows\System32\rundll32.exe" user32.dll, LockWorkStation
