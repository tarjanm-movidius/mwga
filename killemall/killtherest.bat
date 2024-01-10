@echo off

tskill /a ApplicationFrameHost
tskill /a dllhost
tskill /a SystemSettings
tskill /a SystemSettingsBroker
tskill /a TiWorker
tskill /a TrustedInstaller
tskill /a msiexec
tskill /a wuauclt
tskill /a MoNotificationUx
taskkill /f /t /im ShellExperienceHost.exe
net stop wuauserv

rem sc stop ssh-agent
rem sc config ssh-agent start=disabled
rem sc config ssh-agent start=demand
