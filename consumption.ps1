write-host "Top 10 programs by memory usage:"
Get-Process | sort-object -Descending WS | select-object -first 10
write-host "Top 10 programs by CPU usage:"
Get-Process | sort-object -Descending CPU | select-object -first 10
write-host "5 newest System log errors:"
get-eventlog -logname System -newest 5 -entrytype error
write-host "5 newest Application log errors:"
get-eventlog -logname Application -newest 5 -entrytype error
