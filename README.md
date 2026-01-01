# AWS Cloud Support Simulator ☁️

![Build Status](https://img.shields.io/badge/build-passing-brightgreen) ![License](https://img.shields.io/badge/license-MIT-blue) ![Python](https://img.shields.io/badge/python-3.9%2B-yellow) ![Terraform](https://img.shields.io/badge/terraform-1.6%2B-blue)

**Hands-on lab simulating 7 real-world AWS cloud incidents (EC2, S3, Lambda, VPC, GuardDuty) to build troubleshooting, observability, and incident response skills for Cloud Support, CloudOps, and DevOps roles.**

---

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Cloud Skills Demonstrated](#cloud-skills-demonstrated)
- [Scenarios](#scenarios)
- [Setup](#setup)
- [Learning Path](#learning-path)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

---

## Overview
This project bridges the cloud skills gap by providing **production-grade AWS troubleshooting labs**. Instead of just building infrastructure, you will **operate, monitor, and debug** real-world incidents like a Cloud Support or CloudOps engineer.  

**Perfect for:**
- Cloud Support Engineer
- Cloud Operations Engineer
- AWS Support Associate/Engineer
- DevOps Engineer (AWS focus)
- Site Reliability Engineer (SRE)
- Cloud Infrastructure Analyst

---

## Features
- Investigate and remediate **7 production-grade cloud incidents**
- EC2 troubleshooting & performance optimization
- S3 security & IAM policy auditing
- Lambda performance tuning and cold start mitigation
- VPC networking, Security Groups, NACLs, and routing troubleshooting
- CloudWatch Logs, Metrics, Dashboards, and Insights queries
- GuardDuty & CloudTrail security investigations
- Infrastructure as Code deployment with Terraform
- Automated incident resolution scripts (Python, boto3)
- Cost-conscious lab operations (<$5/month with Free Tier)

---

## Cloud Skills Demonstrated

| AWS SysOps Competency         | How Repo Demonstrates It |
|-------------------------------|-------------------------|
| Monitoring & Logging          | CloudWatch Logs, Metrics, Alarms, Dashboards, VPC Flow Logs |
| Automation                    | Python (boto3) scripts for incident remediation |
| Security & Compliance         | GuardDuty, CloudTrail, IAM forensics, S3 security audits |
| Networking                    | VPC troubleshooting, Security Groups, NACLs, Route Tables |
| Cost & Performance            | EC2 right-sizing, Lambda tuning, DynamoDB capacity planning |
| Deployment & Provisioning     | Terraform multi-environment IaC deployment |
| Incident Response             | Systematic triage, RCA, P0/P1/P2 scenario resolution |

---

## Scenarios
### 001 – EC2 Connectivity Troubleshooting (VPC Networking)
- **Incident Type:** Network connectivity failure
- **Skills:** VPC troubleshooting, Security Groups, NACLs, CloudWatch Logs
- **Tools:** EC2, VPC Flow Logs, CloudWatch, Route Tables
- **Outcome:** Diagnose connectivity issues, implement fixes, validate monitoring

### 002 – S3 Security Incident (Cloud Forensics)
- **Incident Type:** Potential data breach
- **Skills:** S3 bucket policies, IAM auditing, CloudTrail forensics
- **Tools:** GuardDuty, CloudTrail, S3 Access Logs, AWS Config
- **Outcome:** Investigate and remediate security incidents

### 003 – Lambda Timeout (Serverless Optimization)
- **Incident Type:** API Gateway timeout
- **Skills:** Lambda tuning, X-Ray tracing, CloudWatch monitoring
- **Tools:** Lambda, API Gateway, CloudWatch, DynamoDB
- **Outcome:** Optimize serverless functions for performance and cost

### 004 – IAM Credential Compromise (Security Operations)
- **Incident Type:** Unauthorized access detected
- **Skills:** IAM forensics, GuardDuty response, CloudTrail investigation
- **Tools:** GuardDuty, CloudTrail, IAM, AWS Security Hub
- **Outcome:** Contain compromised credentials and audit access

### 005 – EC2 High CPU (Infrastructure Performance)
- **Incident Type:** Instance resource exhaustion
- **Skills:** CloudWatch Agent metrics, Auto Scaling, Systems Manager
- **Tools:** EC2, CloudWatch, Compute Optimizer, Auto Scaling
- **Outcome:** Performance troubleshooting and proactive monitoring setup

### 006 – Lambda & DynamoDB Throttling (Distributed Systems)
- **Incident Type:** DynamoDB throttling causing API failures
- **Skills:** NoSQL optimization, Lambda capacity tuning, CloudWatch alarms
- **Tools:** Lambda, DynamoDB, CloudWatch, X-Ray
- **Outcome:** Optimize serverless applications and database scaling

### 007 – Multi-Service Cloud Outage (Advanced)
- **Incident Type:** Full production outage
- **Skills:** Multi-service debugging, war room coordination, RCA
- **Tools:** EC2, Lambda, RDS, Route 53, ALB, CloudWatch, CloudTrail
- **Outcome:** Systematically resolve complex cloud outages

---

## Setup

### Prerequisites
- AWS Free Tier account  
- AWS CLI v2 installed  
- Terraform v1.6+  
- Python 3.9+ with boto3 library  
- Git  

Optional: VS Code with AWS Toolkit, AWS CloudShell  

### Installation
```bash
# Clone repository
git clone https://github.com/charles-bucher/AWS_Cloud_Support_Sim.git
cd AWS_Cloud_Support_Sim

# Install Python dependencies
pip install -r requirements.txt

# Verify AWS CLI and Terraform
aws --version
terraform --version
Running Scenarios
bash
Copy code
cd scenarios/001-ec2-connectivity
cd terraform
terraform init
terraform plan -out=tfplan
terraform apply tfplan

# Investigate incident
cat README.md
# Run automated validation
python ../../scripts/validate_incident_resolution.py --scenario 001

# Clean up resources
terraform destroy -auto-approve
💡 Cost Management Tip: Always destroy Terraform stacks after scenarios. NAT Gateway and other resources can accrue charges.

Learning Path
Beginner (2–4 weeks)

Scenarios 001–002

VPC, Security, CloudTrail basics

Intermediate (4–6 weeks)

Scenarios 003, 005, 006

Lambda optimization, EC2 performance, DynamoDB scaling

Advanced (2–3 weeks)

Scenarios 004, 007

Security incidents, multi-service outage resolution

Total: 8–13 weeks, self-paced

Contributing
We welcome contributions:

Fork the repository

Create a feature branch: git checkout -b feature/new-cloud-scenario

Make changes and test

Commit: git commit -m "Add Route 53 failover scenario"

Push: git push origin feature/new-cloud-scenario

Open a Pull Request

License
MIT License – see LICENSE.md

Contact
Charles Bucher – Cloud Operations Engineer | AWS Specialist | Infrastructure Automation

LinkedIn: charles-bucher-cloud

GitHub: @charles-bucher

Email: quietopscb@gmail.com

Portfolio: charles-bucher.github.io

⭐ If this lab helped you, star the repository, share your learning journey, or connect on LinkedIn!
🚀 Practice makes perfect. Cloud incidents make you production-ready.

yaml
Copy code
