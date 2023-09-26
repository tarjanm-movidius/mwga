@ECHO OFF

IF [%1]==[] exit /B 1
IF NOT EXIST %1 exit /B 2
IF NOT DEFINED IS_MINIMIZED GOTO prep
"%~dp0TOTALCMD64.EXE" /S=L "%D2TFILE%"
rmdir /S /Q %D2TDIR%
del %D2TFILE%
exit

:prep
set IS_MINIMIZED=1 
set D2TDIR="%TEMP%\docxview_%random%"
set D2TFILE="%D2TDIR%.txt"
md "%D2TDIR%"
tar xzf %1 -C %D2TDIR:\=/%
rem C:\xbin\unzip -q -d "%D2TDIR:\=/%" %1
C:\xbin\perl C:\xbin\docx2txt.pl %D2TDIR:\=/% - > %D2TFILE%
start "" /min %~s0 %D2TFILE%
exit
