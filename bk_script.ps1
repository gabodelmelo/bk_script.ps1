# Path to 7-Zip. Adjust this variable if 7-Zip is not in the PATH.
$7zipPath = "C:\Program Files\7-Zip\7z.exe"

# Backup destination path
$backupDestination = "C:\Backups"  # Adjust this path to where you want to save the backups

# Folder or drive to back up
$backupSource = Read-Host -Prompt "Enter the path of the folder or drive to back up (e.g., C:\Folder or D:\)"

# Backup file name based on the current date and time
$date = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$backupFileName = "Backup_$($date).7z"
$backupFilePath = Join-Path -Path $backupDestination -ChildPath $backupFileName

# Prompt the user for a password for the compressed file
$password = Read-Host -Prompt "Enter a password for the compressed file (or leave blank for no password)"

# Create the destination folder if it does not exist
if (!(Test-Path -Path $backupDestination)) {
    New-Item -ItemType Directory -Path $backupDestination | Out-Null
}

# Build the arguments for 7-Zip
$arguments = @("a", "-t7z", "$backupFilePath", "$backupSource", "-mx=9")

# If a password is provided, add it to the arguments
if ($password -ne "") {
    $arguments += "-p$password"
}

# Start the 7-Zip process
Write-Host "Starting backup of $backupSource to $backupFilePath..."
$process = Start-Process -FilePath $7zipPath -ArgumentList $arguments -NoNewWindow -PassThru

# Wait for the process to complete
$process.WaitForExit()

# Confirm success
if (Test-Path -Path $backupFilePath) {
    Write-Host "Backup completed successfully: $backupFilePath"
} else {
    Write-Host "Error creating the backup."
}
