# GuardDuty Automation - Hands-On Instructions

## Goal
Practice detecting security findings with GuardDuty and automating responses.  
This is hands-on, expect things to break — it’s part of learning.

---

## What You Need
- AWS account with GuardDuty and IAM access
- CloudFormation deployed using this template
- Python 3.8+ if using Boto3 for automation
- AWS CLI configured

---

## Steps

1. **Enable GuardDuty**
- Confirm GuardDuty detector exists (from CloudFormation output)
- Check GuardDuty dashboard for any findings

2. **Simulate a Finding**
- Trigger a simulated threat (like creating a suspicious IAM activity)
- Observe GuardDuty detecting it
- Note if detection fails — common issues: region mismatch, IAM permissions

3. **Automation**
- Use Python/Boto3 to query findings:
  - `list_findings()`
  - `get_findings()`
- Optional: write scripts to automatically respond (e.g., quarantine instance, notify team)
- Document any errors or permissions issues — it’s part of learning

4. **Validate**
- Ensure automation script can read findings
- Confirm it logs or prints alerts correctly
- Take screenshots of dashboard and script outputs

---

## Deliverables
- Screenshots of GuardDuty dashboard showing findings
- Example output from automation script
- `guardduty-automation.txt` notes documenting what worked, what broke, and lessons learned

> Be honest: show what failed and how you fixed it — that’s real troubleshooting.
