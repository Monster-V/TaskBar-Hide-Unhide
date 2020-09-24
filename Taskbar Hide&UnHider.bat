@echo off
:Start
mode 30,20
color 0a
Echo ..............................
Echo           Hello, %username%
Echo.
Echo  Options :
echo.
Echo     Hide   : 1
echo     UnHide : 2 
Echo     Exit   : 3 
echo.
echo.
echo    ThankYou for Using ME....
Echo ______________________________
echo       Made By Monster-V
Echo ______________________________
echo.
Set /p input="Enter Your Choice : "

if /i %input%==3 goto exit
if /i %input%==2 goto unhide
if /i %input%==1 goto hide

:hide
cls
powershell -command "&{$p='HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StuckRects2';$v=(Get-ItemProperty -Path $p).Settings;$v[8]=3;&Set-ItemProperty -Path $p -Name Settings -Value $v;&Stop-Process -f -ProcessName explorer}"
cls
Title Done!
mode 16,10
color 0c
echo.
echo ----------------
echo.   WORK DONE!
echo.
echo   Taskbar Hide
echo.
echo ----------------
pause>nul
goto start


:unhide
cls
powershell -command "&{$p='HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StuckRects2';$v=(Get-ItemProperty -Path $p).Settings;$v[8]=2;&Set-ItemProperty -Path $p -Name Settings -Value $v;&Stop-Process -f -ProcessName explorer}"
cls
Title Done!
mode 16,10
color 0f
echo.
echo ----------------
echo.  WORK DONE!
echo.
echo  Taskbar Unhide
echo.
echo ----------------
pause>nul
goto start



:exit
cls
msg * "ThankYou For Choosing Me"
timeout /t 5>nul
exit