#!/bin/bash

# ─────────────────────────────────────────
#  System Health Checker
#  Author: Johnthan Torres
#  Description: Monitors CPU, memory, disk,
#  and running services, logs results to file
# ─────────────────────────────────────────

LOGFILE="health_report.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "========================================" | tee -a $LOGFILE
echo " System Health Report — $DATE" | tee -a $LOGFILE
echo "========================================" | tee -a $LOGFILE

# CPU Load
echo "" | tee -a $LOGFILE
echo "--- CPU Load ---" | tee -a $LOGFILE
top -bn1 | grep "Cpu(s)" | tee -a $LOGFILE

# Memory Usage
echo "" | tee -a $LOGFILE
echo "--- Memory Usage ---" | tee -a $LOGFILE
free -h | tee -a $LOGFILE

# Disk Usage
echo "" | tee -a $LOGFILE
echo "--- Disk Usage ---" | tee -a $LOGFILE
df -h | tee -a $LOGFILE

# Top 5 Processes by CPU
echo "" | tee -a $LOGFILE
echo "--- Top 5 Processes by CPU ---" | tee -a $LOGFILE
ps aux --sort=-%cpu | head -6 | tee -a $LOGFILE

# Uptime
echo "" | tee -a $LOGFILE
echo "--- System Uptime ---" | tee -a $LOGFILE
uptime | tee -a $LOGFILE

echo "" | tee -a $LOGFILE
echo "Report saved to $LOGFILE"