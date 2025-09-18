# marguemat
Clear-Host
Write-Host marguemat
Write-Host
$password = "abc123." | ConvertTo-SecureString -AsPlainText -Force
New-ADUser juan -Path "OU=JEFES,OU=PERSONAL,DC=tupyme31,DC=ga" -DisplayName "Juan Mario" -AccountPassword $password -HomeDirectory \\WBASE\Comun -HomeDrive L: -ProfilePath \\WBASE\Perfiles\juan -PasswordNeverExpires $true -Enabled $true
Add-ADGroupMember G-Jefes juan

New-ADUser Antonio -Path "OU=EMPLEADOS,OU=PERSONAL,DC=tupyme31,DC=ga" -DisplayName "Antonio Afonso" -AccountPassword $password -HomeDirectory \\WBASE\Comun\Empleados -HomeDrive L: -ProfilePath \\WBASE\Perfiles\Antonio -PasswordNeverExpires $true -Enabled $true
Add-ADGroupMember G-Empleados Antonio

New-ADUser Matheus -Path "OU=ALMACEN,OU=PERSONAL,DC=tupyme31,DC=ga" -DisplayName "Matheus Guerra" -AccountPassword $password -HomeDirectory \\WBASE\Almacen -HomeDrive L: -ProfilePath \\WBASE\Perfiles\Matheus -PasswordNeverExpires $true -Enabled $true
Add-ADGroupMember G-Almacen Matheus

New-ADUser Marguemat -Path "OU=FACTURACION,OU=PERSONAL,DC=tupyme31,DC=ga" -DisplayName " Marguemat " -AccountPassword $password -HomeDirectory \\WBASE\Facturacion -HomeDrive L: -ProfilePath \\WBASE\Perfiles\Marguemat -PasswordNeverExpires $true -Enabled $true
Add-ADGroupMember G-Facturacion Marguemat
Add-ADGroupMember G-Directores Marguemat

New-ADUser Pablo -Path "OU=OPERARIOS,OU=JEFES,OU=PERSONAL,DC=tupyme31,DC=ga" -DisplayName "Pablo Luis" -AccountPassword $password -HomeDirectory \\WBASE\Comun\Empleados -HomeDrive L: -ProfilePath \\WBASE\Perfiles\Pablo -PasswordNeverExpires $true -Enabled $true
Add-ADGroupMember G-Operarios Pablo
Add-ADGroupMember G-Directores Pablo

pause




