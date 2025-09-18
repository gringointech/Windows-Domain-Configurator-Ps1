# marguemat
Clear-Host
Write-Host marguemat
Write-Host
New-SmbShare -Name Perfiles -Path P:\ -FullAccess Todos
New-SmbShare -Name Facturacion -Path V:\ -FullAccess Todos
New-SmbShare -Name Comun -Path O:\ -FullAccess Todos
New-SmbShare -Name Almacen -Path W:\ -FullAccess Todos


New-SmbShare -Name "OCULTAPROBA75$" -Path "U:\proba" -FullAccess "Todos"

