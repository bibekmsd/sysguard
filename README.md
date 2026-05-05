# SysGuard

A lightweight Linux System Health & Security Toolkit built using Bash scripting.

SysGuard is a CLI-based utility designed to monitor system performance, inspect processes, analyze network activity, clean temporary files, and perform basic security audits on Linux systems.

This project was built to strengthen Linux, networking, automation, and system engineering skills .

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
- Network Connectivity test(ping) 
- View active listening ports
- Display NETWORK INTERFACES
- ROUTING TABLE
- DNS server

## Cleanup Utility
- Find unused temp file for n days 
- Remove temporary files

## Security Audit
- Recent Successfull Logins
- Recent Failed logins
- Currently active user
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
