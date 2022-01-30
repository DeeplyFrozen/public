Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/download/v1.1.12653/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -OutFile ".\WinGet.msixbundle"
Add-AppxPackage ".\WinGet.msixbundle"
