#Get network configuration
Get-NetIPAddress

#Get network adapters
Get-NetAdapter

#Get network adapter statistics
Get-NetAdapterStatistics -Name "Ethernet"

#Enable a network adapter
Enable-NetAdapter -Name "Ethernet"

#Disable a network adapter
Disable-NetAdapter -Name "Ethernet"

#Reset TCP/IP stack
Reset-NetIPInterface -InterfaceAlias "Ethernet" -ResetType Tcpip

#Flush DNS cache
Clear-DnsClientCache

#Set a static IP address
New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress 192.168.1.100 -PrefixLength 24 -DefaultGateway 192.168.1.1   

#Set DNS servers
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses ("8.8.8.8", "8.8.4.4")   

#Get current IP configuration
Get-NetIPConfiguration

#Test network connectivity to a specific IP or domain
Test-Connection -ComputerName "google.com" -Count 4

#Get active network connections
Get-NetTCPConnection | Where-Object {$_.State -eq "Established"}

#Get network shares
Get-SmbShare

#Map a network drive
New-PSDrive -Name "Z" -PSProvider FileSystem -Root "\\Server\Share" -Persist

#Disconnect a mapped network drive
Remove-PSDrive -Name "Z"