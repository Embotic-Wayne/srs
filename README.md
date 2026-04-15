<<<<<<< HEAD
devops
=======
https://github.com/Embotic-Wayne/srs

# Bash Projects
 Linux Bash projects

## 1. Server Stats
A script that shows basic server performance information, including:
- CPU usage
- Memory usage
- Disk usage
- Top 5 processes by CPU
- Top 5 processes by memory

## 2. Log Archive
A script that compresses a log directory into a timestamped `.tar.gz` archive, stores it in an `archives` folder, and records the archive date and time.

## Run

```bash
chmod +x stats/server-stats.sh
./stats/server-stats.sh

chmod +x log/log-archive.sh
./log/log-archive.sh <log-directory>
>>>>>>> 8b7fe99 (ngnix)
