@ECHO OFF

IF [%1]==[] exit /B 1
IF NOT EXIST %1 exit /B 2
IF NOT DEFINED IS_MINIMIZED GOTO prep
rem start "" "C:\Program Files\totalcmd\TOTALCMD64.EXE" /S=L "%SYMFILE%"
rem C:\xbin\sleep 1
"C:\Program Files\totalcmd\TOTALCMD64.EXE" /S=L "%SYMFILE%"
DEL "%SYMFILE%"
exit

:prep
set IS_MINIMIZED=1 
set SYMFILE=%TEMP%\elfview_%random%.txt
C:\xbin\file %1 > "%SYMFILE%"
C:\xbin\nm %1 >> "%SYMFILE%"
start "" /min %~s0 "%SYMFILE%"
exit
