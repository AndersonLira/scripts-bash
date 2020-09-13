
set max=15
set /p data=<"d:\programs\screensavers\next.dat"
set /A data=%data%+1
echo %data%

if %data% GEQ %max% (
    set data=0
)
echo %data% > "d:\programs\screensavers\next.dat"
