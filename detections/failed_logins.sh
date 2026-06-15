#!/data/data/com.termux/files/usr/bin/bash

LOG_FILE="$HOME/Threat-Hunting-Lab/logs/auth.log"

echo "================================="
echo " FAILED LOGIN DETECTION"
echo "================================="

COUNT=$(grep -c "Failed password" "$LOG_FILE")

echo ""
echo "Failed Login Events: $COUNT"

if [ "$COUNT" -gt 0 ]; then
    echo ""
    echo "[ALERT] Failed login attempts detected"
fi
