@ECHO OFF

IF [%1]==[] exit /B 1
IF NOT EXIST %1 exit /B 2
IF NOT DEFINED IS_MINIMIZED GOTO prep
"C:\Program Files\totalcmd\TOTALCMD64.EXE" /S=L "%AWFILE%"
DEL "%AWFILE%"
exit

:prep
set IS_MINIMIZED=1 
set AWFILE=%TEMP%\pdfview_%random%.txt
C:\xbin\pdftotext -q -layout -enc UTF-8 %1 - > "%AWFILE%"
start "" /min %~s0 "%AWFILE%"
exit
