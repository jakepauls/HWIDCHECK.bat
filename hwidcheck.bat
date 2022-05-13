ECHO OFF
TITLE HWID Checker by OC#8000
ECHO **********************************
Color 5
ECHO **********************************
:start
cls
wmic diskdrive get model, serialnumber
ECHO CPU 
wmic cpu get serialnumber
ECHO BIOS
wmic bios get serialnumber
ECHO Motherboard
wmic baseboard get serialnumber
ECHO smBIOS UUID
wmic path win32_computersystemproduct get uuid
getmac
echo Press any key to get your hardware serials again.
pause>nul
goto start
