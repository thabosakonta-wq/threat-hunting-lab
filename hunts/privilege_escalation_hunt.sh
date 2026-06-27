#!/data/data/com.termux/files/usr/bin/bash

echo "================================="
echo " PRIVILEGE ESCALATION HUNT"
echo "================================="

grep "4672" ../logs/threat_hunt.log

COUNT=$(grep -c "4672" ../logs/threat_hunt.log)

echo
echo "Privileged Events: $COUNT"

if [ "$COUNT" -gt 0 ]; then
    echo
    echo "[ALERT] Privileged activity detected"
fi
