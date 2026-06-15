#!/data/data/com.termux/files/usr/bin/bash

REPORT_DIR="$HOME/Threat-Hunting-Lab/reports"
LOG_FILE="$HOME/Threat-Hunting-Lab/logs/auth.log"

mkdir -p "$REPORT_DIR"

DATE=$(date +%Y-%m-%d)
REPORT="$REPORT_DIR/report_$DATE.txt"

FAILED=$(grep -c "Failed password" "$LOG_FILE")

BRUTE=$(grep "Failed password" "$LOG_FILE" \
| awk '{print $NF}' \
| sort \
| uniq -c \
| awk '$1 >= 5 {count++} END {print count+0}')

SUSPICIOUS=$(grep -Ff "$HOME/Threat-Hunting-Lab/rules/malicious_ips.txt" "$LOG_FILE" | wc -l)

PRIV=$(grep -E "sudo|useradd|passwd|su root" "$LOG_FILE" | wc -l)

cat > "$REPORT" << EOF
THREAT HUNTING INVESTIGATION REPORT

Date: $DATE

====================================

Failed Logins: $FAILED

Brute Force Alerts: $BRUTE

Suspicious IP Events: $SUSPICIOUS

Privilege Escalation Events: $PRIV

====================================

Severity: HIGH

Recommendations:

- Block malicious IP addresses
- Review authentication logs
- Enable MFA where possible
- Investigate privilege escalation activity
- Monitor for repeated login failures

EOF

echo "Report generated:"
echo "$REPORT"
