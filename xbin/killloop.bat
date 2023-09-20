@ECHO OFF

:loop
call killstuff.bat
taskkill /f /t /im SystemSettingsBroker.exe
taskkill /f /t /im SystemSettings.exe
IF ERRORLEVEL 128 goto loop
taskkill /f /t /im WmiPrvSE.exe
goto loop
