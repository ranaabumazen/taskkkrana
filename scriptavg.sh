#!/bin/bash
echo "the average of free mem " >> /var/www/html/memavg
cat /var/www/html/meminfo |awk '{totalm +=$1;countm++ }END {print totalm/countm}' >> /var/www/html/memavg
echo "the average of used mem " >> /var/www/html/memavg 
cat /var/www/html/meminfo |awk '{totallm +=$2;countsm++ }END {print totallm/countsm}' >> /var/www/html/memavg && echo "TimeStamp" >>/var/www/html/memavg &&  date +%x_%H:%M:%S >> /var/www/html/memavg

echo "the average of used cpu " >> /var/www/html/cpuavg
cat /var/www/html/cpuinfo | awk '{totalc +=$1;countc++ }END {print totalc/countc}'>> /var/www/html/cpuavg
echo "the average of cpu idle " >> /var/www/html/cpuavg
cat /var/www/html/cpuinfo | awk '{totallc +=$2;countcs++ }END {print totallc/countcs}'>> /var/www/html/cpuavg && echo "TimeStamp" >>/var/www/html/cpuavg &&  date +%x_%H:%M:%S >> /var/www/html/cpuavg
echo "the average of used " >> /var/www/html/diskavg
cat /var/www/html/diskinfo  |awk '{total +=$1;count++ }END {print total/count}' >> /var/www/html/diskavg
echo "the avearge of available" >> /var/www/html/diskavg
cat /var/www/html/diskinfo |awk '{totall +=$1;counts++ }END {print totall/counts}' >> /var/www/html/diskavg && echo "TimeStamp" >>/var/www/html/diskavg &&  date +%x_%H:%M:%S >> /var/www/html/diskavg
