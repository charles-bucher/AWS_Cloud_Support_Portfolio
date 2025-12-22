# AWS Cloud Support Simulation 🛠️☁️

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
![Python](https://img.shields.io/badge/python-3.8+-blue.svg)
![AWS](https://img.shields.io/badge/AWS-Free%20Tier-orange.svg)

> **Self-taught cloud engineer building real troubleshooting skills through hands-on AWS scenarios**

**Charles Bucher** | Pinellas Park, FL  
📧 quietopscb@gmail.com | [LinkedIn](https://linkedin.com/in/charles-bucher-cloud) | [GitHub](https://github.com/charles-bucher)

---

## 🎯 TL;DR

- **What:** AWS troubleshooting lab with intentionally broken scenarios  
- **Why:** Build real support skills, not just tutorial knowledge  
- **Status:** 8 complete scenarios with real AWS implementations  
- **Goal:** Land remote Cloud Support Engineer role ($60k-80k)

---

## 🏗️ Architecture Overview

![AWS Cloud Support Architecture](Diagrams/AWS_Cloud_Support_Diagram.png)
*Complete cloud support simulation architecture showing VPC, EC2, Lambda, S3, GuardDuty, and troubleshooting scenarios*

---

## 📸 Real AWS Infrastructure - Screenshots

### 1. VPC Setup & Architecture
![VPC Setup](screenshots/ACSS_01_VPC_Setup.png)
*Complete VPC configuration with subnets, internet gateway, and routing*

### 2. Subnets & Route Tables
![Subnets and Route Tables](screenshots/ACSS_02_Subnets_RouteTables.PNG)
*Public/private subnet configuration with custom route tables for multi-tier architecture*

### 3. Security Groups & Network ACLs
![Security Groups and NACLs](screenshots/ACSS_03_SecurityGroups_NACLs.png)
*Security group rules and Network ACLs controlling inbound/outbound traffic*

### 4. Professional Git Workflow
![Git Branch-Merge Workflow](screenshots/ACSS_04_Git-Branch-Merge-Workflow.png)
*Git branching strategy with feature branches, pull requests, and code reviews*

### 5. Python Boto3 Automation - GuardDuty Findings
![GuardDuty Automation](screenshots/ACSS_05_Python-Boto3-GuardDuty-Findings-Automation.png)
*Python script automating GuardDuty security findings analysis and incident response*

### 6. S3 Bucket Configuration
![S3 Buckets](screenshots/ACSS_06_S3_Buckets.PNG)
*S3 bucket policies, versioning, encryption, and access control configurations*

### 7. IAM Roles & Policies
![IAM Configuration](screenshots/ACSS_07_IAM_Roles_Policies.PNG)
*Least-privilege IAM roles and policies for secure cloud operations*

### 8. Service Health & Monitoring
![Service Health Dashboard](screenshots/ACSS_08_Service_Health.PNG)
*CloudWatch monitoring, alarms, and AWS service health status tracking*

---

## 💡 What This Actually Is

I'm **Charles**, a 40-year-old self-taught cloud engineer with a delivery driver background, transitioning into cloud support. Instead of just saying "I know AWS," I built this portfolio to **prove** I can troubleshoot real production issues.

**What makes this different:**
- ✅ **Real AWS infrastructure** deployed and running (see screenshots above)
- ✅ **Complete architecture diagram** showing all components
- ❌ Environments are **intentionally broken** to practice troubleshooting
- 🔍 Shows **my actual troubleshooting process** step-by-step
- 📝 Includes **root cause analysis** for each issue
- 🛠️ Contains **Python automation scripts** I wrote using Boto3
- 📊 **Professional Git workflow** with feature branches and PRs

**Why I built this:**  
Remote cloud support roles care more about your troubleshooting ability than credentials. This portfolio shows hiring managers I can solve real incidents from day one.

---

## 🔧 What I've Actually Built

### Completed Scenarios (8/15)

| # | Problem | What I Fixed | Skills Used | Screenshot |
|---|---------|--------------|-------------|------------|
| ✅ 1 | EC2 can't reach internet | Missing route to IGW | VPC, Route Tables | [View VPC](screenshots/ACSS_01_VPC_Setup.png) |
| ✅ 2 | S3 bucket denies access | IAM + bucket policies | IAM, S3, Policies | [View S3](screenshots/ACSS_06_S3_Buckets.PNG) |
| ✅ 3 | Lambda times out | VPC endpoint for S3 | Lambda, VPC | [View Routes](screenshots/ACSS_02_Subnets_RouteTables.PNG) |
| ✅ 4 | Security group blocks SSH | Port 22 rule removed | Security Groups | [View SGs](screenshots/ACSS_03_SecurityGroups_NACLs.png) |
| ✅ 5 | GuardDuty security alert | Unauthorized API calls | GuardDuty, Python | [View Script](screenshots/ACSS_05_Python-Boto3-GuardDuty-Findings-Automation.png) |
| ✅ 6 | CloudWatch false alarms | Metric thresholds | CloudWatch | [View Health](screenshots/ACSS_08_Service_Health.PNG) |
| ✅ 7 | IAM permission denied | Policy attachments | IAM, Debugging | [View IAM](screenshots/ACSS_07_IAM_Roles_Policies.PNG) |
| ✅ 8 | VPC subnet communication | NACL rules | NACLs, Network | [View NACLs](screenshots/ACSS_03_SecurityGroups_NACLs.png) |

**[View Full Architecture Diagram](Diagrams/AWS_Cloud_Support_Diagram.png)**

### In Progress (1)

| # | Problem | Status |
|---|---------|--------|
| 🚧 9 | RDS connection fails | Testing security group + subnet fixes |

### Planned (6)

- ELB health checks failing
- Auto Scaling not scaling
- VPC Peering connectivity issues
- CloudFront caching problems
- Cost optimization investigation
- ECS container startup failures

---

## 📊 Sample Troubleshooting: EC2 Connectivity Issue

### The Problem
```
Customer Report: "My EC2 instance can't reach the internet. 
Instance ID: i-0abc123. Please help ASAP."
```

### Architecture Context

![Full Architecture](Diagrams/AWS_Cloud_Support_Diagram.png)

### My Investigation Process

#### Step 1: Check Instance Status
```bash
aws ec2 describe-instance-status --instance-ids i-0abc123
```

**Results:**
- ✅ Instance running
- ✅ System checks passing
- ✅ Instance checks passing
- **Conclusion:** Not an instance-level problem

![Service Health Check](screenshots/ACSS_08_Service_Health.PNG)

#### Step 2: Test Connectivity
```bash
# From inside EC2 instance
ping 8.8.8.8
# Result: Request timeout
```

**Finding:**
- 🔴 Cannot reach internet
- **Conclusion:** Network routing issue

#### Step 3: Check VPC & Route Table Configuration
```bash
aws ec2 describe-route-tables --filters "Name=vpc-id,Values=vpc-xyz"
```

![Route Tables Investigation](screenshots/ACSS_02_Subnets_RouteTables.PNG)

**Found the problem:**
```
Expected: 0.0.0.0/0 → igw-abc123
Actual:   [MISSING]
```

#### Step 4: Root Cause Analysis
- Route to Internet Gateway was deleted
- Without default route (0.0.0.0/0), traffic can't leave VPC
- CloudTrail shows admin removed it yesterday during "cleanup"

#### Step 5: Fix Applied
```bash
aws ec2 create-route \
  --route-table-id rtb-xyz \
  --destination-cidr-block 0.0.0.0/0 \
  --gateway-id igw-abc123
```

![Fixed VPC Configuration](screenshots/ACSS_01_VPC_Setup.png)

#### Step 6: Verify Fix
```bash
ping 8.8.8.8
# Result: Success! 64 bytes from 8.8.8.8
```

✅ **Resolved in 15 minutes**

### What I Learned
- Always check routing tables before assuming instance problems
- CloudTrail is essential for understanding what changed
- Document the entire process for knowledge sharing
- Set up CloudWatch alarms to prevent future routing deletions

**[Full scenario writeup →](scenarios/01_ec2_connectivity/)**

---

## 🛠️ Tech Stack & Tools

### AWS Services I Work With
```
Compute:    EC2, Lambda, Auto Scaling
Networking: VPC, Security Groups, NACLs, Route Tables, IGW, NAT Gateway
Storage:    S3, EBS
Database:   RDS
Security:   IAM, GuardDuty, CloudTrail, AWS Config
Monitoring: CloudWatch, CloudWatch Logs
IaC:        CloudFormation, Terraform
```

**Architecture Reference:**

![My AWS Infrastructure](Diagrams/AWS_Cloud_Support_Diagram.png)

![VPC Details](screenshots/ACSS_01_VPC_Setup.png)

### Python Automation Example

Here's my GuardDuty findings automation script in action:

![GuardDuty Automation Script](screenshots/ACSS_05_Python-Boto3-GuardDuty-Findings-Automation.png)

```python
# Automated Security Group Checker
# Detects EC2 instances without SSH access

import boto3
from datetime import datetime

def check_ssh_access(region='us-east-1'):
    """Check all running instances for SSH access"""
    ec2 = boto3.client('ec2', region_name=region)
    
    instances = ec2.describe_instances(
        Filters=[{'Name': 'instance-state-name', 'Values': ['running']}]
    )
    
    issues_found = []
    
    for reservation in instances['Reservations']:
        for instance in reservation['Instances']:
            instance_id = instance['InstanceId']
            has_ssh = False
            
            # Check each security group
            for sg in instance['SecurityGroups']:
                sg_details = ec2.describe_security_groups(GroupIds=[sg['GroupId']])
                
                for rule in sg_details['SecurityGroups'][0]['IpPermissions']:
                    if rule.get('FromPort') == 22 and rule.get('ToPort') == 22:
                        has_ssh = True
                        break
            
            if not has_ssh:
                issues_found.append({
                    'instance_id': instance_id,
                    'name': instance.get('Tags', [{}])[0].get('Value', 'N/A')
                })
    
    return issues_found

if __name__ == '__main__':
    print(f"Checking for SSH access issues... {datetime.now()}")
    issues = check_ssh_access()
    
    if issues:
        print(f"\n⚠️  Found {len(issues)} instances without SSH access:")
        for issue in issues:
            print(f"  - {issue['instance_id']} ({issue['name']})")
    else:
        print("✅ All instances have SSH access configured")
```

**Other Tools:**
- **Languages:** Python 3.8+, Bash, PowerShell
- **Libraries:** Boto3, AWS CLI
- **Version Control:** Git, GitHub (see my [workflow](screenshots/ACSS_04_Git-Branch-Merge-Workflow.png))
- **IaC:** Terraform, CloudFormation

---

## 🚀 Try It Yourself

### Prerequisites
- AWS Free Tier account
- Python 3.8 or higher
- AWS CLI configured
- Basic understanding of AWS

### Quick Start
```bash
# 1. Clone this repo
git clone https://github.com/charles-bucher/AWS_Cloud_Support_Sim.git
cd AWS_Cloud_Support_Sim

# 2. Set up Python environment
python -m venv venv

# Activate virtual environment
# Windows:
.\venv\Scripts\activate
# Linux/Mac:
source venv/bin/activate

# 3. Install dependencies
pip install -r requirements.txt

# 4. Configure AWS credentials
aws configure
# Enter your AWS Access Key ID, Secret Key, and region (us-east-1)

# 5. Run a scenario
python main.py
```

### Repository Structure
```
AWS_Cloud_Support_Sim/
├── scenarios/              # Detailed troubleshooting writeups
│   ├── 01_ec2_connectivity/
│   │   ├── README.md      # Full documentation
│   │   ├── problem.py     # Creates broken environment
│   │   └── solution.py    # Shows the fix
│   ├── 02_s3_access/
│   └── ...
├── scripts/               # Reusable automation tools
│   ├── check_security_groups.py
│   ├── analyze_iam_policies.py
│   └── monitor_cloudwatch.py
├── Diagrams/              # Architecture diagrams
│   └── AWS_Cloud_Support_Diagram.png
├── screenshots/           # Visual documentation (8 screenshots)
│   ├── ACSS_01_VPC_Setup.png
│   ├── ACSS_02_Subnets_RouteTables.PNG
│   ├── ACSS_03_SecurityGroups_NACLs.png
│   ├── ACSS_04_Git-Branch-Merge-Workflow.png
│   ├── ACSS_05_Python-Boto3-GuardDuty-Findings-Automation.png
│   ├── ACSS_06_S3_Buckets.PNG
│   ├── ACSS_07_IAM_Roles_Policies.PNG
│   └── ACSS_08_Service_Health.PNG
├── main.py               # Scenario launcher
├── main.tf               # Terraform infrastructure
├── requirements.txt      # Python dependencies
└── README.md             # This file
```

---

## 📈 My Learning Journey

### Current Status (December 2024)
- ✅ 8 scenarios completed and documented
- ✅ Complete architecture diagram created
- ✅ 8 professional screenshots captured
- ✅ 15+ automation scripts written
- ✅ 500+ hours invested in self-learning
- 🚧 Studying for AWS Cloud Practitioner (exam February 2026)
- 🎯 Actively applying to remote cloud support roles

### Certification Path
1. ✅ Built foundational AWS knowledge (self-taught, 6 months)
2. ✅ Created hands-on troubleshooting portfolio (this repo)
3. 🚧 **AWS Cloud Practitioner** (studying now, exam February 2026)
4. 📅 **AWS Solutions Architect Associate** (planned mid-2026)
5. 🎯 **Land Cloud Support Engineer role** ($60-80k)

---

## 🎯 Target Roles I'm Ready For

| Role | Why I'm Qualified | Salary Range |
|------|-------------------|--------------|
| **Cloud Support Engineer** | 8 documented troubleshooting scenarios with screenshots | $60-80k |
| **Technical Support Engineer** | Python automation + systematic troubleshooting | $55-75k |
| **CloudOps Engineer** | IaC with Terraform + monitoring experience | $65-85k |
| **NOC Analyst** | Incident response + AWS monitoring setup | $50-70k |
| **Junior DevOps Engineer** | Git workflow + automation + AWS services | $60-80k |

**Seeking:** 100% remote positions with flexible schedules at felon-friendly employers

---

## 💼 Why Hire Me?

### Traditional Candidate:
- "I completed an AWS certification course"
- "I know EC2, S3, and Lambda"
- Resume lists technologies

### What I Can Show:
- ✅ **Complete architecture diagram** of my AWS implementation
- ✅ **8 documented troubleshooting cases** with real AWS screenshots
- ✅ **15+ automation scripts** solving actual AWS problems
- ✅ **Systematic troubleshooting approach** (not guessing)
- ✅ **Professional Git workflow** with branches and PRs
- ✅ **Clear visual documentation** showing communication skills
- ✅ **Self-taught** proving I can learn independently

![Example: Complete Architecture](Diagrams/AWS_Cloud_Support_Diagram.png)

![Example: IAM Configuration](screenshots/ACSS_07_IAM_Roles_Policies.PNG)

![Example: Security Groups](screenshots/ACSS_03_SecurityGroups_NACLs.png)

### Soft Skills from Non-Tech Background:
- **Customer service** - 5+ years resolving complex customer issues
- **Problem-solving under pressure** - Time-sensitive delivery work
- **Reliability** - Clean record for 17+ years, stable family life
- **Communication** - Explaining technical concepts to non-technical people

---

## 🤝 Honest About My Background

### Personal Info
- **Age:** 40 years old
- **Location:** Pinellas Park, FL
- **Family:** Married 10+ years, father of 3 kids (ages 11, 10, 1)
- **Current Work:** Part-time delivery driver ($20k/year)
- **Wife's Work:** Remote chat support ($33k/year)
- **Household Income:** $53k/year combined

### Career Transition Goals
- **Target Role:** Remote Cloud Support Engineer
- **Target Salary:** $60-80k (would transform our family's finances)
- **Why Cloud:** Skills-based field, remote opportunities, growing industry
- **Time Invested:** 500+ hours self-teaching since June 2024
- **Availability:** Immediately available for full-time work

### Background Check Disclosure

I have a felony conviction from 2003-2008 (over 17 years ago). Since my release, I have:
- ✅ Maintained a completely clean record for 17+ years
- ✅ Built a stable family (married 10+ years, father of three)
- ✅ Worked consistently in customer-facing roles
- ✅ Invested 500+ hours developing technical skills

I'm seeking employers who evaluate candidates on **current skills and character**, not past mistakes. I'm completely open to discussing this during interviews and providing context.

**Why I'm sharing this upfront:** Honesty and transparency are important to me. I'd rather address this directly than have it come up as a surprise later.

---

## 📞 Contact Information

**Charles Bucher**  
📍 Pinellas Park, Florida (Remote Only)  
📧 quietopscb@gmail.com  
🔗 [LinkedIn Profile](https://linkedin.com/in/charles-bucher-cloud)  
💻 [GitHub Profile](https://github.com/charles-bucher)  
📂 [This Portfolio](https://github.com/charles-bucher/AWS_Cloud_Support_Sim)

**Current Status:** Actively applying to Cloud Support Engineer roles  
**Availability:** Immediate start for full-time remote work  
**Schedule Flexibility:** Available for nights/weekends/on-call rotations  
**Home Office:** Dedicated workspace with fiber internet (500 Mbps)

---

## 📋 Next Steps

### For Hiring Managers
1. ⭐ Star this repo if you're impressed with the work
2. 📧 Email me at quietopscb@gmail.com to discuss opportunities
3. 📅 Schedule a call - I can walk through any scenario live
4. 💬 Ask questions - I'm responsive and eager to connect

### For Fellow Learners
1. 🔀 Fork this repo to try scenarios yourself
2. 📝 Check out the detailed docs in `scenarios/` folder
3. 🛠️ Run the automation scripts
4. 💬 Open an issue if you have questions

### My Public Accountability Goals
- [ ] Complete AWS Cloud Practitioner exam (February 2026)
- [ ] Add RDS scenario + 1 more advanced scenario (by January 2025)
- [ ] Record video walkthrough demonstrating troubleshooting process
- [ ] Apply to 50+ Cloud Support Engineer roles by January 31st, 2025
- [ ] Land first Cloud Support interview by March 2025

---

## ⭐ If This Helps You

If you're:
- Learning AWS troubleshooting
- Building a cloud support portfolio
- Preparing for cloud support interviews
- Career-changing into tech like me

**Please star this repo!** It helps others find it and shows employers there's interest in practical, hands-on learning.

---

## 📄 License & Contributing

- **License:** MIT License - Use this code freely for learning
- **Contributing:** Issues and PRs welcome - see [CONTRIBUTING.md](CONTRIBUTING.md)
- **Code of Conduct:** See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md)
- **Security:** Report vulnerabilities via [SECURITY.md](SECURITY.md)

---

## 🙏 Acknowledgments

- **AWS Documentation** - Comprehensive service guides
- **r/aws community** - Troubleshooting insights and support
- **My wife and kids** - Supporting my career change journey
- **Fellow self-taught engineers** - Proving this path is possible

---

**Last Updated:** December 13, 2024  
**Repository Status:** Actively maintained (updated weekly)  
**Job Search Status:** Actively applying, ready to interview

---

<div align="center">

**Built with ☁️ by someone who believes:**  
**Skills > Credentials** • **Actions > Promises** • **Honesty > Perfection**

*[⬆️ Back to Top](#aws-cloud-support-simulation-️️)*

</div>
![00_code_tested.png](screenshots/00_code_tested.png)
![01_vpc_setup.png](screenshots/01_vpc_setup.png)
![02_subnets_route_tables.png](screenshots/02_subnets_route_tables.png)
![03_security_groups_nacls.png](screenshots/03_security_groups_nacls.png)
![04_git_workflow.png](screenshots/04_git_workflow.png)
![05_guardduty_automation.png](screenshots/05_guardduty_automation.png)
![06_s3_buckets.png](screenshots/06_s3_buckets.png)
![07_iam_roles.png](screenshots/07_iam_roles.png)
![08_service_health.png](screenshots/08_service_health.png)
![09_cloudwatch_validation.png](screenshots/09_cloudwatch_validation.png)


## 🔧 Installation

```bash
git clone https://github.com/charles-bucher/AWS_Cloud_Support_Sim.git
cd AWS_Cloud_Support_Sim
pip install -r requirements.txt
aws configure
```
