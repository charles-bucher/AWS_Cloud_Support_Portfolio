# AWS Python Terraform Portfolio

![AWS](https://img.shields.io/badge/AWS-Cloud-yellow)
![Python](https://img.shields.io/badge/Python-3.11-blue)
![Terraform](https://img.shields.io/badge/Terraform-HCL-lightgrey)
![Portfolio](https://img.shields.io/badge/Portfolio-Ready-green)

This repository showcases hands-on troubleshooting scenarios for AWS services, demonstrating practical skills in EC2, Lambda, S3, IAM, and more. Designed for entry-level cloud support and NOC positions, simulating real-world support workflows from initial issue to resolution.

---

## Table of Contents
- [EC2 Troubleshooting](#ec2-troubleshooting)
- [Lambda Error Handling](#lambda-error-handling)
- [S3 IAM Access](#s3-iam-access)
- [Screenshots Overview](#screenshots-overview)
- [Contact](#contact)

---

## EC2 Troubleshooting

**Scenario:** Launch an EC2 instance via CloudFormation, verify connectivity, and troubleshoot security group issues.

**Files:**
- `scenarios/ec2-troubleshoot/cloudformation.yaml`
- `scenarios/ec2-troubleshoot/ec2-troubleshoot.txt`
- `scenarios/ec2-troubleshoot/instructions.md`

**Key Steps:**
1. Deploy CloudFormation stack
2. Verify EC2 instance creation
3. Configure and check Security Groups
4. Test connectivity using ping and SSH

**Screenshots:**
![Stack Created](docs/screenshots/01_stack_created.png)
![Security Group Config](docs/screenshots/02_security_group.png)
![EC2 Instance Details](docs/screenshots/04_ec2.png)
![Security Group Verification](docs/screenshots/05_security_group.png)
![Ping Test](docs/screenshots/06_connectivity_ping_confirm.png)

**Skills Demonstrated:**
- EC2 deployment
- Security group troubleshooting
- SSH connectivity
- CloudFormation workflow

---

## Lambda Error Handling

**Scenario:** Diagnose and resolve a Lambda function error.

**Files:**
- `scenarios/lambda-error/instructions.md`

**Key Steps:**
1. Deploy Lambda function
2. Trigger an error event
3. Analyze CloudWatch logs
4. Update code or IAM permissions
5. Redeploy and verify success

**Screenshots:**  
*(Replace with your actual Lambda images)*
![Lambda Error](docs/screenshots/???.png)
![Lambda Success](docs/screenshots/???.png)

**Skills Demonstrated:**
- Lambda deployment/debugging
- IAM permissions troubleshooting
- CloudWatch log analysis

---

## S3 IAM Access

**Scenario:** Troubleshoot S3 bucket access using IAM policies.

**Files:**
- `scenarios/s3-iam-access/instructions.md`

**Key Steps:**
1. Identify IAM user or role
2. Review policies and bucket permissions
3. Simulate access failure via CLI
4. Update IAM or bucket policy
5. Verify access

**Screenshots:**  
*(Replace with your actual S3 images)*
![S3 Access Denied](docs/screenshots/???.png)
![S3 Access Success](docs/screenshots/???.png)

**Skills Demonstrated:**
- IAM policy debugging
- S3 access control
- AWS CLI operations

---

## Screenshots Overview
All screenshots are stored in `docs/screenshots/` and illustrate:
- CloudFormation stack creation
- EC2 deployment and connectivity
- Lambda debugging and resolution
- IAM/S3 access troubleshooting

---

## Contact
**Charles Bucher**  
[GitHub](https://github.com/charles-bucher) | [LinkedIn](https://www.linkedin.com/in/charles-bucher)

---

## About
This portfolio simulates a Cloud Support Engineer workflow, documenting AWS troubleshooting scenarios from support ticket to resolution.

**Topics:** terraform, incident-response, cloudwatch, ci-cd, infrastructure-as-code, aws-security, noc, cloudops, cloud-support, python-automation
