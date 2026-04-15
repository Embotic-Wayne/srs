#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./log-archive.sh <log-directory>"
    exit 1
fi

LOG_DIR=$1

if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Directory '$LOG_DIR' does not exist."
    exit 1
fi

ARCHIVE_DIR="archives"
mkdir -p "$ARCHIVE_DIR"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_FILE="$ARCHIVE_DIR/logs_archive_$TIMESTAMP.tar.gz"

tar -czf "$ARCHIVE_FILE" "$LOG_DIR"

echo "Archived $LOG_DIR to $ARCHIVE_FILE on $(date)" >> archive_log.txt
echo "Archive created successfully: $ARCHIVE_FILE"
