 $name=Read-Host "Target"
 $port=Read-Host "Port Numbers"
 $port.split(',') | Foreach-Object -Process {If (($a=Test-NetConnection $name -Port $_ -WarningAction SilentlyContinue).tcpTestSucceeded -eq $true) 
 {Write-Host $a.Computername -ForegroundColor Green " ==> " $a.RemotePort " : " " Open"} 
 else 
 {Write-Host $a.Computername -ForegroundColor Red   " ==> " $a.RemotePort " : " "Closed"}
 }