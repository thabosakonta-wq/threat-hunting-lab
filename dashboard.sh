#!/data/data/com.termux/files/usr/bin/bash

LOG_FILE="$HOME/Threat-Hunting-Lab/logs/auth.log"

FAILED=$(grep -c "Failed password" "$LOG_FILE")

BRUTE=$(grep "Failed password" "$LOG_FILE" \
| awk '{print $NF}' \
| sort \
| uniq -c \
| awk '$1 >= 5 {count++} END {print count+0}')

SUSPICIOUS=$(grep -Ff "$HOME/Threat-Hunting-Lab/rules/malicious_ips.txt" "$LOG_FILE" | wc -l)

PRIV=$(grep -E "sudo|useradd|passwd|su root" "$LOG_FILE" | wc -l)

clear

echo "===================================="
echo "   THREAT HUNTING DASHBOARD"
echo "===================================="
echo ""
echo "Failed Logins          : $FAILED"
echo "Brute Force Alerts     : $BRUTE"
echo "Suspicious IP Events   : $SUSPICIOUS"
echo "Privilege Escalations  : $PRIV"
echo ""
echo "===================================="
