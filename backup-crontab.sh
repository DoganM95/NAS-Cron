#!/bin/bash
# Script to backup the current crontab to /homes/cron/.crontab.sh

# Define the backup file location
CRONTAB_BACKUP="/homes/cron/.crontab.sh"

# Create the directory if it doesn't exist
mkdir -p /homes/cron

# Backup the current crontab to the file
crontab -l > $CRONTAB_BACKUP

# Provide feedback to the user
echo "Crontab has been backed up to $CRONTAB_BACKUP"
