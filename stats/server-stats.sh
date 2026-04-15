#!/bin/bash

echo "====================================="
echo "       SERVER PERFORMANCE STATS      "
echo "====================================="
echo

echo "1. Total CPU Usage"
top -bn1 | awk '/Cpu\(s\)/ {printf "CPU Used: %.2f%%\n", 100 - $8}'
echo

echo "2. Total Memory Usage"
free -m | awk 'NR==2 {
    used=$3
    total=$2
    free=$4
    printf "Used: %sMB / Total: %sMB (%.2f%%)\nFree: %sMB\n", used, total, used*100/total, free
}'
echo

echo "3. Total Disk Usage"
df -h / | awk 'NR==2 {
    printf "Used: %s / Total: %s (%s)\nFree: %s\n", $3, $2, $5, $4
}'
echo

echo "4. Top 5 Processes by CPU Usage"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo

echo "5. Top 5 Processes by Memory Usage"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
echo

echo "6. Additional Stats"
echo "Uptime: $(uptime -p)"
echo "Load Average:$(uptime | awk -F'load average:' '{print $2}')"
echo "Logged In Users:"
who
echo
