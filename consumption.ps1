write-host "Top 10 programs by memory usage:"
Get-Process | sort-object -Descending WS | select-object -first 10
write-host "Top 10 programs by CPU usage:"
Get-Process | sort-object -Descending CPU | select-object -first 10
write-host "10 newest System log errors:"
get-eventlog -logname System -newest 10 -entrytype error
write-host "10 newest Application log errors:"
get-eventlog -logname Application -newest 10 -entrytype error
