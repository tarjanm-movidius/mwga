@ECHO OFF

ECHO # git pull && git pull
IF /I %ERRORLEVEL% NEQ 0 PAUSE && exit /b %ERRORLEVEL%
IF EXIST ".gitmodules" ECHO # git submodule update --recursive && git submodule update --recursive
IF /I %ERRORLEVEL% NEQ 0 PAUSE && exit /b %ERRORLEVEL%
IF EXIST ".lfsconfig"  ECHO # git lfs pull && git lfs pull
IF /I %ERRORLEVEL% NEQ 0 PAUSE && exit /b %ERRORLEVEL%
IF EXIST ".gitfat"     ECHO # git fat pull && git fat pull
IF /I %ERRORLEVEL% NEQ 0 PAUSE && exit /b %ERRORLEVEL%
exit /b
