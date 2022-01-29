write-host "Top 10 programs by memory usage:"
Get-Process | sort-object -Descending WS | select-object -first 10
write-host "Top 10 programs by CPU usage:"
Get-Process | sort-object -Descending CPU | select-object -first 10
