# marguemat
Clear-Host
Write-Host marguemat
Write-Host
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
Install-ADDSForest -DomainMode "Win2012" -ForestMode "Win2012" -DomainName "tupyme31.ga" -DomainNetbiosName "tupyme31" -InstallDns:$true -CreateDnsDelegation:$false -DatabasePath "C:\Windows\NTDS" -LogPath "C:\Windows\NTDS" -SysvolPath "C:\Windows\SYSVOL" -NoRebootOnCompletion:$false -Force:$true

pause