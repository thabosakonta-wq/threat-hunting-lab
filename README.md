# Threat Hunting Lab

A lightweight Threat Hunting and Log Analysis Lab built with Bash on Linux and Termux.

## Overview

This project simulates core Security Operations Center (SOC) threat hunting activities by analyzing authentication logs and identifying suspicious behavior.

## Features

### Failed Login Detection
Detects repeated authentication failures.

### Brute Force Detection
Identifies IP addresses generating excessive login failures.

### Suspicious IP Detection
Matches log activity against a known malicious IP watchlist.

### Privilege Escalation Detection
Detects sudo usage, account creation, password changes, and privilege escalation indicators.

### Threat Hunting Dashboard
Provides a real-time summary of security findings.

### Investigation Report Generator
Produces investigation reports with findings and recommendations.

## Technologies Used

- Bash
- Linux
- Termux
- Git
- GitHub
- Log Analysis

## Project Structure

```text
Threat-Hunting-Lab/
├── detections/
├── logs/
├── reports/
├── rules/
├── screenshots/
├── dashboard.sh
├── hunt.sh
└── README.md
```

## Detection Capabilities

- Failed Login Detection
- Brute Force Detection
- Known Malicious IP Detection
- Privilege Escalation Detection
- Threat Hunting Reporting

## Learning Outcomes

- Threat Hunting
- Security Monitoring
- Incident Investigation
- Detection Engineering
- Bash Scripting
- Linux Administration

#Author

Thabo Sakonta

Microsoft Certified Security Operations Analyst (SC-200)

GitHub: https://github.com/thabosakonta-wq

LinkedIn: https://www.linkedin.com/in/thabo-sakonta-377a3748

License

This project is provided for educational and portfolio purposes.
