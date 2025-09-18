Write-Host
$password = "abc123." | ConvertTo-SecureString -AsPlainText -Force
New-ADUser DOMI7 -Path "OU=PRODUCCION,OU=PERSONAL,DC=tupyme31,DC=ga" -DisplayName "DOMI7" -AccountPassword $password -HomeDirectory \\WBASE\Comun -HomeDrive L: -ProfilePath \\WBASE\Perfiles\domi7 -PasswordNeverExpires $true -Enabled $true
