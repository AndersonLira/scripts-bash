echo off
D:
cd "D:\programs\screensavers"

set /a num=%random% %%2 


set list0=mario.lnk
set list1=matrix.lnk

setlocal enabledelayedexpansion
start /WAIT !list%num%!
endlocal
"C:\Windows\System32\rundll32.exe" user32.dll, LockWorkStation
