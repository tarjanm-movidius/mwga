@ECHO OFF

IF [%1]==[] exit /B 1
IF NOT EXIST %1 exit /B 2
IF NOT DEFINED IS_MINIMIZED GOTO prep
"%~dp0TOTALCMD64.EXE" /S=L "%O2TFILE%"
DEL "%O2TFILE%"
exit

:prep
set IS_MINIMIZED=1 
set O2TFILE=%TEMP%\odtview_%random%.txt
C:\xbin\odt2txt %1 > "%O2TFILE%"
start "" /min %~s0 "%O2TFILE%"
exit
