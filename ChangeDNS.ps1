  

param($arg1, $arg2)
$DNSServers = @(
    ([IPAddress]$arg1).IPAddressToString
    ([IPAddress]$arg2).IPAddressToString
)
 
Set-DNSClientServerAddress -InterfaceAlias "Ethernet0" -ServerAddresses $DNSServers
