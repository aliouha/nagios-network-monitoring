# Setup Guide — Nagios Network Monitoring

## Prerequisites
- Ubuntu 22.04 LTS (VM or physical)
- VMware Workstation
- Windows 11 machine on the same network

## 1. Install Nagios Core
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y autoconf gcc libc6 make wget unzip apache2 php libapache2-mod-php libgd-dev
wget https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.4.14.tar.gz
tar -xzf nagios-4.4.14.tar.gz
cd nagios-4.4.14
sudo ./configure --with-command-group=nagcmd
sudo make all && sudo make install
```

## 2. Install NSClient++ on Windows 11
- Download from: https://github.com/mickem/nscp/releases
- Allow host IP in `nsclient.ini`
- Open port 5666 in Windows Firewall

## 3. Configure Email Notifications
- Install msmtp: `sudo apt install msmtp msmtp-mta mailutils -y`
- Configure Gmail App Password
- Copy config to `/home/nagios/.msmtprc`

## 4. Access Dashboard
```
http://<VM_IP>:8080/nagios
```
Login: `nagiosadmin`
