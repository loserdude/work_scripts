# Get logon credentials and connect PowerShell to outlook.com
$LiveCred = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell/ -Credential $LiveCred -Authentication Basic -AllowRedirection
Import-PSSession $Session

#Reads in contents of file (students.txt) and changes mailbox plan to the Default
#Remember to change path to file and file name, as well as mailboxplan depending on whether this is running for current students or graduates
Get-Content C:\Users\cschott\Desktop\students.txt | Set-Mailbox -mailboxplan DefaultMailboxPlan

#Disconnects
Remove-PSSession $Session