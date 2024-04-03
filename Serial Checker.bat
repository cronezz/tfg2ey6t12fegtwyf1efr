@echo off
title HWID Checker
echo **********************************
color 0F
echo **********************************
:start
cls
wmic diskdrive get model, serialnumber
echo CPU 
wmic cpu get serialnumber
echo BIOS
wmic bios get serialnumber
echo Motherboard
wmic baseboard get serialnumber
echo smBIOS UUID
wmic path win32_computersystemproduct get uuid
getmac
echo Press any key to get your hardware serials again.
pause >nul
goto start