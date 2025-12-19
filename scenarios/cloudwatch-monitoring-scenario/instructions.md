# CloudWatch Monitoring Scenario - Real Hands-On Instructions

## Goal
Get real-world experience monitoring AWS resources. This isn’t just following a guide — you’ll set up metrics, alarms, and dashboards and actually see what breaks and how to fix it.

---

## What You Need
- AWS account with CloudWatch, EC2, and IAM access
- At least one EC2 instance (or other AWS resource) to monitor
- AWS CLI configured (`aws configure`)
- Python 3.8+ if you want to automate alarms and notifications

---

## Steps

### 1. Create an Alarm
1. Go to **CloudWatch > Alarms > Create Alarm**.
2. Pick a metric for a real EC2 instance (CPUUtilization or StatusCheckFailed).
3. Set a threshold that will actually trigger during testing (e.g., CPU > 70% for 5 minutes).
4. Add a notification (SNS topic or your email).  
5. Save and test the alarm.

### 2. Test It
- Push the instance to high CPU or simulate an issue.  
- Watch the alarm trigger and see if notifications work.  

### 3. Build a Dashboard
1. Go to **CloudWatch > Dashboards > Create Dashboard**.
2. Add widgets for:
   - CPU usage
   - Status checks
   - Network traffic (optional)
3. Arrange them so you can actually **see problems at a glance**.

### 4. Optional Automation
- Use Python/Boto3 if you want to automatically:
  - Check alarm status
  - Log alarms
  - Trigger simple remediation scripts

### 5. Document Your Work
- Screenshots of alarms firing and dashboard layout
- Notes on any problems or unexpected behavior
- Put these in `cloudwatch-monitoring.txt`

---

## Portfolio Deliverables
- Screenshots showing alarms triggered
- Screenshots of the dashboard
- `cloudwatch-monitoring.txt` documenting what worked, what didn’t, and what you learned

> Be honest: show what broke, how you figured it out, and what you learned. This is exactly what hiring managers want to see — real problem-solving, not just “everything worked.”
