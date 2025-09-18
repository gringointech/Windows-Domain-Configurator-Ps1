# marguemat
Clear-Host
Write-Host marguemat
Write-Host
Initialize-Disk 1
New-Partition -DiskNumber 1 -DriveLetter P -Size 100MB
Format-Volume -DriveLetter P -FileSystem NTFS -NewFileSystemLabel "Perfiles" -Confirm:$false
New-Partition -DiskNumber 1 -DriveLetter V -Size 100MB
Format-Volume -DriveLetter V -FileSystem NTFS -NewFileSystemLabel "Facturacion" -Confirm:$false
New-Partition -DiskNumber 1 -DriveLetter O -Size 100MB
Format-Volume -DriveLetter O -FileSystem NTFS -NewFileSystemLabel "Comun" -Confirm:$false
New-Partition -DiskNumber 1 -DriveLetter W -Size 100MB
Format-Volume -DriveLetter W -FileSystem NTFS -NewFileSystemLabel "Almacen" -Confirm:$false

New-Partition -DiskNumber 1 -DriveLetter U -Size 100MB
Format-Volume -DriveLetter U -FileSystem NTFS -NewFileSystemLabel "proba" -Confirm:$false
