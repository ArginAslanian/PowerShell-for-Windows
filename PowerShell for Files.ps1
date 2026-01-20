#Create a New Directory
New-Item -Path C:\Users\YourUsername\Documents\NewFolder -ItemType Directory

#Remove a Directory
Remove-Item -Path C:\Users\YourUsername\Documents\NewFolder

#Copy a Directory
Copy-Item -Path C:\Users\YourUsername\Documents\SourceFolder -Destination C:\Users\YourUsername\Documents\DestinationFolder -Recurse

#Move a Directory
Move-Item -Path C:\Users\YourUsername\Documents\OldFolder -Destination C:\Users\YourUsername\Documents\NewFolder

#Rename a Directory
Rename-Item -Path C:\Users\YourUsername\Documents\OldFolderName -NewName NewFolderName

#Viewing a file Information
Get-Item C:\Users\YourUsername\Documents\example.txt

#Getting file content
Get-Content C:\Users\YourUsername\Documents\example.txt

#Creating a new file
New-Item -Path C:\Users\YourUsername\Documents\newfile.txt -ItemType File

#View it in another window
notepad C:\Users\YourUsername\Documents\example.txt

#To print it
Get-Content C:\Users\YourUsername\Documents\example.txt | Out-Printer

#Delete a file
Remove-Item -Path C:\Users\YourUsername\Documents\example.txt

#Copy a file
Copy-Item -Path C:\Users\YourUsername\Documents\example.txt -Destination C:\Users\YourUsername\Documents\example_copy.txt

#Move a file
Move-Item -Path C:\Users\YourUsername\Documents\example.txt -Destination C:\Users\YourUsername\Desktop\example.txt

#Rename a file
Rename-Item -Path C:\Users\YourUsername\Documents\oldname.txt -NewName newname.txt

#Rename all files in a directory to a text file
Get-ChildItem -File | Rename-Item -NewName { [io.path]::ChangeExtension($_.Name, ".txt") }