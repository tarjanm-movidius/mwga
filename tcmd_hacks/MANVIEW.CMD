@ECHO OFF

IF [%1]==[] exit /B 1
IF NOT EXIST %1 exit /B 2
IF NOT DEFINED IS_MINIMIZED GOTO prep
"%~dp0TOTALCMD64.EXE" /S=L "%MDFILE%"
DEL "%MDFILE%"
exit

:prep
set IS_MINIMIZED=1
set MDFILE=%TEMP%\manview_%random%.txt
C:\xbin\mandoc %1 | C:\xbin\sed "s/.\x08//g" > "%MDFILE%"
start "" /min %~s0 "%MDFILE%"
exit
