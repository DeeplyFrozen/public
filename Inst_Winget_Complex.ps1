Invoke-WebRequest -Uri "https://www.nuget.org/api/v2/package/Microsoft.UI.Xaml/" -OutFile "c:\windows\temp\MS.UI.Xaml.zip" -verbose

Expand-Archive -LiteralPath 'c:\windows\temp\MS.UI.Xaml.zip' -DestinationPath C:\windows\temp\MS.UI.Xaml  -verbose

Add-AppxPackage "C:\windows\temp\MS.UI.Xaml\tools\AppX\x64\Release\Microsoft.UI.Xaml.2.8.appx" -verbose

Invoke-WebRequest -Uri "https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx" -OutFile "c:\windows\temp\Microsoft.VCLibs.x64.14.00.Desktop.appx" -verbose

Add-AppxPackage "c:\windows\temp\Microsoft.VCLibs.x64.14.00.Desktop.appx" -verbose

Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/download/v1.7.11132/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -OutFile "c:\windows\temp\WinGet.msixbundle" -verbose

Add-AppxPackage "c:\windows\temp\WinGet.msixbundle" -verbose
