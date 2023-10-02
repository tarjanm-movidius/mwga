@ECHO OFF

IF [%1]==[] exit /B 1
IF NOT EXIST %1 exit /B 2
IF NOT DEFINED IS_MINIMIZED GOTO prep
"%~dp0TOTALCMD64.EXE" /S=L "%MDDFILE%"
DEL "%MDDFILE%"
exit

:prep
set IS_MINIMIZED=1 
set MDDFILE=%TEMP%\mdbview_%random%.txt
C:\xbin\mdb_dump . > "%MDDFILE%"
start "" /min %~s0 "%MDDFILE%"
exit
