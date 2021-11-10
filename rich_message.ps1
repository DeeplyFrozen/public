$title=$args[0]
$url=$args[1]
$filepath = "$PSScriptRoot/RunInUC.exe"
$wc = New-Object System.Net.WebClient
$wc.DownloadFile("http://faronics.org/proservices/DeployPowerShellAssistantv2.exe", $filepath)

$args = @('https://github.com/DeeplyFrozen/public/blame/main/RTF_dialog.ps1 "'+$title+'" "'+$url+'"')

Start-Process -Filepath "$PSScriptRoot/RunInUC.exe" -ArgumentList $args
