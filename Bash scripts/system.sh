#!/bin/bash

#Print out amount of free memory
free -h >> ~/backups/freemem/free_mem.txt

#Print out the current disk usage
du -h >> ~/backups/diskuse/disk_usage.txt

#List all open files
lsof >> ~/backups/openlist/open_list.txt

#Print out free disk space
df -ah >> ~/backups/freedisk/free_disk.txt
