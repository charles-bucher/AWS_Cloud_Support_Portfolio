# EC2 Troubleshooting - Honest Hands-On Instructions

## Goal
This is real hands-on troubleshooting — find out why an EC2 instance isn’t behaving and fix it.  
You will see things break, that’s normal — documenting it is key.

---

## What You Need
- AWS account with EC2 and IAM access
- KeyPair for SSH
- Instance launched using this CloudFormation template
- AWS CLI configured

---

## Steps

1. **Check EC2 Status**
   - Go to EC2 > Instances
   - Confirm instance is running
   - If stopped: start it and see why it stopped

2. **Test SSH Access**
   - Attempt to SSH using the key
   - If it fails:
     - Check Security Group inbound rules
     - Confirm instance is in correct subnet/VPC
     - Make sure KeyPair matches instance

3. **Check Security Groups**
   - Verify inbound allows SSH
   - Check outbound rules aren’t blocking traffic

4. **Verify Route Tables**
   - Public subnet → Internet Gateway
   - Private subnet → NAT if needed
   - Check connectivity using ping or curl

5. **Check System Logs**
   - EC2 > Actions > Get System Log
   - Look for errors, failed services, or startup problems

6. **Document Everything**
   - Take screenshots of instance status
   - Note what failed and how you fixed it
   - Be honest — mistakes are expected

---

## Deliverables
- Screenshot of instance running
- Screenshot of successful SSH or notes if failed
- `ec2-troubleshoot.txt` documenting problems and fixes
