#!/bin/bash

DATE=$(date +%Y_%m_%d_%H_%M)
LOGFILE="/home/ubuntu/shell-scripts/LOGFILE.log"
echo "--------------------">>$LOGFILE
echo -e "\nSYSTEM USAGE REPORT-$DATE">>$LOGFILE
echo "--------------------">>$LOGFILE

#cpu usage
echo "CPU USAGE">>$LOGFILE
top -bn1|grep "Cpu(s)">>$LOGFILE


# Memory Usage
echo -e "\nMemory Usage:" >>$LOGFILE
free -h >> $LOGFILE

# Disk Usage
echo -e "\nDisk Usage:" >>$LOGFILE
df -h >>$LOGFILE

echo "" >>$LOGFILE
