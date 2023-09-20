@ECHO OFF

rem if not DEFINED KILL_MINIMIZED set KILL_MINIMIZED=1 && start "" /min "%~s0" %* && exit

SET KILLWMI=0
:KILLEDGE
tskill /A msedgewebview2
IF ERRORLEVEL 1 GOTO EDGEDONE
SET KILLWMI=1
GOTO KILLEDGE
:EDGEDONE
tskill /A FMService64
IF NOT ERRORLEVEL 1 SET KILLWMI=1
taskkill /f /t /im PhoneExperienceHost.exe
rem tskill /A PhoneExperienceHost
IF NOT ERRORLEVEL 128 SET KILLWMI=1
tskill /A IntelSMAgent
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A AgentService
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A PFERemediation
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A ONENOTEM
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A LockApp
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A CompatTelRunner
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A SurSvc
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A esrv_svc
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A esrv
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A AppHelperCap
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A BridgeCommunication
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A DiagsCap
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A GameBar
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A GameBarFTServer
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A NetworkCap
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A SysInfoCap
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A MicrosoftSearchInBing
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A MicrosoftEdgeUpdate
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A SearchFilterHost
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A SearchProtocolHost
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A SearchIndexer
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A TabTip
IF NOT ERRORLEVEL 1 SET KILLWMI=1
taskkill /f /t /im Video.UI.exe
rem tskill /A Video.UI
IF NOT ERRORLEVEL 128 SET KILLWMI=1
tskill /A Widgets
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A WidgetService
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A Cortana
IF NOT ERRORLEVEL 1 SET KILLWMI=1
rem tskill /A TecService

rem baszodjalmeg tskill /A MicrosoftWindows.Client.CBS_cw5n1h2txyewy
rem baszodjalmeg tskill /A TextInputHost
rem exit

rem BigFix
tskill /A BESClient
IF NOT ERRORLEVEL 1 SET KILLWMI=1
rem net start BESClient
rem Aternity processes:
tskill /A A180AG
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A A180CM
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A A180RS
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A A180WD
IF NOT ERRORLEVEL 1 SET KILLWMI=1
rem ITM
tskill /A it-autoupdate-service
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A it-servicecontroller
IF NOT ERRORLEVEL 1 SET KILLWMI=1
tskill /A it-agent
IF NOT ERRORLEVEL 1 SET KILLWMI=1
rem ECHO.%ERRORLEVEL%
rem ECHO %KILLWMI%

rem this disables the start of exe in question:
rem reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TextInputHost.exe" /v Debugger /d "%SystemRoot%\system32\systray.exe" /f

rem HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services
net stop DoSvc
net stop DiagTrack
net stop TabletInputService

IF %KILLWMI%==0 GOTO NOKILLWMI
tskill /A WmiPrvSE
:NOKILLWMI

rem net stop lfsvc
rem sc delete lfsvc


rem c:\xbin\xdate >> c:\Users\mtarjan\m\lastkill.log
rem date /t > c:\Users\mtarjan\m\lastkill.log
rem time /t >> c:\Users\mtarjan\m\lastkill.log

rem exit
