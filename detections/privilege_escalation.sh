#!/data/data/com.termux/files/usr/bin/bash

LOG_FILE="$HOME/Threat-Hunting-Lab/logs/auth.log"

echo "================================="
echo " PRIVILEGE ESCALATION DETECTION"
echo "================================="

MATCHES=$(grep -E "sudo|useradd|passwd|su root" "$LOG_FILE")

if [ -n "$MATCHES" ]; then
    echo "$MATCHES"
    echo ""
    echo "[MEDIUM ALERT] Privilege escalation activity detected"
else
    echo "No privilege escalation activity detected"
fi
