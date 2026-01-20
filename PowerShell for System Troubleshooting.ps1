#Get system information
Get-ComputerInfo

#Get event logs
Get-EventLog -LogName System -Newest 20

#Get network configuration
Get-NetIPAddress

#Get DNS server addresses
Get-DnsClientServerAddress

#Perform a DNS lookup for a specific domain
Resolve-DnsName google.com

#Queries modern Windows event logs for application-level issues
Get-WinEvent -LogName Application -MaxEvents 50

#Get services that are not running
Get-Service | Where-Object {$_.Status -ne "Running"}

#Get top 10 processes by CPU usage
Get-Process | Sort-Object CPU -Descending | Select-Object -First 10

#Get top 10 processes by Memory usage
Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 10

#Test network connectivity to a specific IP or domain
Test-Connection google.com -Count 4

#Get network adapters that are not up
Get-NetAdapter | Where-Object {$_.Status -ne "Up"}

#Get disk information
Get-Disk

#Get volume information
Get-Volume

#Get physical disk information
Get-PhysicalDisk

#Get hotfixes installed on the system
Get-HotFix

#Run System File Checker to scan and repair system files
sfc /scannow

#Run Deployment Imaging Service and Management Tool to check health of the system image
DISM /Online /Cleanup-Image /CheckHealth

#Run Deployment Imaging Service and Management Tool to scan the system image for corruption
DISM /Online /Cleanup-Image /ScanHealth

#Run Deployment Imaging Service and Management Tool to repair the system image
DISM /Online /Cleanup-Image /RestoreHealth

#Get scheduled tasks that are not ready
Get-ScheduledTask | Where-Object {$_.State -ne "Ready"}

#Get Windows version and build information from the registry
Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion"

#Get operating system information
Get-WmiObject Win32_OperatingSystem

#Get disk information
Get-WmiObject -Class Win32_LogicalDisk

#Get list of startup programs
Get-CimInstance Win32_StartupCommand

#Display active TCP connections
Netstat

#Show all active connections and listening ports
Netstat -n

#Display all active TCP/UDP connections and listening ports in numeric format
Netstat -an 

#Show active connections with the Process ID (PID) that owns each port
Netstat -ano 
