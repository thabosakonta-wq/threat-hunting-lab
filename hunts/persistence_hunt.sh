#!/data/data/com.termux/files/usr/bin/bash

echo "================================="
echo " PERSISTENCE THREAT HUNT"
echo "================================="

grep "4720" ../logs/threat_hunt.log

COUNT=$(grep -c "4720" ../logs/threat_hunt.log)

echo
echo "Account Creation Events: $COUNT"

if [ "$COUNT" -gt 0 ]; then
    echo
    echo "[ALERT] New account creation detected"
fi
