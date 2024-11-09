# bk_script.ps1

## Overview

  This project is a PowerShell script designed to automate the process of creating backups of specific folders or entire drives. The purpose is to provide a quick and reliable method for system administrators or users to perform secure backups with compression using 7-Zip, allowing for password-protected archives and flexible backup locations. The project was initiated to simplify routine data backup tasks, reduce human error, and make the process repeatable and efficient.

## Key Objectives
  The primary objectives of this project are:

  To automate folder or disk backups on a Windows system using PowerShell and 7-Zip.
  To enable password protection for compressed backups.
  To ensure the backup files are compressed in .7z format, which is efficient in terms of file size.
  To create a straightforward, user-friendly experience that prompts for the folder path, backup destination, and optional password.
  
## Steps Taken
  
  - Planning: Identified requirements for a reliable, password-protected backup process and chose 7-Zip for its strong compression and encryption capabilities.
  - Script Development:
        Defined PowerShell variables for the 7-Zip executable path, backup source, and destination.
        Prompted the user to input the folder or drive path for backup and the desired password for encryption.
        Created logic to format a unique backup file name based on the current date and time.
        Configured the script to create the backup destination folder automatically if it doesn't exist.
  - Testing and Refinement:
        Tested the script on multiple folder paths to ensure correct operation.
        Checked the output to confirm that backups were properly created, compressed, and stored with the specified password.
        Refined the script to use Start-Process for more reliable command handling.
  
## Outcome
  
  The project was successful in achieving its objectives. The script effectively compresses and saves specified folders or drives with optional password protection. The backup files are stored with unique names based on the timestamp, making it easy to distinguish between different backup points. This solution provides a convenient, secure way for administrators and users to perform regular backups.
