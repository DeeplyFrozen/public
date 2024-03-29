param($KB,$Build)

write-output("KB:"+$KB,"Build:"+$Build)

#check if KB or build number supplied#
if ($Build.length -gt 0 -And $KB.length -eq 0)
  {
  write-output("We found a build string, and will find the matching cumulative update.")
  $searchUpdates=dism /online /get-packages | findstr ("~19041."+$Build)
  write-output("The update we found was "+$searchUpdates)
  $update = $SearchUpdates.replace("Package Identity : ", "") 
  }
elseif ($KB.length -gt 0 -And $Build.length -eq 0)
  {
  write-output("We found a KB number, and will find the matching cumulative update.")
  $searchUpdates=dism /online /get-packages | findstr $KB
  write-output("The update we found was "+$searchUpdates)
  $update = $SearchUpdates.replace("Package Identity : ", "") 
  }
else
  {write-output("Please check your parameters and try again. Supply a KB or build number for newer cumulative updates.")
   write-output("Ex. UninstallWU.ps1 -kb KB123456789 or UninstallWU.ps1 -build 1234")
  }
  
DISM.exe /Online /Remove-Package /PackageName:$update /quiet /norestart
write-output("Removing: "+$update)
write-output("This machine needs to be restarted to complete the operation.")
