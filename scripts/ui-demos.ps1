#display a table below and output to the host.
$users = Get-ADUser -Filter * -Properties DisplayName, SamAccountName, UserPrincipalName, Enabled, LastLogonDate | Sort-Object -Property DisplayName
$users | Out-GridView -Title "Users" -PassThru | Out-Host

