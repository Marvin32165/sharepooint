SRV-AD01

Get-NetAdapter
New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress 172.16.0.1 -PrefixLength 24 -DefaultGateway 172.16.0.254
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses 172.16.0.1
Disable-NetAdapterBinding -name "Ethernet" -componentID ms_tcpip6
Rename-Computer -NewName "SRV-AD01" -restart

Install-WindowsFeature AD-Domain-Services, DNS -IncludeManagementTools

Install-ADDSForest -DomainName "orion.local" -DomainNetbiosName "ORION" -InstallDns

SRV-Sharepooint01

Get-NetAdapter
New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress 172.16.0.2 -PrefixLength 24 -DefaultGateway 172.16.0.254
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses 172.16.0.1
Disable-NetAdapterBinding -name "Ethernet" -componentID ms_tcpip6
Rename-Computer -NewName "SRV-Sharepooint01" -restart

SRV-SQL01

Get-NetAdapter
New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress 172.16.0.3 -PrefixLength 24 -DefaultGateway 172.16.0.254
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses 172.16.0.1
Disable-NetAdapterBinding -name "Ethernet" -componentID ms_tcpip6
Rename-Computer -NewName "SRV-SQL01" -restart
