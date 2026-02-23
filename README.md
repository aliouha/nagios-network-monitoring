# 🖥️ Nagios Network Monitoring Project

## Overview
This project implements a complete network monitoring solution using **Nagios Core 4.4.14** installed on an Ubuntu VM (VMware), monitoring a physical Windows 11 machine.

## Architecture
- **Monitoring Server**: Ubuntu 22.04 (VMware VM) — IP: 192.168.1.14
- **Monitored Host**: Windows 11 Physical PC — IP: 192.168.1.7

## Features
- ✅ Real-time monitoring of CPU, RAM, Disk usage
- ✅ Network connectivity checks (Ping, Internet Access)
- ✅ Automated email alerts via Gmail (msmtp)
- ✅ NSClient++ agent on Windows 11
- ✅ NRPE protocol for remote monitoring
- ✅ Web dashboard accessible on port 8080

## Monitored Services
| Service | Host | Tool |
|---------|------|------|
| CPU Load | PC-Windows11 | NSClient++ |
| Memory Usage | PC-Windows11 | NSClient++ |
| Disk C: | PC-Windows11 | NSClient++ |
| Ping | PC-Windows11 | check_ping |
| Internet Access | PC-Windows11 | check_ping (8.8.8.8) |
| Root Partition | localhost (Ubuntu) | check_disk |
| SSH | localhost (Ubuntu) | check_ssh |
| HTTP | localhost (Ubuntu) | check_http |

## Project Structure
```
nagios-network-monitoring/
├── configs/
│   ├── windows_host.cfg    # Windows 11 host & services config
│   ├── commands.cfg        # Custom Nagios commands
│   └── send_mail.sh        # Email notification script
├── docs/
│   └── setup-guide.md      # Installation guide
├── screenshots/            # Dashboard screenshots
└── README.md
```

## Installation
See [Setup Guide](docs/setup-guide.md) for detailed installation steps.

## Technologies
- **Nagios Core** 4.4.14
- **NSClient++** 0.11.8
- **NRPE** protocol
- **msmtp** for email notifications
- **Apache2** web server (port 8080)
- **Ubuntu** 22.04 LTS
- **VMware** Workstation
