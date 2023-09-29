@ECHO OFF

IF [%1]==[] exit /B 1
IF NOT EXIST %1 exit /B 2
IF NOT DEFINED IS_MINIMIZED GOTO prep
"%~dp0TOTALCMD64.EXE" /S=L "%SQLTFILE%"
DEL "%SQLTFILE%"
exit

:prep
set IS_MINIMIZED=1 
set SQLTFILE=%TEMP%\sqliteview_%random%.txt
C:\xbin\sqlist %1 > "%SQLTFILE%"
start "" /min %~s0 "%SQLTFILE%"
exit
