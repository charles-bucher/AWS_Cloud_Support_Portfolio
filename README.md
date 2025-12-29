# AWS Cloud Support Simulator

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
[![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900.svg)](https://aws.amazon.com/)
[![Python](https://img.shields.io/badge/Python-3.9+-3776AB.svg?logo=python&logoColor=white)](https://www.python.org/)
[![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC.svg)](https://www.terraform.io/)
[![Cloud Support](https://img.shields.io/badge/Type-Incident%20Response-critical.svg)]()

> **Hands-on AWS Cloud Support labs for troubleshooting real production incidents**

Practice responding to EC2, S3, Lambda, and GuardDuty incidents using actual cloud support workflows—investigation, root cause analysis, remediation, and prevention.

---

## 🎯 TL;DR

**What:** 7 hands-on incident response scenarios simulating real AWS Cloud Support cases. You investigate production issues, analyze logs and metrics, identify root causes, and implement fixes.

**Why:** Most AWS tutorials teach how to build things. This teaches **troubleshooting skills** that cloud support engineers actually use—reading CloudWatch Logs, investigating security incidents, and fixing production issues under pressure.

**Skills:** Incident response • CloudWatch Logs analysis • Root cause analysis • EC2 troubleshooting • S3 security • Lambda debugging • GuardDuty threat detection • Problem remediation

**Time Investment:** 2-3 hours per incident • Complete all 7 scenarios in 2 weekends

**Cost:** AWS Free Tier (under $5 total)

**Best For:** Cloud Support Engineer • AWS Support • Technical Support • Cloud Operations • Site Reliability Engineer (SRE)

---

## 📊 Project Overview

| Metric | Value |
|--------|-------|
| **Incident Scenarios** | 7 Production-Grade Cases |
| **AWS Services** | EC2, S3, Lambda, GuardDuty, CloudWatch, IAM |
| **Response Skills** | Investigation, Analysis, Remediation, Prevention |
| **Infrastructure** | 100% Terraform |
| **Documentation** | Full runbooks and playbooks |

---

## 🚨 The 7 Incident Scenarios

### 🔴 Scenario 001: EC2 Instance Connectivity Issue

**Incident Report:**
```
Priority: P1 (Critical)
Customer Impact: Production web server unreachable
Symptoms: Cannot SSH to instance, HTTP requests timing out
Duration: Ongoing for 15 minutes
```

**What You'll Investigate:**
- ✅ VPC networking configuration
- ✅ Security group rules
- ✅ Network ACLs
- ✅ Route table entries
- ✅ VPC Flow Logs analysis
- ✅ Instance status checks

**Root Cause Discovery:**
You'll use CloudWatch, VPC Flow Logs, and AWS Console to identify why the instance is unreachable—could be security group misconfiguration, route table issues, or instance health problems.

**AWS Services:** EC2, VPC, Security Groups, CloudWatch, VPC Flow Logs

**Learning Outcomes:**
- Systematic network troubleshooting methodology
- Reading VPC Flow Logs to diagnose connectivity
- Understanding security group vs NACL differences
- EC2 instance status check interpretation

[📖 **Full Incident Guide →**](scenarios/001-ec2-connectivity/README.md)

---

### 🟠 Scenario 002: S3 Security Incident - Unauthorized Access

**Incident Report:**
```
Priority: P0 (Critical Security Incident)
Customer Impact: S3 bucket may be publicly exposed
Symptoms: GuardDuty alert - S3 bucket accessed from suspicious IP
Duration: Discovery within last 24 hours
```

**What You'll Investigate:**
- ✅ S3 bucket policies and permissions
- ✅ IAM user and role analysis
- ✅ CloudTrail logs for forensics
- ✅ GuardDuty findings review
- ✅ S3 access logs analysis
- ✅ Block Public Access settings

**Root Cause Discovery:**
Use CloudTrail to investigate who made configuration changes, analyze bucket policies to identify the vulnerability, and determine if data was accessed.

**AWS Services:** S3, IAM, CloudTrail, GuardDuty, AWS Config

**Learning Outcomes:**
- Security incident response workflow
- CloudTrail forensic investigation
- S3 bucket policy analysis
- Understanding IAM vs bucket policies
- Implementing least privilege access

[📖 **Full Incident Guide →**](scenarios/002-s3-security/README.md)

---

### 🟡 Scenario 003: Lambda Function Timeout Under Load

**Incident Report:**
```
Priority: P2 (High)
Customer Impact: API requests failing with 504 Gateway Timeout
Symptoms: Lambda function timing out during peak traffic
Duration: Started 30 minutes ago, affecting 25% of requests
```

**What You'll Investigate:**
- ✅ CloudWatch Logs for error patterns
- ✅ Lambda function metrics (duration, memory, throttles)
- ✅ Concurrent execution limits
- ✅ Memory allocation vs actual usage
- ✅ Cold start vs warm start performance
- ✅ Downstream service dependencies

**Root Cause Discovery:**
Analyze CloudWatch Logs and Metrics to determine if the issue is insufficient memory, timeout configuration, throttling, or dependency problems.

**AWS Services:** Lambda, CloudWatch Logs, CloudWatch Metrics, API Gateway

**Learning Outcomes:**
- Reading and interpreting Lambda logs
- Performance troubleshooting methodology
- Understanding Lambda memory/CPU relationship
- Identifying throttling vs timeout vs errors
- Optimization strategies

[📖 **Full Incident Guide →**](scenarios/003-lambda-timeout/README.md)

---

### 🟣 Scenario 004: GuardDuty Security Alert - Compromised Credentials

**Incident Report:**
```
Priority: P0 (Critical Security Incident)
Customer Impact: Potential IAM credential compromise
Symptoms: GuardDuty alert - IAM credentials used from suspicious location
Duration: Alert triggered 2 hours ago
```

**What You'll Investigate:**
- ✅ GuardDuty finding details and severity
- ✅ CloudTrail logs for credential usage
- ✅ IAM user access key activity
- ✅ API calls made by compromised credentials
- ✅ Resources accessed or created
- ✅ Blast radius assessment

**Root Cause Discovery:**
Investigate GuardDuty findings, trace API calls in CloudTrail, assess what resources were accessed, and determine containment strategy.

**AWS Services:** GuardDuty, CloudTrail, IAM, AWS Config

**Learning Outcomes:**
- Security incident response procedures
- GuardDuty finding interpretation
- Credential compromise containment
- CloudTrail investigation techniques
- Implementing detective controls

[📖 **Full Incident Guide →**](scenarios/004-guardduty-alert/README.md)

---

### 🔵 Scenario 005: EC2 High CPU Utilization

**Incident Report:**
```
Priority: P2 (High)
Customer Impact: Application performance degraded
Symptoms: EC2 instance running at 95%+ CPU for 20 minutes
Duration: Ongoing, customers reporting slow response times
```

**What You'll Investigate:**
- ✅ CloudWatch CPU metrics and trends
- ✅ Process-level CPU usage
- ✅ Application logs for errors
- ✅ Memory and disk I/O metrics
- ✅ Recent deployments or changes
- ✅ Auto-scaling configuration

**Root Cause Discovery:**
Use CloudWatch metrics, SSH into instance to check processes, review application logs, and determine if it's a code issue, resource constraint, or external attack.

**AWS Services:** EC2, CloudWatch, Auto Scaling, Systems Manager

**Learning Outcomes:**
- Performance troubleshooting workflow
- CloudWatch metrics interpretation
- SSH debugging techniques
- Identifying runaway processes
- Right-sizing recommendations

[📖 **Full Incident Guide →**](scenarios/005-ec2-high-cpu/README.md)

---

### 🟢 Scenario 006: Lambda DynamoDB Throttling

**Incident Report:**
```
Priority: P2 (High)
Customer Impact: API requests failing with 500 errors
Symptoms: Lambda function errors - DynamoDB throttling exceptions
Duration: Started 45 minutes ago, error rate climbing
```

**What You'll Investigate:**
- ✅ Lambda CloudWatch Logs for exceptions
- ✅ DynamoDB throttle metrics
- ✅ Read/write capacity units consumed
- ✅ Lambda concurrency and retries
- ✅ Query patterns and hot partitions
- ✅ Burst capacity usage

**Root Cause Discovery:**
Analyze why DynamoDB is throttling—insufficient provisioned capacity, hot partition key, or sudden traffic spike—and implement proper scaling.

**AWS Services:** Lambda, DynamoDB, CloudWatch

**Learning Outcomes:**
- DynamoDB throttling diagnosis
- Capacity planning and scaling
- Understanding partition keys
- Lambda retry behavior
- Performance optimization

[📖 **Full Incident Guide →**](scenarios/006-lambda-dynamodb/README.md)

---

### ⚫ Scenario 007: Multi-Service Outage (Advanced)

**Incident Report:**
```
Priority: P0 (Critical - Multiple Services Down)
Customer Impact: Complete service outage affecting all customers
Symptoms: Web app down, API errors, database connectivity issues
Duration: Outage started 10 minutes ago
```

**What You'll Investigate:**
- ✅ Multiple CloudWatch dashboards
- ✅ Service health across EC2, Lambda, RDS, ALB
- ✅ Recent infrastructure changes (CloudTrail)
- ✅ Network connectivity between services
- ✅ Dependency chain analysis
- ✅ Cascading failure identification

**Root Cause Discovery:**
This complex scenario requires investigating multiple services simultaneously, identifying the primary failure point, and understanding how it cascaded through the system.

**AWS Services:** EC2, Lambda, RDS, ALB, CloudWatch, CloudTrail, VPC

**Learning Outcomes:**
- Multi-service incident response
- Systematic triage under pressure
- Dependency mapping
- War room communication
- Post-incident review process

[📖 **Full Incident Guide →**](scenarios/007-multi-service/README.md)

---

## 🚀 Quick Start

### Prerequisites

```bash
✓ AWS Account (Free Tier works)
✓ AWS CLI configured
✓ Terraform 1.0+
✓ Python 3.9+
✓ Basic understanding of AWS services
```

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/charles-bucher/AWS_Cloud_Support_Sim.git
cd AWS_Cloud_Support_Sim

# 2. Install Python dependencies
pip install -r requirements.txt

# 3. Start with Scenario 001
cd scenarios/001-ec2-connectivity

# 4. Read the incident brief
cat README.md

# 5. Deploy the "broken" infrastructure
cd terraform
terraform init
terraform apply

# 6. Follow incident response workflow:
#    → Receive incident report
#    → Investigate using CloudWatch/AWS Console
#    → Analyze logs and metrics
#    → Identify root cause
#    → Implement remediation
#    → Document findings
#    → Apply prevention measures

# 7. Clean up resources
terraform destroy
```

---

## 📂 Project Structure

```
AWS_Cloud_Support_Sim/
├── .github/
│   └── workflows/          # CI/CD automation
├── diagrams/               # Architecture diagrams
├── docs/                   # Documentation
│   ├── incident-response-playbook.md
│   └── troubleshooting-guide.md
├── scenarios/              # The 7 incident scenarios
│   ├── 001-ec2-connectivity/
│   │   ├── terraform/      # Infrastructure with the "issue"
│   │   ├── scripts/        # Investigation helper scripts
│   │   ├── screenshots/    # Visual investigation examples
│   │   └── README.md       # Incident brief & walkthrough
│   ├── 002-s3-security/
│   ├── 003-lambda-timeout/
│   ├── 004-guardduty-alert/
│   ├── 005-ec2-high-cpu/
│   ├── 006-lambda-dynamodb/
│   └── 007-multi-service/
├── scripts/                # Utility scripts
│   ├── validate_system.py
│   └── health_check.py
├── src/                    # Core utilities
├── tests/                  # Validation tests
├── main.py                 # Main application
└── README.md              # This file
```

---

## 🎓 Learning Path

### 🟢 Beginner Track (Start Here)

**Scenario 001: EC2 Connectivity** (2-3 hours)
- Learn basic AWS troubleshooting
- Practice reading VPC Flow Logs
- Understand security groups

**Scenario 002: S3 Security** (2-3 hours)
- Introduction to security incidents
- Practice CloudTrail investigation
- Learn IAM and bucket policies

### 🟡 Intermediate Track

**Scenario 003: Lambda Timeout** (3 hours)
- CloudWatch Logs deep dive
- Serverless troubleshooting
- Performance optimization

**Scenario 005: EC2 High CPU** (3 hours)
- System performance investigation
- Process-level debugging
- Right-sizing methodology

**Scenario 006: DynamoDB Throttling** (3 hours)
- Database performance issues
- Capacity planning
- Query optimization

### 🔴 Advanced Track

**Scenario 004: GuardDuty Alert** (3-4 hours)
- Security incident response
- Forensic investigation
- Containment strategies

**Scenario 007: Multi-Service Outage** (4-5 hours)
- Complex incident triage
- Multi-service troubleshooting
- Production war room simulation

**Total Time:** 20-25 hours to complete all scenarios with documentation

---

## 💡 Skills You'll Gain

### 🔍 Incident Response

```
✓ Triage methodology and prioritization
✓ Systematic investigation approach
✓ Root cause analysis techniques
✓ Communication during incidents
✓ Post-incident review documentation
```

### ☁️ AWS Troubleshooting

```
✓ CloudWatch Logs and Metrics interpretation
✓ VPC networking diagnosis
✓ Security group and NACL debugging
✓ Lambda performance troubleshooting
✓ DynamoDB capacity management
✓ IAM permission issues
```

### 📊 Observability

```
✓ Reading CloudWatch dashboards
✓ Analyzing VPC Flow Logs
✓ CloudTrail forensic investigation
✓ GuardDuty finding interpretation
✓ Metric correlation and analysis
```

### 🔒 Security Response

```
✓ Security incident investigation
✓ Credential compromise containment
✓ S3 bucket security hardening
✓ IAM policy review and remediation
✓ Implementing preventive controls
```

### 🛠️ Technical Skills

```
✓ AWS CLI proficiency
✓ Terraform infrastructure debugging
✓ Python scripting for automation
✓ SSH and system administration
✓ Log pattern recognition
```

---

## 🔧 Incident Response Methodology

Each scenario follows the standard cloud support workflow:

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
   └─→ Reproduce the issue if possible
   └─→ Isolate the failing component
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

## 📈 What Makes This Different

| Traditional Tutorials | This Simulator |
|----------------------|----------------|
| ❌ Build perfect infrastructure | ✅ Fix broken production systems |
| ❌ Everything works first try | ✅ Diagnose real failures |
| ❌ No time pressure | ✅ Simulate critical incidents |
| ❌ Skip troubleshooting | ✅ Practice investigation skills |
| ❌ No customer communication | ✅ Draft incident updates |

---

## 🎯 Use Cases

### For Job Seekers

**Portfolio Project**
- Demonstrate hands-on troubleshooting experience
- Show systematic problem-solving approach
- Prove CloudWatch and logging skills

**Interview Preparation**
- Reference specific incidents you've investigated
- Discuss your troubleshooting methodology
- Show familiarity with production scenarios

**Resume Skills**
- List concrete AWS services debugged
- Show incident response experience
- Demonstrate observability knowledge

### For Cloud Support Engineers

**Skills Development**
- Practice new service troubleshooting
- Refine investigation methodology
- Build troubleshooting playbooks

**Certification Prep**
- AWS Solutions Architect - Associate/Professional
- AWS SysOps Administrator
- Hands-on experience for scenario questions

### For Career Changers

**Build Confidence**
- Work through real scenarios in safe environment
- Develop troubleshooting muscle memory
- Learn to read logs like a pro

**Prove Capabilities**
- Tangible evidence of support skills
- GitHub project showing investigation work
- Document problem-solving abilities

---

## 🛠️ Technologies Used

| Category | Technologies |
|----------|-------------|
| **Cloud Platform** | AWS (EC2, S3, Lambda, VPC, IAM, GuardDuty, CloudWatch) |
| **Infrastructure** | Terraform, Infrastructure as Code |
| **Monitoring** | CloudWatch Logs, Metrics, Alarms, VPC Flow Logs, CloudTrail |
| **Languages** | Python 3.9+, Bash, HCL (Terraform) |
| **Security** | GuardDuty, IAM, CloudTrail, AWS Config |
| **Tools** | AWS CLI, boto3, Git |

---

## 💼 Scenario Difficulty & Time

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

## 🔒 Cost & Resource Management

### AWS Costs

**Free Tier Compatible:** All scenarios run on AWS Free Tier

**Estimated Monthly Cost:**
- EC2: $0 (t2.micro in Free Tier)
- Lambda: $0 (1M free requests)
- CloudWatch: $3-5 (logs and metrics)
- DynamoDB: $0 (25 GB free)
- **Total: < $5/month**

### Cost Controls

```bash
✓ Use t2.micro and t3.micro instances
✓ Deploy only during active learning
✓ Set up billing alerts ($10, $20 thresholds)
✓ Run `terraform destroy` after each scenario
✓ Check AWS Console for orphaned resources
```

### Complete Cleanup

```bash
# Destroy all scenario infrastructure
cd scenarios/001-ec2-connectivity/terraform
terraform destroy -auto-approve

# Repeat for all scenarios
# Or use cleanup script:
python scripts/cleanup_all.py
```

---

## 📖 Documentation

Each scenario includes:

- **Incident Brief** - Initial report with symptoms
- **Investigation Guide** - Step-by-step troubleshooting
- **Expected Findings** - What you should discover
- **Remediation Steps** - How to fix the issue
- **Prevention Measures** - Stop it from happening again
- **Learning Outcomes** - Skills practiced
- **Additional Resources** - AWS docs and best practices

---

## ✅ Validation

Each scenario includes validation to confirm your fix:

```bash
# After implementing your fix, run validation
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

## 🎓 Learning Resources

### AWS Documentation
- [CloudWatch Logs Insights](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html)
- [VPC Flow Logs](https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html)
- [GuardDuty Findings](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_findings.html)
- [Lambda Monitoring](https://docs.aws.amazon.com/lambda/latest/dg/lambda-monitoring.html)

### AWS Well-Architected Framework
- [Operational Excellence Pillar](https://docs.aws.amazon.com/wellarchitected/latest/operational-excellence-pillar/welcome.html)
- [Security Pillar](https://docs.aws.amazon.com/wellarchitected/latest/security-pillar/welcome.html)
- [Reliability Pillar](https://docs.aws.amazon.com/wellarchitected/latest/reliability-pillar/welcome.html)

---

## 📞 Connect

**Charles Bucher** | Cloud Support Engineer | AWS Troubleshooting Specialist

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0077B5?style=for-the-badge&logo=linkedin)](https://linkedin.com/in/charles-bucher-cloud)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-181717?style=for-the-badge&logo=github)](https://github.com/charles-bucher)

---

## 🌟 Related Projects

**Hands-On AWS Learning:**

- **[AWS Error-Driven Troubleshooting Lab](https://github.com/charles-bucher/AWS_Error_Driven_Troubleshooting_Lab)** - Break and fix AWS infrastructure systematically
- **[AWS CloudOps Suite](https://github.com/charles-bucher/AWS_CloudOps_Suite)** - Production-grade automation and monitoring

---

## 🤝 Contributing

Contributions welcome! Help improve these scenarios:

- 🐛 Report issues or unclear instructions
- 💡 Suggest new incident scenarios
- 📝 Improve documentation and runbooks
- ✨ Add investigation tools and scripts
- 🧪 Contribute validation tests

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## 📜 License

MIT License - see [LICENSE.md](LICENSE.md) for details.

Free to use for learning, portfolio projects, and interview preparation.

---

## 🏆 Success Metrics

Track your incident response skills:

- [ ] 🟢 Completed 2 beginner scenarios
- [ ] 🟡 Completed 3 intermediate scenarios
- [ ] 🔴 Completed 2 advanced scenarios
- [ ] 📝 Documented all investigations
- [ ] 🎯 Average resolution time < 2 hours
- [ ] ⭐ Added to resume/portfolio
- [ ] 💼 Referenced in job interview
- [ ] 🎊 Landed cloud support role

---

## ⭐ Support This Project

**If this helped you land a cloud role or improve your troubleshooting skills:**

1. ⭐ **Star this repository** - Help others discover it
2. 📢 **Share** - Tell others learning AWS
3. 💼 **Mention in interviews** - Reference specific scenarios
4. 🤝 **Connect** - Share your success story

---

<div align="center">

**Learn troubleshooting by responding to real incidents**

Practice makes perfect. Incidents make you better.

Made with 🔧 for cloud support engineers by cloud support engineers

**[⬆ Back to Top](#aws-cloud-support-simulator)**

</div>

---

## 📋 Keywords for ATS/Search

AWS cloud support, incident response, troubleshooting AWS, CloudWatch Logs, root cause analysis, AWS support engineer, cloud operations, EC2 troubleshooting, Lambda debugging, S3 security, GuardDuty alerts, VPC networking, security incident response, performance troubleshooting, AWS monitoring, observability, CloudTrail forensics, technical support engineer, site reliability engineering, production debugging, AWS certification prep, hands-on AWS labs, cloud support portfolio, AWS troubleshooting methodology, incident management, problem resolution, AWS best practices, cloud engineer entry level
## Deployment
Content to be added.

## Tech Stack
Content to be added.

## Setup Instructions
1. Clone the repo
2. Install dependencies (`pip install -r requirements.txt` or as needed)
3. Configure environment variables if required
4. Run scripts or tests

## Usage Examples
```bash
python script_name.py --example-arg value
```
Replace with actual usage commands for this repo.

## Screenshots
Include screenshots of outputs, dashboards, or any UI here. Example:
![Example](path_to_screenshot.png)

## Contact
Reach me at your-email@example.com or GitHub: https://github.com/Charles-Bucher


## Overview
_TODO: Describe this section._


## Features
_TODO: Describe this section._


## Skills Demonstrated
_TODO: Describe this section._


## License
_TODO: Describe this section._
