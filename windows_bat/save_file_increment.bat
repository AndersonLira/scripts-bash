set /p data=<"d:\programs\screensavers\next.dat"
set /A data=%data%+1
echo %data%
echo %data% > "d:\programs\screensavers\next.dat"
