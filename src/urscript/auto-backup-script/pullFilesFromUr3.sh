#!/bin/bash

# Configuration
USER=root
HOST=10.3.3.14
SRC_DIR=/programs/mqtt-ur3-bridge

# Get the directory of the current script
SCRIPT_DIR=$(dirname "$0")

# Navigate to the repository root (two levels up from auto-backup-script)
cd "$SCRIPT_DIR/../.." || {
    echo "Error: Cannot navigate to repository root"
    exit 1
}

# Set the destination directory for backups
DEST_DIR=$(pwd)/urscript/backup

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR" || {
    echo "Error: Cannot create destination directory $DEST_DIR"
    exit 1
}

# Perform the SCP operation with error checking
echo "Backing up files from $USER@$HOST:$SRC_DIR to $DEST_DIR"
if scp -r "$USER@$HOST:$SRC_DIR" "$DEST_DIR"; then
    echo "Backup completed successfully"
else
    echo "Error: SCP operation failed"
    exit 1
fi