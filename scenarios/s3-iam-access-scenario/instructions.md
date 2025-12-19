# S3 IAM Access - Honest Instructions

## Goal
Test S3 access using IAM role, troubleshoot permission denied issues.

---

## Steps
1. Deploy CloudFormation template.
2. Try accessing S3 bucket using IAM role.
3. If denied:
   - Check role policies
   - Check bucket policies
   - Verify IAM role assumed correctly
4. Document errors and fixes in `s3-iam-access.txt`.

---

## Deliverables
- Screenshots of access denied and successful access
- Notes documenting troubleshooting
