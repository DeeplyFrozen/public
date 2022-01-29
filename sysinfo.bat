wmic path Win32_OperatingSystem get caption,buildnumber,Freephysicalmemory, freespaceinpagingfiles, freevirtualmemory, Lastbootuptime, serialnumber, version, numberofprocesses

wmic cpu get name

wmic memorychip get devicelocator, manufacturer, speed, serialnumber, partnumber

wmic bios get serialnumber

wmic path SoftwareLicensingService get OA3xOriginalProductKey

set |findstr Path=
