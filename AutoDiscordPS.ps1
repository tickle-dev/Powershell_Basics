#time automation script
$TaskName = 'MyScript'
$User= "C:Users\toutb\"
$ScriptPath = "C:\Users\toutbien\contoso\DiscordHelloPS.ps1"

$Trigger= New-ScheduledTaskTrigger -At 12:30 -Daily 
$Action= New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "-executionpolicy bypass -noprofile -file $ScriptPath" 
Register-ScheduledTask -TaskName $TaskName -Trigger $Trigger -User $User -Action $Action -RunLevel Highest -Force