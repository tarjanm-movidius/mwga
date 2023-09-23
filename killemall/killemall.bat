@ECHO OFF

net stop SSDPSRV
net stop PhoneSvc
net stop InstallService
net stop WMIRegistrationService
net stop CcmExec

"C:\xbin\bash" C:\xbin\killemall.sh
