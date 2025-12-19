# Lambda Error Scenario - Honest Hands-On Instructions

## Goal
Deploy a Lambda that intentionally fails and practice debugging using logs and CloudWatch.

---

## Steps
1. Deploy CloudFormation template.
2. Trigger Lambda function manually.
3. Go to CloudWatch Logs to review errors.
4. Identify cause (division by zero in this example).
5. Update code to fix error.
6. Test again to confirm it works.
7. Document errors, fixes, and lessons learned.

---

## Deliverables
- Screenshot of Lambda error in CloudWatch
- Screenshot after fix
- Notes in `lambda-error.txt` documenting failures and troubleshooting
