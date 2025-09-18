# marguemat
Clear-Host
Write-Host marguemat
Write-Host
New-ADOrganizationalUnit -Name Personal -Path "DC=tupyme31,DC=ga"
New-ADOrganizationalUnit -Name Ordenadores -Path "DC=tupyme31,DC=ga"

New-ADOrganizationalUnit -Name Facturacion -Path "OU=PERSONAL,DC=tupyme31,DC=ga"
New-ADOrganizationalUnit -Name Almacen -Path "OU=PERSONAL,DC=tupyme31,DC=ga"
New-ADOrganizationalUnit -Name Empleados -Path "OU=PERSONAL,DC=tupyme31,DC=ga"
New-ADOrganizationalUnit -Name Jefes -Path "OU=PERSONAL,DC=tupyme31,DC=ga"

New-ADOrganizationalUnit -Name Operarios -Path "OU=JEFES,OU=PERSONAL,DC=tupyme31,DC=ga"
New-ADOrganizationalUnit -Name Directores -Path "OU=PERSONAL,DC=tupyme31,DC=ga"

pause
