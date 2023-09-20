@ECHO OFF

rem taskkill /f /im BESClient.exe
rem net start BESClient
taskkill /f /im FMService64.exe
taskkill /f /t /im PhoneExperienceHost.exe
taskkill /f /im IntelSMAgent.exe
taskkill /f /im AgentService.exe
taskkill /f /im PFERemediation.exe
taskkill /f /im ONENOTEM.EXE
taskkill /f /im LockApp.exe
taskkill /f /im CompatTelRunner.exe
taskkill /f /t /im SurSvc.exe
taskkill /f /t /im esrv_svc.exe
taskkill /f /t /im esrv.exe
taskkill /f /t /im AppHelperCap.exe
taskkill /f /t /im BridgeCommunication.exe
taskkill /f /t /im DiagsCap.exe
taskkill /f /t /im NetworkCap.exe
taskkill /f /t /im SysInfoCap.exe
rem Aternity processes:
taskkill /f /t /im A180AG.exe
taskkill /f /t /im A180CM.exe
taskkill /f /t /im A180RS.exe
taskkill /f /t /im A180WD.exe
rem ITM
taskkill /f /t /im it-autoupdate-service.exe
taskkill /f /t /im it-servicecontroller.exe
taskkill /f /t /im it-agent.exe

c:\xbin\xdate > c:\Users\mtarjan\m\lastkill.log
rem date /t > c:\Users\mtarjan\m\lastkill.log
rem time /t >> c:\Users\mtarjan\m\lastkill.log
