#!/bin/bash

# Thresholds
CPU_THRESHOLD=80
MEM_THRESHOLD=80
DISK_THRESHOLD=80

# Check CPU usage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print int($2 + $4)}')
if [ $CPU_USAGE -gt $CPU_THRESHOLD ]; then
  echo "ALERT: CPU usage is high: ${CPU_USAGE}%"
else
  echo "CPU usage is normal: ${CPU_USAGE}%"
fi

# Check Memory usage
MEM_USAGE=$(free | awk '/Mem/ {printf("%d", $3/$2 * 100)}')
if [ $MEM_USAGE -gt $MEM_THRESHOLD ]; then
  echo "ALERT: Memory usage is high: ${MEM_USAGE}%"
else
  echo "Memory usage is normal: ${MEM_USAGE}%"
fi

# Check Disk usage (root partition)
DISK_USAGE=$(df / | awk 'END{print int($5)}')
if [ $DISK_USAGE -gt $DISK_THRESHOLD ]; then
  echo "ALERT: Disk usage is high: ${DISK_USAGE}%"
else
  echo "Disk usage is normal: ${DISK_USAGE}%"
fi

# List top 5 processes by CPU usage
echo "Top 5 CPU-consuming processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
