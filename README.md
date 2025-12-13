# AWS Cloud Support Simulation 🛠️☁️

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
![Python](https://img.shields.io/badge/python-3.8+-blue.svg)
![AWS](https://img.shields.io/badge/AWS-Free%20Tier-orange.svg)

> **Self-taught cloud engineer building real troubleshooting skills through hands-on AWS scenarios**

**Charles Bucher** | Pinellas Park, FL  
📧 quietopscb@gmail.com | [LinkedIn](https://linkedin.com/in/charles-bucher-cloud) | [GitHub](https://github.com/charles-bucher)

---

## 🎯 TL;DR

**What:** AWS troubleshooting lab with intentionally broken scenarios  
**Why:** Build real support skills, not just tutorial knowledge  
**Status:** 8 complete scenarios, actively building more  
**Goal:** Land remote Cloud Support Engineer role ($60k-80k)

---

## 📸 Visual Overview

![AWS Cloud Support Diagram](Diagrams/aws_cloud_support_overview.png)
*Architecture showing EC2, VPC, Lambda, and S3 troubleshooting scenarios*

### Real Troubleshooting in Action

| Scenario | Before (Problem) | After (Fixed) |
|----------|------------------|---------------|
| **EC2 Connectivity** | ![EC2 Problem](screenshots/01_ec2_before.png) | ![EC2 Fixed](screenshots/01_ec2_after.png) |
| **S3 Access Denied** | ![S3 Problem](screenshots/02_s3_before.png) | ![S3 Fixed](screenshots/02_s3_after.png) |
| **Lambda Timeout** | ![Lambda Problem](screenshots/03_lambda_before.png) | ![Lambda Fixed](screenshots/03_lambda_after.png) |

*↑ Click screenshots to see full troubleshooting documentation*

---

## 💡 What This Actually Is

I'm **Charles**, a self-taught cloud engineer with a delivery driver background, transitioning to cloud support. Instead of just saying "I know AWS," I built this portfolio to **prove** I can troubleshoot real production issues.

**What's different about this repo:**
- ❌ Environments are **intentionally broken** (not tutorials)
- 🔍 Shows **my actual troubleshooting process**
- 📝 Includes **root cause analysis** for each issue
- 🛠️ Contains **Python automation scripts** I wrote
- 📊 Has **screenshots and diagrams** showing my work

**Why I built this:**  
Remote cloud support roles care more about your troubleshooting ability than where you went to school. This portfolio shows hiring managers I can solve real incidents from day one.

---

## 🔧 What I've Actually Built

### Completed Scenarios (8/15)

| # | Problem | What I Fixed | Skills Used |
|---|---------|--------------|-------------|
| ✅ 1 | EC2 can't reach internet | Found missing route to IGW | VPC, Route Tables, Networking |
| ✅ 2 | S3 bucket denies access | Fixed IAM policy + bucket policy | IAM, S3, Least Privilege |
| ✅ 3 | Lambda times out | Added VPC endpoint for S3 | Lambda, VPC, Endpoints |
| ✅ 4 | Security group blocks SSH | Identified removed port 22 rule | Security Groups, CloudTrail |
| ✅ 5 | GuardDuty security alert | Investigated unauthorized API calls | GuardDuty, Incident Response |
| ✅ 6 | CloudWatch false alarms | Adjusted metric thresholds | CloudWatch, Monitoring |
| ✅ 7 | IAM permission denied | Debugged policy attachments | IAM, Policy Troubleshooting |
| ✅ 8 | VPC subnet can't communicate | Fixed NACL inbound/outbound rules | NACLs, Network Isolation |

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

### My Investigation Process

**Step 1: Check Instance Status**
```bash
aws ec2 describe-instance-status --instance-ids i-0abc123
```
![Instance Status Check](screenshots/troubleshooting_01_status.png)
- ✅ Instance running
- ✅ System checks passing
- ✅ Instance checks passing
- **Conclusion:** Not an instance-level problem

**Step 2: Test Connectivity**
```bash
# Try to ping internet from instance
ping 8.8.8.8
# Result: Request timeout
```
![Ping Test](screenshots/troubleshooting_02_ping.png)
- 🔴 Cannot reach internet
- **Conclusion:** Network routing issue

**Step 3: Check VPC Configuration**
```bash
aws ec2 describe-route-tables --filters "Name=vpc-id,Values=vpc-xyz"
```
![Route Table Check](screenshots/troubleshooting_03_routes.png)

**Found the problem:**
```
Expected: 0.0.0.0/0 → igw-abc123
Actual:   [MISSING]
```

**Step 4: Root Cause**
- Route to Internet Gateway was deleted
- Without default route, traffic can't leave VPC
- CloudTrail shows admin removed it yesterday

**Step 5: Fix Applied**
```bash
aws ec2 create-route \
  --route-table-id rtb-xyz \
  --destination-cidr-block 0.0.0.0/0 \
  --gateway-id igw-abc123
```
![Route Fixed](screenshots/troubleshooting_04_fixed.png)

**Step 6: Verify**
```bash
ping 8.8.8.8
# Result: Success! 64 bytes from 8.8.8.8
```
✅ **Resolved in 15 minutes**

### What I Learned
- Always check routing before assuming instance problems
- CloudTrail is essential for finding who changed what
- Document everything for future reference

**[Full writeup with code →](scenarios/01_ec2_connectivity/)**

---

## 🛠️ Tech Stack

### Cloud Services (AWS)
```
Compute:    EC2, Lambda, Auto Scaling
Networking: VPC, Security Groups, NACLs, Route Tables, IGW, NAT Gateway
Storage:    S3, EBS
Database:   RDS
Security:   IAM, GuardDuty, CloudTrail, AWS Config
Monitoring: CloudWatch, CloudWatch Logs
IaC:        CloudFormation, Terraform
```

### Automation & Scripts
```python
# Example: Automated Security Group Checker
import boto3

def check_ssh_access():
    ec2 = boto3.client('ec2')
    instances = ec2.describe_instances(
        Filters=[{'Name': 'instance-state-name', 'Values': ['running']}]
    )
    
    for reservation in instances['Reservations']:
        for instance in reservation['Instances']:
            # Check if SSH port 22 is open
            has_ssh = check_security_groups(instance)
            if not has_ssh:
                print(f"⚠️ Instance {instance['InstanceId']} has no SSH access")
```

**Languages:** Python 3.8+, Bash, PowerShell  
**Libraries:** Boto3, AWS CLI  
**Version Control:** Git, GitHub

---

## 🚀 Try It Yourself

### Prerequisites
- AWS Free Tier account
- Python 3.8+
- Basic AWS knowledge

### Quick Start
```bash
# 1. Clone this repo
git clone https://github.com/charles-bucher/AWS_Cloud_Support_Sim.git
cd AWS_Cloud_Support_Sim

# 2. Set up Python environment
python -m venv venv
source venv/bin/activate  # or .\venv\Scripts\activate on Windows
pip install -r requirements.txt

# 3. Configure AWS credentials
aws configure
# Enter your AWS Access Key ID, Secret Key, and region

# 4. Run a scenario
python main.py
```

### Repository Structure
```
AWS_Cloud_Support_Sim/
├── scenarios/              # Detailed troubleshooting writeups
│   ├── 01_ec2_connectivity/
│   │   ├── README.md      # Full documentation
│   │   ├── problem.py     # Script to create broken environment
│   │   └── solution.py    # Script with fix
│   └── 02_s3_access/
├── scripts/               # Reusable automation tools
│   ├── check_security_groups.py
│   ├── analyze_iam_policies.py
│   └── monitor_cloudwatch.py
├── Diagrams/              # Architecture diagrams
├── screenshots/           # Visual documentation
├── main.py               # Scenario launcher
├── main.tf               # Terraform infrastructure
└── requirements.txt      # Python dependencies
```

---

## 📈 My Progress

### Current Status (December 2024)
- ✅ 8 scenarios completed and documented
- ✅ 15+ automation scripts written
- ✅ 50+ screenshots captured
- ✅ 5+ architecture diagrams created
- 🚧 Studying for AWS Cloud Practitioner (exam in January)
- 🎯 Applying to remote cloud support roles

### Learning Path
1. ✅ Built foundational AWS knowledge (self-taught)
2. ✅ Created hands-on troubleshooting portfolio (this repo)
3. 🚧 AWS Cloud Practitioner certification (in progress)
4. 📅 AWS Solutions Architect Associate (planned March 2025)
5. 🎯 Land Cloud Support Engineer role ($60-80k)

---

## 🎯 Target Roles I'm Ready For

| Role | Why I'm Qualified | Salary Range |
|------|-------------------|--------------|
| **Cloud Support Engineer** | 8 documented AWS troubleshooting cases | $60-80k |
| **Technical Support Engineer** | Python automation + systematic approach | $55-75k |
| **CloudOps Engineer** | IaC with Terraform, monitoring setup | $65-85k |
| **NOC Analyst** | Incident response, monitoring experience | $50-70k |
| **Junior DevOps** | Git, automation, AWS services | $60-80k |

**Seeking:** 100% remote positions, flexible schedule, felon-friendly employers

---

## 💼 Why Hire Me?

### Traditional Candidate Says:
- "I completed an AWS course"
- "I know EC2 and S3"
- Resume lists technologies

### I Can Show:
- ✅ **8 documented troubleshooting cases** with before/after screenshots
- ✅ **15+ automation scripts** I wrote to solve real problems
- ✅ **Systematic approach** to incident response (not guessing)
- ✅ **Clear documentation** showing I can communicate technical issues
- ✅ **Self-taught** proving I can learn independently

### Soft Skills from Non-Tech Background
- **Customer service** (5+ years helping frustrated customers)
- **Problem-solving under pressure** (delivery driver, time-sensitive)
- **Reliability** (clean record 17+ years, stable family life)
- **Communication** (explaining technical issues to non-technical people)

---

## 📸 More Screenshots

### Scenario Gallery

**1. EC2 Internet Connectivity**  
![EC2 Diagram](screenshots/scenario_01_diagram.png)
- Problem: Missing route to Internet Gateway
- Fix: Created default route 0.0.0.0/0 → IGW
- Time: 15 minutes

**2. S3 Access Denied**  
![S3 Permissions](screenshots/scenario_02_diagram.png)
- Problem: Conflicting IAM policy and bucket policy
- Fix: Corrected policy to allow specific IAM role
- Time: 20 minutes

**3. Lambda Timeout in VPC**  
![Lambda VPC](screenshots/scenario_03_diagram.png)
- Problem: Lambda in VPC can't reach S3
- Fix: Added VPC endpoint for S3
- Time: 25 minutes

**4. Security Group SSH Blocked**  
![Security Groups](screenshots/scenario_04_diagram.png)
- Problem: Port 22 rule removed from security group
- Fix: Re-added SSH rule with proper CIDR
- Time: 10 minutes

**5. GuardDuty Unauthorized Access Alert**  
![GuardDuty Alert](screenshots/scenario_05_diagram.png)
- Problem: Compromised IAM credentials detected
- Fix: Disabled access keys, rotated credentials
- Time: 30 minutes

---

## 🤝 Honest Disclosure

### My Background
- **Age:** 40 years old
- **Location:** Pinellas Park, FL
- **Family:** Married 10+ years, 3 kids (11, 10, 1)
- **Current Work:** Part-time delivery driver ($20k/year)
- **Wife:** Remote chat support ($33k/year)
- **Total Household:** $53k/year

### Career Transition
- **Goal:** Remote Cloud Support role at $60-80k
- **Why Cloud:** Felon-friendly, skills-based, growing field
- **Investment:** 500+ hours self-teaching AWS since June 2024
- **Timeline:** Ready to start immediately

### Background Check Disclosure
I have a felony conviction from 2003-2008 (over 17 years ago). Since my release, I've:
- Maintained a completely clean record for 17+ years
- Built a stable family (married 10+ years, father of three)
- Invested heavily in developing technical skills
- Worked consistently in customer-facing roles

I'm seeking employers who evaluate candidates on current skills and character, not past mistakes. I'm open to discussing this in detail during interviews.

---

## 📞 Contact & Links

**Charles Bucher**  
📍 Pinellas Park, Florida (100% Remote Only)  
📧 quietopscb@gmail.com  
🔗 [LinkedIn](https://linkedin.com/in/charles-bucher-cloud)  
💻 [GitHub](https://github.com/charles-bucher)  
📂 [This Portfolio](https://github.com/charles-bucher/AWS_Cloud_Support_Sim)

**Currently:** Actively applying to Cloud Support Engineer roles  
**Available:** Immediately for full-time remote work  
**Schedule:** Flexible (including nights/weekends/on-call)  
**Equipment:** Dedicated home office, fiber internet (500 Mbps)

---

## 📋 Next Steps

### For Hiring Managers
1. ⭐ **Star this repo** if you like what you see
2. 📧 **Email me** to discuss how I can help your team
3. 📅 **Schedule a call** - I can walk through any scenario live
4. 💬 **Ask questions** - I'm responsive and eager to talk

### For Fellow Learners
1. 🔀 **Fork this repo** to try scenarios yourself
2. 📝 **Read the scenario docs** in the `scenarios/` folder
3. 🛠️ **Run the automation scripts** to see how they work
4. 💬 **Open an issue** if you have questions

### For Me (Public Accountability)
- [ ] Complete AWS Cloud Practitioner exam (January 2025)
- [ ] Add 2 more scenarios (ELB, Auto Scaling)
- [ ] Record video walkthrough of one scenario
- [ ] Apply to 50 Cloud Support roles by January 31st
- [ ] Get first Cloud Support interview by February 2025

---

## ⭐ If This Helped You

If you're:
- Learning AWS troubleshooting
- Building a cloud support portfolio
- Preparing for cloud interviews
- Career-changing into tech

**Please star this repo!** It helps others find it and shows hiring managers there's interest in this type of practical learning.

---

## 📄 License & Contributing

**License:** MIT License - Use this freely for learning  
**Contributing:** Issues and PRs welcome! See [CONTRIBUTING.md](CONTRIBUTING.md)  
**Code of Conduct:** See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md)  
**Security:** Report vulnerabilities via [SECURITY.md](SECURITY.md)

---

## 🙏 Acknowledgments

- **AWS Documentation** - for comprehensive service guides
- **r/aws community** - for troubleshooting insights
- **My family** - for supporting my career change
- **Fellow self-taught engineers** - for proving it's possible

---

**Last Updated:** December 13, 2024  
**Repository Status:** Actively maintained (updated weekly)  
**Job Search Status:** Actively applying to remote Cloud Support roles

---

Built with ☁️ by someone who believes **skills > credentials** and **actions > promises**

[⬆️ Back to Top](#aws-cloud-support-simulation-️️)