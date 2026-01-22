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

#Quick system information script
Write-Host "Computer Name:" $env:COMPUTERNAME
Write-Host "Logged-in User:" $env:USERNAME
Write-Host "OS Version:" (Get-CimInstance Win32_OperatingSystem).Caption
Write-Host "System Uptime:" (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
Write-Host "Total Physical Memory (MB):" ([math]::round((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1MB))
Write-Host "Free Physical Memory (MB):" ([math]::round((Get-CimInstance Win32_OperatingSystem).FreePhysicalMemory / 1MB))
Write-Host "CPU Info:" (Get-CimInstance Win32_Processor).Name
Write-Host "Disk Space Info:"
Get-CimInstance Win32_LogicalDisk | ForEach-Object {
    Write-Host "Drive" $_.DeviceID ": Free Space =" ([math]::round($_.FreeSpace / 1GB)) "GB, Total Size =" ([math]::round($_.Size / 1GB)) "GB"
}

#Check disk space on C: drive
$disk = Get-CimInstance Win32_LogicalDisk -Filter "DeviceID='C:'"
$freeSpaceGB = [math]::Round($disk.FreeSpace / 1GB, 2)
$totalSpaceGB = [math]::Round($disk.Size / 1GB, 2)
Write-Host "C: Drive Free Space:" $freeSpaceGB "GB out of" $totalSpaceGB "GB"