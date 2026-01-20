#Get list of processes
Get-Process

#Get list of services
Get-Service

#Stop a service or process
Stop-Process -Name "notepad" -Force
Stop-Service -Name "wuauserv"

#Start a service
Start-Service -Name "wuauserv"

#Restart a service
Restart-Service -Name "wuauserv"

#Get detailed information about a specific process
Get-Process -Name "notepad" | Format-List *

#Get detailed information about a specific service
Get-Service -Name "wuauserv" | Format-List *

#Set a service to start automatically
Set-Service -Name "wuauserv" -StartupType Automatic

#Set a service to start manually
Set-Service -Name "wuauserv" -StartupType Manual

#Set a service to be disabled
Set-Service -Name "wuauserv" -StartupType Disabled

#Get the status of a specific service
Get-Service -Name "wuauserv" | Select-Object Status 

#Wait for a process to exit
$process = Start-Process -FilePath "notepad.exe" -PassThru
$process.WaitForExit()

#Get the CPU and memory usage of a specific process
Get-Process -Name "notepad" | Select-Object CPU, PM

#Get services that are currently running
Get-Service | Where-Object {$_.Status -eq "Running"}

#Get services that are currently stopped
Get-Service | Where-Object {$_.Status -eq "Stopped"}

#Get processes consuming more than a specific amount of memory (e.g., 100MB)
Get-Process | Where-Object {$_.PM -gt 100MB}

#Get processes consuming more than a specific amount of CPU time (e.g., 1 minute)
Get-Process | Where-Object {$_.CPU -gt 60}

#Restart a process
$process = Get-Process -Name "notepad"
$process | Stop-Process -Force
Start-Process -FilePath "notepad.exe"

#Change the display name of a service
Set-Service -Name "wuauserv" -DisplayName "Windows Update Service"

#Get system information
Get-ComputerInfo    

#Get a list of startup services
Get-CimInstance -ClassName Win32_Service | Where-Object {$_.StartMode -eq "Auto"} | Select-Object Name, DisplayName, State

#Enable a disabled service  
Set-Service -Name "wuauserv" -StartupType Automatic

#Disable a service
Set-Service -Name "wuauserv" -StartupType Disabled

#Get the path of the executable for a specific service
Get-CimInstance -ClassName Win32_Service -Filter "Name='wuauserv'" | Select-Object PathName 

#Get the dependencies of a specific service
Get-Service -Name "wuauserv" | Select-Object DependentServices, ServicesDependedOn  

#Get the services that depend on a specific service
Get-Service -Name "wuauserv" | Select-Object DependentServices