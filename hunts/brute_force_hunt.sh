#!/data/data/com.termux/files/usr/bin/bash

echo "================================="
echo " BRUTE FORCE THREAT HUNT"
echo "================================="

grep "4625" ../logs/threat_hunt.log

COUNT=$(grep -c "4625" ../logs/threat_hunt.log)

echo
echo "Failed Logins: $COUNT"

if [ "$COUNT" -ge 3 ]; then
    echo
    echo "[HIGH ALERT] Possible brute force attack"
fi
