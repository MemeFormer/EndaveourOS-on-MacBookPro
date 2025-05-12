#!/bin/bash

# Create a system report directory
mkdir -p ~/system_report
cd ~/system_report

# System and Hardware Overview
echo "=== System Information ===" | tee system_overview.txt
hostnamectl | tee -a system_overview.txt
echo "" | tee -a system_overview.txt

# Kernel and OS Details
uname -a | tee -a system_overview.txt
cat /etc/os-release | tee -a system_overview.txt
echo "" | tee -a system_overview.txt

# CPU Information
echo "=== CPU Details ===" | tee -a system_overview.txt
lscpu | tee -a system_overview.txt
cat /proc/cpuinfo | grep "model name" | uniq | tee -a system_overview.txt
echo "" | tee -a system_overview.txt

# Memory Information
echo "=== Memory Details ===" | tee -a system_overview.txt
free -h | tee -a system_overview.txt
cat /proc/meminfo | tee -a system_overview.txt
echo "" | tee -a system_overview.txt

# Disk Information
echo "=== Disk Details ===" | tee -a system_overview.txt
lsblk | tee -a system_overview.txt
df -h | tee -a system_overview.txt
echo "" | tee -a system_overview.txt

# Network Interfaces
echo "=== Network Interfaces ===" | tee -a system_overview.txt
ip a | tee -a system_overview.txt
iwconfig | tee -a system_overview.txt
echo "" | tee -a system_overview.txt

# Wireless and Bluetooth
echo "=== Wireless and Bluetooth ===" | tee -a system_overview.txt
rfkill list all | tee -a system_overview.txt
lsusb | grep -iE "bluetooth|wireless" | tee -a system_overview.txt
echo "" | tee -a system_overview.txt

# Graphics Information
echo "=== Graphics Details ===" | tee -a system_overview.txt
lspci | grep -i vga | tee -a system_overview.txt
glxinfo | grep "OpenGL renderer" | tee -a system_overview.txt
echo "" | tee -a system_overview.txt

# Temperature and Sensors
echo "=== Temperatures and Sensors ===" | tee -a system_overview.txt
sensors | tee -a system_overview.txt
echo "" | tee -a system_overview.txt

# Performance Metrics
echo "=== Performance Snapshot ===" | tee -a system_overview.txt
top -b -n 1 | head -n 20 | tee -a system_overview.txt
echo "" | tee -a system_overview.txt

# Power Management
echo "=== Power Management ===" | tee -a system_overview.txt
tlp-stat -s | tee -a system_overview.txt
cat /sys/class/power_supply/BAT0/status | tee -a system_overview.txt
cat /sys/class/power_supply/BAT0/capacity | tee -a system_overview.txt
echo "" | tee -a system_overview.txt

# Kernel Modules
echo "=== Loaded Kernel Modules ===" | tee -a system_overview.txt
lsmod | grep -E "apple|bluetooth|wireless|graphics" | tee -a system_overview.txt

# Compress the report
tar -czvf ~/system_report_$(date +"%Y%m%d_%H%M%S").tar.gz ~/system_report

echo "System report generated in ~/system_report"

