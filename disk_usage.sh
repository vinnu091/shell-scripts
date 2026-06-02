#!/bin/bash

echo "Disk Usage Details:"
df -h

echo -e "\n Checking disks above 30%..."

df -h | tail -n +2 | while read line
do
    usage=$(echo "$line" | awk '{print $5}' | tr -d '%')
    partition=$(echo "$line" | awk '{print $6}')

    if [ "$usage" -gt 30 ]
    then
        echo "Disk $partition is using $usage%"

        echo -e "\n Top files/directories consuming space:"
        du -h "$partition" 2>/dev/null | sort -rh | head -5
    fi
done
