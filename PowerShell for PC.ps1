#Get system information
Get-ComputerInfo

#Get event logs
Get-EventLog -LogName System -Newest 10

#Get network configuration
Get-NetIPAddress

#Get installed software
Get-WmiObject -Class Win32_Product

#Get disk information
Get-WmiObject -Class Win32_LogicalDisk