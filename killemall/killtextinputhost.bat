@ECHO OFF

:KILLITAGAIN
rem taskkill /f /t /im TextInputHost.exe
tskill /A TextInputHost
GOTO KILLITAGAIN
