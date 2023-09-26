@ECHO OFF

IF [%1]==[] exit /B 1
IF NOT EXIST %1 exit /B 2
IF NOT DEFINED IS_MINIMIZED GOTO prep
"%~dp0TOTALCMD64.EXE" /S=L "%RLFILE%"
DEL "%RLFILE%"
exit

:prep
set IS_MINIMIZED=1 
set RLFILE=%TEMP%\rarview_%random%.txt
C:\xbin\rar l %1 > "%RLFILE%"
start "" /min %~s0 "%RLFILE%"
exit
