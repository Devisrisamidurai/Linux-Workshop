#!/bin/bash

set -x

echo "=============================="
echo "  System Performance Report"
echo "=============================="

# Uptime
echo -e "\n📌 System Uptime:"
uptime

# CPU Usage
echo -e "\n🚀 CPU Usage:"
top -bn1 | grep "Cpu(s)"

# Memory Usage
echo -e "\n📊 Memory Usage:"
free -h

# Disk Usage
echo -e "\n💾 Disk Usage:"
df -h

# Running Processes
echo -e "\n🔍 Top Running Processes:"
ps aux --sort=-%mem | head -n 10

# Network Information
echo -e "\n🌐 Network Information:"
ip a | grep inet

echo -e "\n✅ Report Generated Successfully!"

