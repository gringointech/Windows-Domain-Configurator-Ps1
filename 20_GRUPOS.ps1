# marguemat
Clear-Host
Write-Host marguemat
Write-Host
New-ADGroup -Name G-Facturacion -GroupScope Global -Path "OU=FACTURACION,OU=PERSONAL,DC=tupyme31,DC=ga"
New-ADGroup -Name G-Almacen -GroupScope Global -Path "OU=ALMACEN,OU=PERSONAL,DC=tupyme31,DC=ga"
New-ADGroup -Name G-Empleados -GroupScope Global -Path "OU=EMPLEADOS,OU=PERSONAL,DC=tupyme31,DC=ga"
New-ADGroup -Name G-Jefes -GroupScope Global -Path "OU=JEFES,OU=PERSONAL,DC=tupyme31,DC=ga"
New-ADGroup -Name G-Operarios -GroupScope Global -Path "OU=OPERARIOS,OU=JEFES,OU=PERSONAL,DC=tupyme31,DC=ga"
New-ADGroup -Name G-Directores -GroupScope Global -Path "OU=DIRECTORES,OU=PERSONAL,DC=tupyme31,DC=ga"

pause