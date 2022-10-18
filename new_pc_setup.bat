
https://www3.deepfreeze.com/api/GetProductInstaller?fn=c2f39af1c9e4112633668ba341126336636dd94734eb83e0c8&pt=0

#set power options to never

powercfg /change standby-timeout-ac 0
powercfg /change monitor-timeout-ac 0

#enable remote desktop
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
netsh advfirewall firewall set rule group="remote desktop" new enable=Yes

#hide search bar and task view button

reg add "HKCU\software\microsoft\windows\currentversion\search" /v SearchTaskbarMode /t REG_DWORD /d 0 /f
reg add "HKCU\software\microsoft\windows\currentversion\search" /v TraySearchBoxVisible /t REG_DWORD /d 0 /f
