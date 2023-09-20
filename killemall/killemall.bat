@ECHO OFF

net stop SSDPSRV
net stop PhoneSvc
net stop InstallService
net stop WMIRegistrationService
net stop CcmExec

"C:\Program Files\Git\bin\bash" killemall.sh
