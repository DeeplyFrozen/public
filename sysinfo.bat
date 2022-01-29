@echo off
wmic path Win32_OperatingSystem get caption,Freephysicalmemory, freespaceinpagingfiles, freevirtualmemory, Lastbootuptime, serialnumber, version, numberofprocesses  >> temp.txt

wmic cpu get name >> temp.txt

wmic memorychip get devicelocator, manufacturer, speed, serialnumber, partnumber >> temp.txt

wmic bios get serialnumber >> temp.txt

wmic path SoftwareLicensingService get OA3xOriginalProductKey >> temp.txt

@echo on
type temp.txt
set |findstr Path=

@echo off
del temp.txt
