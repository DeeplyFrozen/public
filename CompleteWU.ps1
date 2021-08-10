Set-Service -Name WUAUServ -StartupType Manual -Status Running
$updates = Start-WUScan -SearchCriteria "Type='Software' AND IsInstalled=0"
Write-Host "Updates Found: " $Updates.Count
Install-WUUpdates -Updates $Updates