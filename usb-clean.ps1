# How to clean a USB drive
# For example, cleaning a bootable USB drive back to a normal state

# Run PowerShell/cmd as administrator and execute the following commands:

diskpart                    # Start the DiskPart utility

list disk                   # List all disks to identify the USB drive (e.g., Disk 1)

select disk X               # Select the USB drive (replace 'X' with the correct disk number)

clean                       # Remove all partitions and data from the selected disk

create partition primary    # Create a new primary partition on the USB drive

format fs=fat32 quick       # Format the partition with the FAT32 file system (If less than 32GB)
format fs=exfat quick       # Alternatively, format with the exFAT file system (If larger than 32GB)

assign                      # Assign a drive letter to the USB drive

exit