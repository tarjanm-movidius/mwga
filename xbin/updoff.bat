@echo off
sc config wuauserv start=disabled
sc stop wuauserv
sc config Installservice start=disabled
sc stop Installservice
