#!/data/data/com.termux/files/usr/bin/bash

LOG_FILE="$HOME/Threat-Hunting-Lab/logs/auth.log"
THRESHOLD=5

echo "================================="
echo " BRUTE FORCE DETECTION"
echo "================================="

grep "Failed password" "$LOG_FILE" \
| awk '{print $NF}' \
| sort \
| uniq -c \
| while read COUNT IP
do
    echo "$IP : $COUNT failed logins"

    if [ "$COUNT" -ge "$THRESHOLD" ]; then
        echo "[HIGH ALERT] Possible Brute Force Attack from $IP"
    fi
done
