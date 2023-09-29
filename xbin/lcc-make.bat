@ECHO OFF

set LCCROOT=C:\lcc

set SRC_FILE=myprog.c
set EXE_FILE=myprog.exe
set LIBS=%LCCROOT%\lib64\sqlite3.lib

set CFLAGS=-I"%LCCROOT%\include64" -O -A -unused
set CC=%LCCROOT%\bin\lcc64.exe
set LINKER=%LCCROOT%\bin\lcclnk64.exe
set OBJ=%SRC_FILE:~0,-1%obj

ECHO %CC% -c %CFLAGS% %SRC_FILE%
%CC% -c %CFLAGS% %SRC_FILE% || exit /b 1
ECHO %LINKER% -s -subsystem console -o %EXE_FILE% %OBJ% %LIBS%
%LINKER% -s -subsystem console -o %EXE_FILE% %OBJ% %LIBS% || exit /b 1
ECHO C:\xbin\strip.exe %EXE_FILE%
C:\xbin\strip.exe %EXE_FILE% || exit /b 1
