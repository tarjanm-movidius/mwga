@echo off
sc config wuauserv start=demand
sc start wuauserv
sc config Installservice start=demand
sc start Installservice
