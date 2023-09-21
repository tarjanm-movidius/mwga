@ECHO OFF

IF [%1]==[] exit /B 1
IF NOT EXIST %1 exit /B 2
IF NOT DEFINED IS_MINIMIZED GOTO prep
"C:\Program Files\totalcmd\TOTALCMD64.EXE" /S=L "%AWFILE%"
rmdir /S /Q %AWDIR%
del %AWFILE%
exit

:prep
set IS_MINIMIZED=1 
set AWDIR="%TEMP%\docxview_%random%"
set AWFILE="%AWDIR%.txt"
md "%AWDIR%"
tar xzf %1 -C %AWDIR:\=/%
rem C:\xbin\unzip -q -d "%AWDIR:\=/%" %1
C:\xbin\perl C:\xbin\docx2txt.pl %AWDIR:\=/% - > %AWFILE%
start "" /min %~s0 %AWFILE%
exit
