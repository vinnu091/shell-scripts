#!/bin/bash


DATE=$(date +%Y_%m_%d_%H_%M)
tar -czf /home/ubuntu/shell-scripts/backup-$DATE.tar.gz /var/log/nginx/*.log
