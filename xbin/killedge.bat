@ECHO OFF

:KILLITAGAIN
taskkill /f /t /im msedgewebview2.exe
GOTO KILLITAGAIN
