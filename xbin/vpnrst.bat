@echo off

net stop pangps
tskill /a PanGPA
tskill /a PanGpHipMp
tskill /a PanGPS
net stop pangps
net start pangps
