@echo off

wmic computersystem get chassisskunumber, dnshostname, domain, model, numberoflogicalprocessors, systemtype, totalphysicalmemory, username /format:list >> temp.txt

wmic path Win32_OperatingSystem get caption,Freephysicalmemory, freespaceinpagingfiles, freevirtualmemory, Lastbootuptime, version, numberofprocesses /format:list >> temp.txt

wmic cpu get name /format:list >> temp.txt

wmic memorychip get devicelocator, manufacturer, speed, serialnumber, partnumber /format:list >> temp.txt

wmic logicaldisk get caption, drivetype, filesystem, freespace, lasterrorcode, name, size, volumename /format:list >> temp.txt

wmic bios get serialnumber /format:list >> temp.txt

wmic path SoftwareLicensingService get OA3xOriginalProductKey /format:list >> temp.txt


@echo on
type temp.txt
wevtutil qe system "/q:*[System [Level=2 or Level=1]]" /f:text /c:5 /rd:True /format:text
wevtutil qe application "/q:*[System [Level=2 or Level=1]]" /f:text /c:5 /rd:True /format:text
set |findstr Path=

@echo off
del temp.txt
