$Title = "Notification"
$SoftwarecenterShortcut= "softwarecenter:SoftwareID=ScopeId_8E25450A-4C7E-4508-B501-B3F0E2C91541/Application_abd1dcbe-275a-4be1-9800-1c1e9a0ce7ff"
$AudioSource = "ms-winsoundevent:Notification.Default"
$SubtitleText = $args[0]
$BodyText = "Please have a great day!"
$HeaderFormat = "ImageOnly" 


$url=$args[1]
$Base64Image = "iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAA8FBMVEX7+/vUAgX/+P/BJybWBAXFAAD/39PfAAfRAgP99v/9+f70//b++vnZAADUAADUAw+pJx31/vuzIib519n5/PquAAD0vrn6/Pe+Pj/1/+//+ff7+/7DAAD/8fW4UlO9AADZrandlZD/0c25Ex380NW4bXD0/P76/fO/ICn/9uu2ECLZra62AACsAACjAAD/7/jp+/z529mpPkioIyW2IiCXOT27IS+rDR/7y83AMC+6PUa7QT+rQkPdnJL/++jyxbXiiZH0sLTQZmjjpqaodXi9anC2Ulj/4+yyWlbkAgD/1uC+Ul6YKCinJDKZJiuoYWsCvP3qAAAFiUlEQVR4nO2dDXObNhyHiQYxCLBDg00Gdp234jp1YntZ26ztlm1p87Kl3ff/NgMDWeGIwlskD/+eay+HOYEe6y8JTrIkSQAAAAAAAAAAAAAAAAAAAP8jbNuWDOORk15EhZPV8xNlqsErTnTLcF0nyW8EjSCpPxmST9NJ0keFSKewJEI8v0FByQi+NU/yrRTJV2hH5KeMziVJ4jCIj8vkIHVLI1IlFW3y0KjnLxaZL81Oi1p5ZLzTn9q5SVjXSVJonu97VGsw+H0yMiy7TFQ9L0RyJq7RZJguyO7h9uHF7vJ7dmMyhymWS0aS3BSPkE5xvL29fbh0mmtq7MXuT+c7Oz+/TvMiIn2UoXwK5nWSwyAzL94uH2vdKxjqx++GitrNR42ocLIyZte8672/cBszlOj2D4rc2cogr8gcpmEnyUuRT+YCXbVjqkcXzQlKZGWoZvMrDHVleNhglw9D3gSG3Y0wbE4QhtzZCMMNaGkUGMIQhkKBYWsMnTYbmq0vQxjCEIai2RjDVvcWHRmGMFx7w/bXQxg+h2HxUYhSIxX5hiJ6i2YFCxie8O7xuRtyf6bhbsi9DHmyMc+lMGzaUG2SLWZFFGIom798+rD3ca8+H/c+fNpTTaahYnbVk+PmBAuV4ezXqTv9berWnQ0UXGM6vTxj3kyIoaz+PteoTbUYUhGN2IY2+kNhR6kQQ+XA8P0FdfQVP1aGhhPoBrP1MwyidOL7FpGs1WxEpzKuY/n6ZX/9ojQwdKnn1K6G1J3Y1Lg8XUPD8UFQ+6xJQuUy1HVvrg1mzHuJMqQatYwko3ZFDEeXNDLosw3D98OTY849/vjAJZ5Fa89qNXSJGE8bysIMa8+IhGFrDNltKQxLA8PYkPIzFPF+CMOiwBCG1YAhDMtQwpDzyAxfQxGjazAsylob8nwuFWJoaFyfvGFYijWM0vYbiunxYViItTbk3R/CsAQwFGAo4PeHXFsaQWNPMCwGDBNDpe2GJgzLAUMBhhvQ0sCwHDCMDfk9l4pqaWBYiLU2JJJefwm1ou+HQt6eNEOvf9O1fgOGYSHW2pDAsAgwFGvY+t6i9SOkMCwGDDfGsP1jwDAsyVoaYiZ7KWC4KYac50TBsBQCDFnrbAj6/eEsrIe6ZNTF0W1CB33msiCqaprKkSDD2sSGzHuFhuqRkHEL/WHbmaqEhlpg+MSqEh0BhkEZatTyahvG9ZC5v8XKkP+v1YMyDA3rEhvK5uPIwmYqaMSq/XN8w3UMIg1OmTGqDANJAYYjjdqltqnKwwsNjcHZkMlYVcbvd/m2perpn1dv9veDfyneROyX4+rq8ys2X768+rxscJ+ZImXYU4ezfr8/K8J4Rf6507Oz07Prm5HLYjQahbukcTWUO2bQxPV6Sacctwnh/5xnklWp53bmnU6n1xm+vJH8POI9u3w/iGd/wbnHD+u/omTbhP82REp/+P1WSdmTZmd8O5WYtZVoc02rv35DOcOwHIMSKLQYGwtF7ZrDW9dZrR3ysIhIdjURw3Af3a7wuQx7vdWqdA8LYvVCnngyyce8U17OJ/rT8I7SrcLLfTGjNPim5PH1nOY+lidR2pxaCcM4yJLcZ2Kv8IZjshwU/Ph29Ej9i2jek+OKdLIZhKnyctRg7mEIQxjCEIYwhCEMYQhDGMIQhjCEIQxhCEMYwhCGMIRhmwz949dqt7vV44FpmnfqNWdDe/HXuaJ2O4wpLs0Rjr6N/57zNrx5e3//9d0OD75+uz//9s+8wRHsInhktUkOF+aj6XTqLny+htSTHN2yicYBauu6Y3MWlDzfI9p87hQYW69NNKvKbXIaQgGo51EiObVnxxZBD25jOw5vQ8nzbEtnz3FpBi8IUduympzvBAAAAAAAAAAAAAAAAAAAAEBD/At5KuIKGR582wAAAABJRU5ErkJggg==" 



If ($Deadline)
{
    $TimeSpan = $Deadline - [datetime]::Now
}


If ($Base64Image)
{
    $ImageFile = "$env:TEMP\DisplayLogo.png"
    [byte[]]$Bytes = [convert]::FromBase64String($Base64Image)
    [System.IO.File]::WriteAllBytes($ImageFile,$Bytes)
}
 

$null = [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime]
$null = [Windows.Data.Xml.Dom.XmlDocument, Windows.Data.Xml.Dom.XmlDocument, ContentType = WindowsRuntime]


$app =  '{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\WindowsPowerShell\v1.0\powershell.exe'
$AppID = "{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\\WindowsPowerShell\\v1.0\\powershell.exe"
$RegPath = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings'

if (!(Test-Path -Path "$RegPath\$AppId")) {
    $null = New-Item -Path "$RegPath\$AppId" -Force
    $null = New-ItemProperty -Path "$RegPath\$AppId" -Name 'ShowInActionCenter' -Value 1 -PropertyType 'DWORD'
}



[xml]$ToastTemplate = @"
<toast scenario="reminder">
    <visual>
    <binding template="ToastGeneric">
        <text>New Notification</text>
        <text placement="attribution">from the Faronics Help Desk team.</text>        
        <group>
            <subgroup>
                <text hint-style="title" hint-wrap="true" >$Title</text>
            </subgroup>
        </group>
        <group>          
            <subgroup>     
                <text hint-style="subtitle" hint-wrap="true" >$SubtitleText</text>
            </subgroup>
        </group>
        <group>
            <subgroup>     
                <text hint-style="body" hint-wrap="true" >$BodyText</text>
            </subgroup>
        </group>
    </binding>
    </visual>
         <actions>
    <input id="snoozeTime" type="selection" title="Click Snooze to be reminded in:" defaultInput="15">
            <selection id="15" content="15 minutes"/>
            <selection id="60" content="1 hour"/>
            <selection id="240" content="4 hours"/>
            <selection id="480" content="8 hours"/>
        </input>
        <action activationType="system" arguments="snooze" hint-inputId="snoozeTime" content=""/>
      <action content="Dismiss" activationType="protocol" arguments="$url" />
      
    </actions>
 

    <audio src="$AudioSource"/>
</toast>
"@


If ($HeaderFormat -eq "TitleOnly")
{
    $ToastTemplate.toast.visual.binding.group[0].subgroup.InnerXml = "<text hint-style=""title"" hint-wrap=""true"" >$Title</text>"
}
If ($HeaderFormat -eq "ImageOnly")
{
    $ToastTemplate.toast.visual.binding.group[0].subgroup.InnerXml = "<image src=""$ImageFile""/>"
}
If ($HeaderFormat -eq "ImageAndTitle")
{
    $ToastTemplate.toast.visual.binding.group[0].subgroup.InnerXml = "<text hint-style=""title"" hint-wrap=""true"" >$Title</text><image src=""$ImageFile""/>"
}


If ($Deadline)
{
$DeadlineGroups = @"
        <group>
            <subgroup>
                <text hint-style="base" hint-align="left">Watch by</text>
                 <text hint-style="caption" hint-align="left">$(Get-Date -Date $Deadline -Format "dd MMMM yyy HH:mm")</text>
            </subgroup>
            <subgroup>
                <text hint-style="base" hint-align="right">Time Remaining  .</text>
                <text hint-style="caption" hint-align="right">$($TimeSpan.Days) days $($TimeSpan.Hours) hours $($TimeSpan.Minutes) minutes  .</text>
            </subgroup>
        </group>
"@
    $ToastTemplate.toast.visual.binding.InnerXml = $ToastTemplate.toast.visual.binding.InnerXml + $DeadlineGroups

}

$ToastXml = New-Object -TypeName Windows.Data.Xml.Dom.XmlDocument
$ToastXml.LoadXml($ToastTemplate.OuterXml)

[Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier($app).Show($ToastXml) 
