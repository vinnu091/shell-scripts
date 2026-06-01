#!/bin/bash

DATE=$(date +%Y-%m-%d-%H-%M)

BACKUP_DIR="$HOME/ubuntu/backup"
FILE="/var/log/syslog"

mkdir -p "$BACKUP_DIR"

grep -i "error" "$FILE" > "$BACKUP_DIR/syslog-$DATE.log"

ls -tp "$BACKUP_DIR"/syslog-*.log | tail -n +8 | xargs -r rm --

echo "Backup completed successfully"
