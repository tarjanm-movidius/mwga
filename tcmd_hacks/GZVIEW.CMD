@ECHO OFF

IF [%1]==[] exit /B 1
IF NOT EXIST %1 exit /B 2
IF NOT DEFINED IS_MINIMIZED GOTO prep
"%~dp0TOTALCMD64.EXE" /S=L "%GZFILE%"
DEL "%GZFILE%"
exit

:prep
set IS_MINIMIZED=1 
set GZFILE=%TEMP%\gzview_%random%.txt
set GZFN=%1
set GZFN=%GZFN:"=%
IF [%GZFN:~-7%]==[.tar.gz] GOTO istgz
IF [%GZFN:~-4%]==[.tgz] GOTO istgz
C:\xbin\gzip -cd %1 > "%GZFILE%"
goto batchisajoke
:istgz
tar -tzvf %1 > "%GZFILE%"
:batchisajoke
start "" /min %~s0 "%GZFILE%"
exit
