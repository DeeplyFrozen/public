$title=$args[0]
$url=$args[1]
$filepath = "$PSScriptRoot/RunInUC.exe"
$wc = New-Object System.Net.WebClient
$wc.DownloadFile("http://faronics.org/proservices/DeployPowerShellAssistantv2.exe", $filepath)

$args = @('http://faronics.org/lapd1.ps1 "'+$title+'" "'+$url+'"')

Start-Process -Filepath "$PSScriptRoot/RunInUC.exe" -ArgumentList $args
