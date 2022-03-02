#!/bin/bash

echo "First bash script, kinda nervous." >> /home/sysadmin/Scripts/results.txt
echo -e "Today is: $(date)\n" >> /home/sysadmin/Scripts/results.txt
echo -e "This system's info is as follows: $(uname -a)\n" >> /home/sysadmin/Scripts/results.txt
echo  "The Machine info is as follows:" >> /home/sysadmin/Scripts/results.txt
echo $MACHTYPE >> /home/sysadmin/Scripts/results.txt
echo "IP address is: $(ip addr | grep inet | tail -3 | head -1)" >> /home/sysadmin/Scripts/results.txt
echo -e "The hostname is $(hostname)\n" >> /home/sysadmin/Scripts/results.txt
echo "The DNS servers are listed below:" >> /home/sysadmin/Scripts/results.txt
tail -3 /etc/resolv.conf >> /home/sysadmin/Scripts/results.txt
echo -e "\nAvailable Memory: $(free -h)" >> /home/sysadmin/Scripts/results.txt
echo -e "\nDisk Usage:" >> /home/sysadmin/Scripts/results.txt
df -h >> /home/sysadmin/Scripts/results.txt
echo -e "\nLogged on users $(who -a)" >> /home/sysadmin/Scripts/results.txt
echo -e "\nExecutable Home files:" >> /home/sysadmin/Scripts/results.txt
find /home/sysadmin -type f -perm 777 >> /home/sysadmin/Scripts/results.txt 
echo -e "\nTop 10 processes: " >> /home/sysadmin/Scripts/results.txt
ps aux -m | awk -F" " '{print $1,$2,$3,$4,$11}' | head >> /home/sysadmin/Scripts/results.txt
