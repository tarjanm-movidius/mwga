@ECHO OFF

IF [%1]==[] exit /B 1
IF NOT EXIST %1 exit /B 2
IF NOT DEFINED IS_MINIMIZED GOTO prep
"%~dp0TOTALCMD64.EXE" /S=L "%ZLFILE%"
DEL "%ZLFILE%"
exit

:prep
set IS_MINIMIZED=1 
set ZLFILE=%TEMP%\zipview_%random%.txt
C:\xbin\unzip -l %1 > "%ZLFILE%"
start "" /min %~s0 "%ZLFILE%"
exit
