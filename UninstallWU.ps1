#dism /online /get-packages | findstr "Package_for"#
#$update = $SearchUpdates.replace("Package Identity : ", "") | findstr "KBXXXXXXX"#

param($update)
DISM.exe /Online /Remove-Package /PackageName:$update /quiet /norestart
write-output($update)
