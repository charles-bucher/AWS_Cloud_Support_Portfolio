# AWS Cloud Support Simulator 🔧

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![AWS](https://img.shields.io/badge/AWS-Cloud%20Support-orange)](https://aws.amazon.com/)
[![Python](https://img.shields.io/badge/Python-3.9%2B-blue)](https://www.python.org/)
[![Terraform](https://img.shields.io/badge/Terraform-IaC-purple)](https://www.terraform.io/)
[![CloudWatch](https://img.shields.io/badge/CloudWatch-Monitoring-orange)](https://aws.amazon.com/cloudwatch/)

> **Hands-on AWS Cloud Support labs for troubleshooting real production incidents**

Practice responding to EC2, S3, Lambda, and GuardDuty incidents using actual cloud support workflows—investigation, root cause analysis, remediation, and prevention.

![Lab Environment Verified](screenshots/00_lab_environment_verified.png)

## Overview

**AWS Cloud Support Simulator** provides 7 production-grade incident response scenarios that simulate real AWS Cloud Support cases. You'll investigate production issues, analyze logs and metrics, identify root causes, and implement fixes—just like working in an actual cloud support role.

**The Problem with Traditional AWS Tutorials:**  
Most courses teach you how to *build* perfect infrastructure. This teaches you how to *fix* broken production systems—the skills cloud support engineers actually use every day.

**What You'll Learn:**
- Systematic incident response methodology
- CloudWatch Logs and Metrics analysis
- VPC networking troubleshooting
- Security incident investigation
- Lambda performance debugging
- Root cause analysis techniques

**Time Investment:** 20-25 hours total (2-3 hours per incident)  
**Cost:** < $5 using AWS Free Tier  
**Best For:** Cloud Support Engineer, AWS Support, SRE, Cloud Operations roles

---

## Architecture

### Lab Environment

![VPC Architecture](screenshots/01_vpc_architecture_setup.png)

*Fully configured VPC with public/private subnets, NAT Gateway, Internet Gateway, and security layers for realistic incident scenarios*

### Network Security Configuration

![Security Groups and NACLs](screenshots/03_security_groups_network_acls.png)

*Security groups and Network ACLs configured to simulate real-world networking issues and security controls*

### Repository Structure

```
AWS_Cloud_Support_Sim/
│
├── scenarios/                  # The 7 incident scenarios
│   ├── 001-ec2-connectivity/  # VPC networking troubleshooting
│   │   ├── terraform/         # Infrastructure deployment
│   │   ├── scripts/           # Investigation helpers
│   │   ├── screenshots/       # Visual guides
│   │   └── README.md          # Incident brief
│   │
│   ├── 002-s3-security/       # S3 security incident
│   ├── 003-lambda-timeout/    # Lambda performance
│   ├── 004-guardduty-alert/   # Security threat detection
│   ├── 005-ec2-high-cpu/      # Performance troubleshooting
│   ├── 006-lambda-dynamodb/   # Database throttling
│   └── 007-multi-service/     # Complex multi-service outage
│
├── scripts/                   # Validation and utilities
├── src/                       # Core automation
├── tests/                     # Automated validation
├── diagrams/                  # Architecture diagrams
├── docs/                      # Playbooks and guides
└── requirements.txt           # Python dependencies
```

---

## Features

### 🔴 Scenario 001: EC2 Instance Connectivity Issue

**Incident Report:**
- **Priority:** P1 (Critical)
- **Customer Impact:** Production web server unreachable
- **Symptoms:** Cannot SSH to instance, HTTP requests timing out
- **Duration:** Ongoing for 15 minutes

**What You'll Investigate:**
- ✅ VPC networking configuration
- ✅ Security group rules
- ✅ Network ACLs
- ✅ Route table entries
- ✅ VPC Flow Logs analysis
- ✅ Instance status checks

**Root Cause Discovery:** Use CloudWatch, VPC Flow Logs, and AWS Console to identify why the instance is unreachable—security group misconfiguration, route table issues, or instance health problems.

**AWS Services:** EC2, VPC, Security Groups, CloudWatch, VPC Flow Logs

**Learning Outcomes:**
- Systematic network troubleshooting methodology
- Reading VPC Flow Logs to diagnose connectivity
- Understanding security group vs NACL differences
- EC2 instance status check interpretation

---

### 🟠 Scenario 002: S3 Security Incident - Unauthorized Access

**Incident Report:**
- **Priority:** P0 (Critical Security Incident)
- **Customer Impact:** S3 bucket may be publicly exposed
- **Symptoms:** GuardDuty alert - S3 bucket accessed from suspicious IP
- **Duration:** Discovery within last 24 hours

**What You'll Investigate:**
- ✅ S3 bucket policies and permissions
- ✅ IAM user and role analysis
- ✅ CloudTrail logs for forensics
- ✅ GuardDuty findings review
- ✅ S3 access logs analysis
- ✅ Block Public Access settings

**Root Cause Discovery:** Use CloudTrail to investigate who made configuration changes, analyze bucket policies to identify the vulnerability, and determine if data was accessed.

**AWS Services:** S3, IAM, CloudTrail, GuardDuty, AWS Config

**Learning Outcomes:**
- Security incident response workflow
- CloudTrail forensic investigation
- S3 bucket policy analysis
- Understanding IAM vs bucket policies
- Implementing least privilege access

---

### 🟡 Scenario 003: Lambda Function Timeout Under Load

**Incident Report:**
- **Priority:** P2 (High)
- **Customer Impact:** API requests failing with 504 Gateway Timeout
- **Symptoms:** Lambda function timing out during peak traffic
- **Duration:** Started 30 minutes ago, affecting 25% of requests

**What You'll Investigate:**
- ✅ CloudWatch Logs for error patterns
- ✅ Lambda function metrics (duration, memory, throttles)
- ✅ Concurrent execution limits
- ✅ Memory allocation vs actual usage
- ✅ Cold start vs warm start performance
- ✅ Downstream service dependencies

**Root Cause Discovery:** Analyze CloudWatch Logs and Metrics to determine if the issue is insufficient memory, timeout configuration, throttling, or dependency problems.

**AWS Services:** Lambda, CloudWatch Logs, CloudWatch Metrics, API Gateway

**Learning Outcomes:**
- Reading and interpreting Lambda logs
- Performance troubleshooting methodology
- Understanding Lambda memory/CPU relationship
- Identifying throttling vs timeout vs errors
- Optimization strategies

---

### 🟣 Scenario 004: GuardDuty Security Alert - Compromised Credentials

![GuardDuty Dashboard](screenshots/07_guardduty_dashboard_overview.png)

*GuardDuty threat detection dashboard showing security findings and alert severity levels*

**Incident Report:**
- **Priority:** P0 (Critical Security Incident)
- **Customer Impact:** Potential IAM credential compromise
- **Symptoms:** GuardDuty alert - IAM credentials used from suspicious location
- **Duration:** Alert triggered 2 hours ago

**What You'll Investigate:**
- ✅ GuardDuty finding details and severity
- ✅ CloudTrail logs for credential usage
- ✅ IAM user access key activity
- ✅ API calls made by compromised credentials
- ✅ Resources accessed or created
- ✅ Blast radius assessment

**Root Cause Discovery:** Investigate GuardDuty findings, trace API calls in CloudTrail, assess what resources were accessed, and determine containment strategy.

**AWS Services:** GuardDuty, CloudTrail, IAM, AWS Config

**Learning Outcomes:**
- Security incident response procedures
- GuardDuty finding interpretation
- Credential compromise containment
- CloudTrail investigation techniques
- Implementing detective controls

---

### 🔵 Scenario 005: EC2 High CPU Utilization

**Incident Report:**
- **Priority:** P2 (High)
- **Customer Impact:** Application performance degraded
- **Symptoms:** EC2 instance running at 95%+ CPU for 20 minutes
- **Duration:** Ongoing, customers reporting slow response times

**What You'll Investigate:**
- ✅ CloudWatch CPU metrics and trends
- ✅ Process-level CPU usage
- ✅ Application logs for errors
- ✅ Memory and disk I/O metrics
- ✅ Recent deployments or changes
- ✅ Auto-scaling configuration

**Root Cause Discovery:** Use CloudWatch metrics, SSH into instance to check processes, review application logs, and determine if it's a code issue, resource constraint, or external attack.

**AWS Services:** EC2, CloudWatch, Auto Scaling, Systems Manager

**Learning Outcomes:**
- Performance troubleshooting workflow
- CloudWatch metrics interpretation
- SSH debugging techniques
- Identifying runaway processes
- Right-sizing recommendations

---

### 🟢 Scenario 006: Lambda DynamoDB Throttling

**Incident Report:**
- **Priority:** P2 (High)
- **Customer Impact:** API requests failing with 500 errors
- **Symptoms:** Lambda function errors - DynamoDB throttling exceptions
- **Duration:** Started 45 minutes ago, error rate climbing

**What You'll Investigate:**
- ✅ Lambda CloudWatch Logs for exceptions
- ✅ DynamoDB throttle metrics
- ✅ Read/write capacity units consumed
- ✅ Lambda concurrency and retries
- ✅ Query patterns and hot partitions
- ✅ Burst capacity usage

**Root Cause Discovery:** Analyze why DynamoDB is throttling—insufficient provisioned capacity, hot partition key, or sudden traffic spike—and implement proper scaling.

**AWS Services:** Lambda, DynamoDB, CloudWatch

**Learning Outcomes:**
- DynamoDB throttling diagnosis
- Capacity planning and scaling
- Understanding partition keys
- Lambda retry behavior
- Performance optimization

---

### ⚫ Scenario 007: Multi-Service Outage (Advanced)

**Incident Report:**
- **Priority:** P0 (Critical - Multiple Services Down)
- **Customer Impact:** Complete service outage affecting all customers
- **Symptoms:** Web app down, API errors, database connectivity issues
- **Duration:** Outage started 10 minutes ago

**What You'll Investigate:**
- ✅ Multiple CloudWatch dashboards
- ✅ Service health across EC2, Lambda, RDS, ALB
- ✅ Recent infrastructure changes (CloudTrail)
- ✅ Network connectivity between services
- ✅ Dependency chain analysis
- ✅ Cascading failure identification

**Root Cause Discovery:** This complex scenario requires investigating multiple services simultaneously, identifying the primary failure point, and understanding how it cascaded through the system.

**AWS Services:** EC2, Lambda, RDS, ALB, CloudWatch, CloudTrail, VPC

**Learning Outcomes:**
- Multi-service incident response
- Systematic triage under pressure
- Dependency mapping
- War room communication
- Post-incident review process

---

## Monitoring & Observability

![CloudWatch Dashboard](screenshots/09_cloudwatch_monitoring_dashboard.png)

*Comprehensive CloudWatch monitoring dashboard for investigating incidents with metrics, logs, and alarms*

**Observability Stack:**
- **CloudWatch Logs:** Application and system log aggregation
- **CloudWatch Metrics:** Performance metrics and custom metrics
- **VPC Flow Logs:** Network traffic analysis
- **CloudTrail:** API audit trail and forensics
- **GuardDuty:** Threat detection and security monitoring
- **X-Ray:** Distributed tracing for Lambda functions

---

## Setup

### Prerequisites

**Required:**
- ✅ AWS Account (Free Tier works)
- ✅ AWS CLI configured
- ✅ Terraform 1.0+
- ✅ Python 3.9+
- ✅ Basic understanding of AWS services

**Recommended:**
- Git installed
- Text editor (VS Code)
- 2-3 hours per scenario

### Installation

**1. Clone Repository**
```bash
git clone https://github.com/charles-bucher/AWS_Cloud_Support_Sim.git
cd AWS_Cloud_Support_Sim
```

**2. Install Python Dependencies**
```bash
pip install -r requirements.txt
```

**3. Configure AWS Credentials**
```bash
aws configure
# Enter: Access Key ID, Secret Access Key, Region (us-east-1), Output format (json)
```

**4. Set Up Billing Alerts**
```bash
# Go to AWS Console → Billing → Budgets → Create budget
# Set thresholds at $10, $20
```

### Running Your First Scenario

**Start with Scenario 001 (Beginner-Friendly):**

```bash
# Navigate to first scenario
cd scenarios/001-ec2-connectivity

# Read incident brief
cat README.md

# Deploy infrastructure
cd terraform
terraform init
terraform apply

# Follow incident response workflow:
# 1. Receive incident report
# 2. Investigate using CloudWatch/Console
# 3. Analyze logs and metrics
# 4. Identify root cause
# 5. Implement remediation
# 6. Document findings
# 7. Apply prevention measures

# Clean up resources
terraform destroy
```

### Cost Management

**Expected Costs:**
- All scenarios: < $5/month on AWS Free Tier
- EC2: $0 (t2.micro)
- Lambda: $0 (1M free requests)
- CloudWatch: $3-5 (logs and metrics)
- DynamoDB: $0 (25 GB free)

**Cost-Saving Tips:**
1. Use us-east-1 region (cheapest)
2. Run scenarios one at a time
3. Always run `terraform destroy` after completion
4. Set up billing alerts
5. Check AWS Console for orphaned resources

---

## Usage

### Learning Path

**🟢 Beginner Track** (Start here)

**Scenario 001: EC2 Connectivity** (2-3 hours)
- Foundation: VPC networking, security groups
- Skills: Basic troubleshooting, log analysis
- Outcome: Network security understanding

**Scenario 002: S3 Security** (2-3 hours)
- Foundation: S3 security model, IAM
- Skills: CloudTrail forensics, incident response
- Outcome: Security incident handling

---

**🟡 Intermediate Track**

**Scenario 003: Lambda Timeout** (3 hours)
- Foundation: Serverless architecture
- Skills: Performance tuning, CloudWatch
- Outcome: Lambda optimization

**Scenario 005: EC2 High CPU** (3 hours)
- Foundation: System performance
- Skills: Process debugging, monitoring
- Outcome: Right-sizing methodology

**Scenario 006: DynamoDB Throttling** (3 hours)
- Foundation: Database performance
- Skills: Capacity planning, optimization
- Outcome: Database troubleshooting

---

**🔴 Advanced Track**

**Scenario 004: GuardDuty Alert** (3-4 hours)
- Foundation: Security operations
- Skills: Forensics, containment
- Outcome: Security incident mastery

**Scenario 007: Multi-Service Outage** (4-5 hours)
- Foundation: Complex systems
- Skills: Multi-service triage
- Outcome: Production war room readiness

---

### Incident Response Methodology

Each scenario follows standard cloud support workflow:

```
1. RECEIVE INCIDENT
   └─→ Read incident report
   └─→ Understand customer impact
   └─→ Note start time and priority

2. INVESTIGATE
   └─→ Check CloudWatch dashboards
   └─→ Review recent changes (CloudTrail)
   └─→ Analyze logs and metrics
   └─→ Form hypotheses

3. IDENTIFY ROOT CAUSE
   └─→ Test hypotheses systematically
   └─→ Reproduce issue if possible
   └─→ Isolate failing component
   └─→ Confirm root cause

4. IMPLEMENT FIX
   └─→ Apply remediation
   └─→ Monitor for resolution
   └─→ Verify customer impact resolved
   └─→ Document changes made

5. PREVENT RECURRENCE
   └─→ Implement monitoring/alarms
   └─→ Update runbooks
   └─→ Apply architectural fixes
   └─→ Schedule follow-up review

6. DOCUMENT FINDINGS
   └─→ Write incident report
   └─→ Timeline of events
   └─→ Root cause explanation
   └─→ Lessons learned
```

---

### Validation

**Each scenario includes automated validation:**

```bash
# After implementing your fix
python scripts/validate_fix.py

# Expected output:
✓ Issue reproduced successfully
✓ Investigation steps completed
✓ Root cause identified correctly
✓ Remediation applied
✓ Service restored
✓ Prevention measures documented

Scenario Status: RESOLVED
Time to Resolution: 45 minutes
```

---

## Skills Demonstrated

This repository showcases practical skills essential for cloud support roles:

### Incident Response
- ✅ **Triage Methodology:** Prioritization and systematic investigation
- ✅ **Root Cause Analysis:** Hypothesis-driven troubleshooting
- ✅ **Communication:** Incident updates and documentation
- ✅ **Post-Incident Review:** Lessons learned and prevention

### AWS Troubleshooting
- ✅ **CloudWatch:** Logs, Metrics, Alarms, Dashboards
- ✅ **VPC Networking:** Security groups, NACLs, route tables, Flow Logs
- ✅ **Lambda:** Performance tuning, memory optimization, cold starts
- ✅ **DynamoDB:** Capacity management, throttling, partition keys
- ✅ **IAM:** Permission debugging, policy analysis

### Security Operations
- ✅ **Security Incidents:** Investigation and containment
- ✅ **GuardDuty:** Finding interpretation and response
- ✅ **CloudTrail:** Forensic investigation
- ✅ **S3 Security:** Bucket policies, IAM, Block Public Access
- ✅ **Preventive Controls:** Implementing security guardrails

### Technical Skills
- ✅ **AWS CLI:** Proficient command-line usage
- ✅ **Terraform:** Infrastructure debugging and deployment
- ✅ **Python:** Scripting for automation (boto3)
- ✅ **SSH:** System administration and debugging
- ✅ **Log Analysis:** Pattern recognition and correlation

### Observability
- ✅ **CloudWatch Integration:** Logs, Metrics, Alarms
- ✅ **VPC Flow Logs:** Network traffic analysis
- ✅ **CloudTrail:** API audit trail investigation
- ✅ **GuardDuty:** Threat detection and monitoring
- ✅ **Metric Correlation:** Cross-service analysis

---

## Metrics & Outcomes

| Metric | Value |
|--------|-------|
| **Incident Scenarios** | 7 Production-Grade Cases |
| **AWS Services** | EC2, S3, Lambda, GuardDuty, CloudWatch, IAM |
| **Response Skills** | Investigation, Analysis, Remediation, Prevention |
| **Infrastructure** | 100% Terraform |
| **Time Investment** | 20-25 Hours Total |
| **Cost** | < $5 Total |

### What You'll Have After Completion:

| Outcome | Description |
|---------|-------------|
| 📂 **Portfolio Project** | GitHub repository demonstrating incident response skills |
| 🔍 **Troubleshooting Experience** | Investigated 7 production-grade incidents |
| ☁️ **AWS Knowledge** | Hands-on with 8+ AWS services |
| 🎓 **Methodology** | Systematic incident response approach |
| 📊 **Observability Skills** | CloudWatch Logs, Metrics, and monitoring |
| 🔒 **Security Operations** | Security incident investigation and containment |
| 💼 **Interview Stories** | Real scenarios to discuss in interviews |
| 📝 **Documentation** | Incident reports and runbooks |

---

## Use Cases

### 📋 For Job Seekers
- **Portfolio Project:** Demonstrate hands-on troubleshooting
- **Interview Prep:** Reference specific incidents investigated
- **Resume Skills:** List concrete AWS services debugged
- **GitHub Activity:** Show active learning

### 📜 For Certification Study
- **AWS Solutions Architect:** Real-world scenario practice
- **AWS SysOps Administrator:** Operations troubleshooting
- **AWS DevOps Engineer:** Infrastructure automation

### 🚀 For Career Changers
- **Practical Experience:** Build skills without a job
- **Confidence Building:** Safe environment to practice
- **Portfolio Building:** Tangible proof of capabilities
- **Communication:** Practice explaining technical issues

---

## Scenario Difficulty & Time

| Scenario | Difficulty | Time | Priority | Services |
|----------|-----------|------|----------|----------|
| 001: EC2 Connectivity | 🟢 Beginner | 2-3h | P1 | EC2, VPC, Security Groups |
| 002: S3 Security | 🟢 Beginner | 2-3h | P0 | S3, IAM, CloudTrail, GuardDuty |
| 003: Lambda Timeout | 🟡 Intermediate | 3h | P2 | Lambda, CloudWatch |
| 005: EC2 High CPU | 🟡 Intermediate | 3h | P2 | EC2, CloudWatch |
| 006: DynamoDB Throttling | 🟡 Intermediate | 3h | P2 | Lambda, DynamoDB |
| 004: GuardDuty Alert | 🔴 Advanced | 3-4h | P0 | GuardDuty, CloudTrail, IAM |
| 007: Multi-Service | 🔴 Advanced | 4-5h | P0 | EC2, Lambda, RDS, ALB, VPC |

---

## Related Projects

**Hands-On AWS Learning:**

- **[AWS Error-Driven Troubleshooting Lab](https://github.com/charles-bucher/AWS_Error_Driven_Troubleshooting_Lab)** - Break and fix AWS infrastructure systematically
- **[AWS CloudOps Suite](https://github.com/charles-bucher/AWS_Cloudops_Suite)** - Production-grade automation and monitoring
- **[CloudOpsLab](https://github.com/charles-bucher/CloudOpsLab)** - Monitoring and self-healing automation

---

## Contributing

Contributions welcome! Ways to help:

| Type | How to Help |
|------|-------------|
| 🐛 **Bugs** | Report issues with scenarios |
| 💡 **Ideas** | Suggest new incident scenarios |
| 📝 **Docs** | Improve documentation and runbooks |
| ✨ **Features** | Add investigation tools |
| 🧪 **Tests** | Contribute validation tests |

**To Contribute:**
1. Fork this repository
2. Create feature branch (`git checkout -b feature/new-scenario`)
3. Commit changes (`git commit -m 'Add EC2 network scenario'`)
4. Push to branch (`git push origin feature/new-scenario`)
5. Open Pull Request

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines.

---

## License

This project is licensed under the MIT License - see [LICENSE.md](LICENSE.md) for details.

```
MIT License

Copyright (c) 2024 Charles Bucher

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```

**Free to use for:**
- Personal learning
- Portfolio projects
- Interview preparation
- Educational purposes

---

## Contact

**Charles Bucher**  
Cloud Support Engineer | AWS Troubleshooting Specialist

- 📧 Email: quietopscb@gmail.com
- 💼 LinkedIn: [charles-bucher-cloud](https://linkedin.com/in/charles-bucher-cloud)
- 🌐 Portfolio: [charles-bucher.github.io](https://charles-bucher.github.io/)
- 💻 GitHub: [@charles-bucher](https://github.com/charles-bucher)

---

## Support This Project

If this helped you improve your troubleshooting skills or land a cloud role:

- ⭐ **Star this repository** - Help others discover it
- 📢 **Share with others** - Learning AWS or cloud support
- 💼 **Mention in interviews** - Reference specific scenarios
- 🤝 **Connect with me** - Share your success story

---

**Learn troubleshooting by responding to real incidents**

*Practice makes perfect. Incidents make you better.*

*Made with 🔧 for cloud support engineers by cloud support engineers*

---

## Keywords

AWS cloud support, incident response, troubleshooting AWS, CloudWatch Logs, root cause analysis, AWS support engineer, cloud operations, EC2 troubleshooting, Lambda debugging, S3 security, GuardDuty alerts, VPC networking, security incident response, performance troubleshooting, AWS monitoring, observability, CloudTrail forensics, technical support engineer, site reliability engineering, production debugging, AWS certification prep, hands-on AWS labs, cloud support portfolio

---

[![AWS](https://img.shields.io/badge/AWS-Cloud%20Support-orange)](https://aws.amazon.com/) [![Python](https://img.shields.io/badge/Python-3.9%2B-blue)](https://www.python.org/) [![Terraform](https://img.shields.io/badge/Terraform-IaC-purple)](https://www.terraform.io/)