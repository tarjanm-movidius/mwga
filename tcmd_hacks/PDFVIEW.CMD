@ECHO OFF

IF [%1]==[] exit /B 1
IF NOT EXIST %1 exit /B 2
IF NOT DEFINED IS_MINIMIZED GOTO prep
"%~dp0TOTALCMD64.EXE" /S=L "%P2TFILE%"
DEL "%P2TFILE%"
exit

:prep
set IS_MINIMIZED=1 
set P2TFILE=%TEMP%\pdfview_%random%.txt
C:\xbin\pdftotext -q -layout -enc UTF-8 %1 - > "%P2TFILE%"
start "" /min %~s0 "%P2TFILE%"
exit
