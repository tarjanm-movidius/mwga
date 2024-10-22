@ECHO OFF

ECHO # git pull && git pull
IF /I %ERRORLEVEL% NEQ 0 PAUSE && exit /b %ERRORLEVEL%
IF EXIST ".gitmodules" ECHO # git submodule update --recursive && git submodule update --recursive
IF /I %ERRORLEVEL% NEQ 0 PAUSE && exit /b %ERRORLEVEL%
IF EXIST ".lfsconfig"  ECHO # git lfs pull && git lfs pull
IF /I %ERRORLEVEL% NEQ 0 PAUSE && exit /b %ERRORLEVEL%
IF EXIST ".gitfat"     ECHO # git fat pull && git fat pull
IF /I %ERRORLEVEL% NEQ 0 PAUSE && exit /b %ERRORLEVEL%
REM how can something as simple as testing if a var is non-zero be so utterly, desperately shite
IF "%COMMANDER_EXE:~0,1%" == "~0,1" exit /b
timeout /t 10
exit /b
