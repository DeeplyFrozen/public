param($KB,$updateBuild)

write-output($KB,$updateBuild)

#check if KB or build number supplied#
if ($updateBuild.length -gt 0 -And $KB.length -eq 0)
  {
  write-output("We found a build string, and will find the matching cumulative update.")
  $searchUpdates=dism /online /get-packages | findstr ("~"+$updateBuild)
  write-output("The update we found was: "+$searchUpdates)
  $update = $SearchUpdates.replace("Package Identity : ", "") 
  }
elseif ($KB.length -gt 0 -And $updateBuild.length -eq 0)
  {
  write-output("We found a KB number, and will find the matching cumulative update.")
  $searchUpdates=dism /online /get-packages | findstr $KB
  write-output("The update we found was: "+$searchUpdates)
  $update = $SearchUpdates.replace("Package Identity : ", "") 
  }
else
  {write-output("Please check your parameters and try again. Supply a KB or build number for newer cumulative updates.")}
  
DISM.exe /Online /Remove-Package /PackageName:$update /quiet /norestart
write-output("Removing: "+$update)
write-output("This machine needs to be restarted to complete the operation.")
