#!/data/data/com.termux/files/usr/bin/bash

LOG_FILE="$HOME/Threat-Hunting-Lab/logs/auth.log"
RULE_FILE="$HOME/Threat-Hunting-Lab/rules/malicious_ips.txt"

echo "================================="
echo " SUSPICIOUS IP DETECTION"
echo "================================="

MATCHES=$(grep -Ff "$RULE_FILE" "$LOG_FILE")

if [ -n "$MATCHES" ]; then
    echo "$MATCHES"
    echo ""
    echo "[HIGH ALERT] Known malicious IP detected"
else
    echo "No malicious IPs found"
fi
