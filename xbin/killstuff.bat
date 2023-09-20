@ECHO OFF

rem if not DEFINED KILL_MINIMIZED set KILL_MINIMIZED=1 && start "" /min "%~s0" %* && exit

SET KILLWMI=0
:KILLEDGE
taskkill /f /t /im msedgewebview2.exe
IF ERRORLEVEL 128 GOTO EDGEDONE
SET KILLWMI=1
GOTO KILLEDGE
:EDGEDONE
:KILLINPUTSHIT
taskkill /f /t /im TextInputHost.exe
IF ERRORLEVEL 128 GOTO SHITDONE
SET KILLWMI=1
GOTO KILLINPUTSHIT
:SHITDONE
taskkill /f /t /im FMService64.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im PhoneExperienceHost.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im IntelSMAgent.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im HelpPane.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im AgentService.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im PFERemediation.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im ONENOTEM.EXE
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im LockApp.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im CompatTelRunner.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im SurSvc.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im esrv_svc.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im esrv.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im AppHelperCap.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im BridgeCommunication.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im DiagsCap.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im GameBar.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im GameBarFTServer.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im NetworkCap.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im SysInfoCap.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im MicrosoftSearchInBing.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im MicrosoftEdgeUpdate.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im SearchFilterHost.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im SearchProtocolHost.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im SearchIndexer.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im TabTip.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im Video.UI.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im Widgets.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im WidgetService.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im Cortana.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im SearchHost.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
rem taskkill /f /t /im ShellExperienceHost.exe
rem IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im SCNotification.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im DataExchangeHost.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im ai.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im policyHost.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im WMIADAP.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im WmiApSrv.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1

rem taskkill /f /t /im TecService.exe

rem taskkill /f /t /im SystemSettings.exe

rem baszodjalmeg taskkill /f /t /im MicrosoftWindows.Client.CBS_cw5n1h2txyewy
rem baszodjalmeg taskkill /f /t /im TextInputHost.exe
rem exit

taskkill /f /t /im MoUsoCoreWorker.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
rem BigFix
taskkill /f /t /im BESClient.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
rem net start BESClient
rem Aternity processes:
taskkill /f /t /im A180AG.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im A180CM.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im A180RS.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im A180WD.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
rem ITM
taskkill /f /t /im it-autoupdate-service.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im it-servicecontroller.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im it-agent.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im vpncli.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im omadmprc.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im ccmexec.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1
taskkill /f /t /im unsecapp.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1

taskkill /f /t /im OfficeClickToRun.exe
IF NOT ERRORLEVEL 128 SET KILLWMI=1

rem ECHO.%ERRORLEVEL%
rem ECHO %KILLWMI%

GOTO COPYPASTE
taskkill /f /t /im 
IF NOT ERRORLEVEL 128 SET KILLWMI=1
:COPYPASTE

rem this disables the start of exe in question:
rem reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TextInputHost.exe" /v Debugger /d "%SystemRoot%\system32\systray.exe" /f

rem HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services
net stop DoSvc
net stop DiagTrack
net stop TabletInputService
net stop IntuneManagementExtension
net stop UsoSvc
rem taskkill /f /t /im Microsoft.Management.Services.IntuneWindowsAgent.exe
rem IF NOT ERRORLEVEL 128 SET KILLWMI=1

IF %KILLWMI%==0 GOTO NOKILLWMI
taskkill /f /t /im WmiPrvSE.exe
:NOKILLWMI

rem GOTO NINCSTELEAFASZOM
taskkill /f /t /im TiWorker.exe
taskkill /f /t /im TrustedInstaller.exe
taskkill /f /t /im smartscreen.exe
taskkill /f /t /im msiexec.exe
taskkill /f /t /im wuauclt.exe
:NINCSTELEAFASZOM

rem net stop lfsvc
rem sc delete lfsvc


rem c:\xbin\xdate >> c:\Users\mtarjan\m\last_kill.log
rem date /t > c:\Users\mtarjan\m\lastkill.log
rem time /t >> c:\Users\mtarjan\m\lastkill.log

rem exit
