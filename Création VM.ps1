New-VMSwitch -name "LABOPS" -SwitchType Private

cd c:\
cd VM
md LABOPS
cd LABOPS
md SRV-AD01
cd SRV-AD01
New-VHD -Path .\SRV-AD01-DISK1-DIFF.vhdx -ParentPath "C:\PARENT\TEST-SYSPREP.vhdx" -Differencing
New-VM -Name "SRV-AD01" -Generation 2 -MemoryStartupBytes 4GB -VHDPath .\SRV-AD01-DISK1-DIFF.vhdx -Path .\ -SwitchName "LABOPS"

Set-VMMemory -VMName SRV-AD01 -DynamicMemoryEnabled $false
Set-VMProcessor -VMName SRV-AD01 -Count 2

|

cd c:\VM\LABOPS
md SRV-Sharepooint01
cd SRV-Sharepooint01
New-VHD -Path .\SRV-Sharepooint01-DISK1-DIFF.vhdx -ParentPath "C:\PARENT\TEST-SYSPREP.vhdx" -Differencing
New-VM -Name "SRV-Sharepooint01" -Generation 2 -MemoryStartupBytes 8GB -VHDPath .\SRV-Sharepooint01-DISK1-DIFF.vhdx -Path .\ -SwitchName "LABOPS"
Set-VMMemory -VMName SRV-Sharepooint01 -DynamicMemoryEnabled $false
Set-VMProcessor -VMName SRV-Sharepooint01 -Count 2

|

cd c:\VM\LABOPS
md SRV-SQL01
cd SRV-SQL01
New-VHD -Path .\SRV-SQL01-DISK1-DIFF.vhdx -ParentPath "C:\PARENT\TEST-SYSPREP.vhdx" -Differencing
New-VM -Name "SRV-SQL01" -Generation 2 -MemoryStartupBytes 16GB -VHDPath .\SRV-SQL01-DISK1-DIFF.vhdx -Path .\ -SwitchName "LABOPS"
Set-VMMemory -VMName SRV-SQL01 -DynamicMemoryEnabled $false
Set-VMProcessor -VMName SRV-SQL01 -Count 2

|

