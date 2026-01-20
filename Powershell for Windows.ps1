#Change Directory
Set-Location C:\Users\YourUsername\Documents

#Get Current Directory
Get-Location

#List all local users
Get-LocalUser

#List all local administrators group    
Get-LocalGroupMember -Group "Administrators"

# Find apps with an available update
winget upgrade

# Update all apps that have an available update
winget upgrade --all

# Update a specific app (replace 'AppName' with the actual name of the app)
winget upgrade --id AppName

# Example: Update Google Chrome
winget upgrade --id Google.Chrome

#Listing All Drives
Get-PSDrive 

#List Drives with File System
Get-PSDrive -PSProvider FileSystem

#Get Detailed Information about a Specific Drive (e.g., C:)
Get-PSDrive -Name C

#Get Free Space of a Specific Drive (e.g., C:)
(Get-PSDrive -Name C).Free

#Get Used Space of a Specific Drive (e.g., C:)
(Get-PSDrive -Name C).Used

#Get Total Size of a Specific Drive (e.g., C:)
(Get-PSDrive -Name C).Used + (Get-PSDrive -Name C).Free
(Get-PSDrive -Name C).Size

#Convert Bytes to Gigabytes for Free Space of a Specific Drive (e.g., C:)
$freeBytes = (Get-PSDrive -Name C).Free
$freeGB = [math]::Round($freeBytes / 1GB, 2)
$freeGB

#Convert Bytes to Gigabytes for Used Space of a Specific Drive (e.g., C:)
$usedBytes = (Get-PSDrive -Name C).Used
$usedGB = [math]::Round($usedBytes / 1GB, 2)
$usedGB

#Convert Bytes to Gigabytes for Total Size of a Specific Drive (e.g., C:)
$totalBytes = (Get-PSDrive -Name C).Size
$totalGB = [math]::Round($totalBytes / 1GB, 2)
$totalGB

#Get Used Space Percentage of a Specific Drive (e.g., C:)
$drive = Get-PSDrive -Name C
($drive.Used / $drive.Size) * 100

#Get Free Space Percentage of a Specific Drive (e.g., C:)
$drive = Get-PSDrive -Name C
($drive.Free / $drive.Size) * 100

#Listing Files in the directory
Get-ChildItem C:\

#Listing Files with specific extension (e.g., .txt files)
Get-ChildItem C:\ -Filter *.txt

#Scan for malware using Windows Defender
Start-MpScan -ScanType FullScan

#Get installed software
Get-WmiObject -Class Win32_Product

#Get disk information
Get-WmiObject -Class Win32_LogicalDisk