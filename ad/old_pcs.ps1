Import-Module ActiveDirectory
$howold = Read-Host "How old do you want the computer accounts to be? (in days)"
$d = [DateTime]::Today.AddDays(-$howold)
Get-ADComputer -Filter 'PasswordLastSet -lt $d' -Properties PasswordLastSet | sort Name | Format-Table -AutoSize Name,PasswordLastSet | Out-File old-pc.txt