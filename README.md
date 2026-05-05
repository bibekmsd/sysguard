# SysGuard

A lightweight Linux System Health & Security Toolkit built using Bash scripting.

SysGuard is a CLI-based utility designed to monitor system performance, inspect processes, analyze network activity, clean temporary files, and perform basic security audits on Linux systems.

This project was built to strengthen Linux, networking, automation, and system engineering skills.

---

# Features

## Disk Usage Analyzer
- View system disk usage
- Detect large directories
- Analyze storage consumption

## Process Monitor
- Top memory-consuming processes
- Top CPU-consuming processes
- Hung process detection (D state)
- Zombie process detection

## Network Connections
- Network connectivity test (ping)
- View active listening ports
- Display network interfaces
- Display routing table
- Display DNS servers

## Cleanup Utility
- Find unused temporary files for N days
- Remove temporary files

## Security Audit
- Recent successful logins
- Recent failed logins
- Currently active users
- Detect world-writable files

---

# Project Structure

```text
sysguard/
│
├── sysguard.sh
├── modules/
│   ├── disk.sh
│   ├── process.sh
│   ├── network.sh
│   ├── cleanup.sh
│   └── security.sh
│
├── logs/
│
└── README.md
```

---

# Technologies Used

- Bash Scripting
- Linux System Utilities
- CLI-based System Monitoring
- Linux Networking Tools
- Shell Automation

---

# Linux Commands Used

| Command | Purpose |
|---|---|
| ps | Process monitoring |
| top | System performance monitoring |
| ss | Socket and network inspection |
| ping | Network connectivity testing |
| ip | Network interface and routing information |
| df | Disk space usage |
| du | Directory size analysis |
| find | Search files and directories |
| awk | Text processing |
| grep | Pattern filtering |
| sort | Sorting output |
| last | Display login history |
| who | Display active sessions |


---

# How to Run

## Clone Repository

```bash
git clone https://github.com/yourusername/sysguard.git
```

## Enter Project Directory

```bash
cd sysguard
```

## Give Execute Permission

```bash
chmod +x sysguard.sh
chmod +x modules/*.sh
```

## Run SysGuard

```bash
./sysguard.sh
```


---

# Learning Goals

This project was created to improve:
- Bash scripting
- Linux system administration
- Process management
- Networking fundamentals
- Security auditing
- Automation
- CLI application design

---

# Author

Bibek Gautam

Computer Engineering Student  
