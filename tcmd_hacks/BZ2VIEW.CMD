@ECHO OFF

IF [%1]==[] exit /B 1
IF NOT EXIST %1 exit /B 2
IF NOT DEFINED IS_MINIMIZED GOTO prep
"%~dp0TOTALCMD64.EXE" /S=L "%BZ2FILE%"
DEL "%BZ2FILE%"
exit

:prep
set IS_MINIMIZED=1
set BZ2FILE=%TEMP%\bzview_%random%.txt
set BZ2FN=%1
set BZ2FN=%BZ2FN:"=%
IF [%BZ2FN:~-8%]==[.tar.bz2] (
	tar -tjvf %1 > "%BZ2FILE%"
) ELSE (
	C:\xbin\bzip2 -cd %1 > "%BZ2FILE%"
)
start "" /min %~s0 "%BZ2FILE%"
exit
