# System Health Checker

A Bash script that monitors and logs the health of a Linux system in real time.
Built as part of my DevOps/Cloud engineering portfolio.

## What It Does

- Displays current **CPU load**
- Shows **memory and swap usage** (total, used, free, cached, available)
- Reports **disk usage** across all mounted drives
- Lists the **top 5 processes** consuming the most CPU
- Shows **system uptime** and load averages
- **Logs all output** to `health_report.log` with a timestamp on every run

## Why I Built This

System monitoring is a core sysadmin and DevOps skill. This project gave me
hands-on experience with Bash scripting, Linux system commands, and log
management — tools used daily in cloud and IT operations roles.

## Technologies Used

- Bash
- Linux (Ubuntu via WSL)
- Git / GitHub

## How to Run It

**Requirements:** Linux or WSL on Windows

**Clone the repo:**
```bash
git clone https://github.com/JohnnyCake-21/system-health-checker.git
cd system-health-checker
```

**Make the script executable:**
```bash
chmod +x health_check.sh
```

**Run it:**
```bash
./health_check.sh
```

**View the log:**
```bash
cat health_report.log
```

## Sample Output
```
========================================
 System Health Report — 2025-04-01 14:32:10
========================================

--- CPU Load ---
%Cpu(s):  3.2 us,  1.0 sy,  0.0 ni, 95.5 id

--- Memory Usage ---
              total        used        free     shared    cache   available
Mem:           7.6G        2.1G        4.2G       120M     1.3G       5.1G
Swap:          2.0G          0B        2.0G

--- Disk Usage ---
Filesystem      Size  Used Avail Use% Mounted on
/dev/sdb        251G   12G  227G   5% /

--- Top 5 Processes by CPU ---
USER       PID  %CPU %MEM    VSZ   RSS COMMAND
root         1   0.0  0.0  22348  1644 init

--- System Uptime ---
 14:32:10 up 2 days,  3:15,  1 user,  load average: 0.10, 0.08, 0.05
```

## Author

**Johnthan Torres**
[GitHub](https://github.com/JohnnyCake-21)