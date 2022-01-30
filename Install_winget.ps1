Set-ExecutionPolicy -ExecutionPolicy Bypass -scope LocalMachine
Get-AppPackage *Microsoft.DesktopAppInstaller*|select Name,PackageFullName
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -scope LocalMachine
