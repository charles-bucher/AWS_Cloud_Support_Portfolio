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
- **Status:** 8 complete scenarios, actively building more  
- **Goal:** Land remote Cloud Support Engineer role ($60k-80k)

---

## 💡 What This Actually Is

I'm **Charles**, a 40-year-old self-taught cloud engineer with a delivery driver background, transitioning into cloud support. Instead of just saying "I know AWS," I built this portfolio to **prove** I can troubleshoot real production issues.

**What makes this different:**
- ❌ Environments are **intentionally broken** (not tutorials)
- 🔍 Shows **my actual troubleshooting process**
- 📝 Includes **root cause analysis** for each issue
- 🛠️ Contains **Python automation scripts** I wrote
- 📊 Documented with step-by-step walkthroughs

**Why I built this:**  
Remote cloud support roles care more about your troubleshooting ability than credentials. This portfolio shows hiring managers I can solve real incidents from day one.

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

## 📊 Sample Troubleshooting: EC2 Connectivity

### The Problem
```
Customer Report: "My EC2 instance can't reach the internet. 
Instance ID: i-0abc123. Please help ASAP."
```

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

#### Step 2: Test Connectivity
```bash
# From inside EC2 instance
ping 8.8.8.8
# Result: Request timeout
```

**Finding:**
- 🔴 Cannot reach internet
- **Conclusion:** Network routing issue

#### Step 3: Check VPC Configuration
```bash
aws ec2 describe-route-tables --filters "Name=vpc-id,Values=vpc-xyz"
```

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
- Set up alerts to prevent future deletions

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

### Automation Scripts Example
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
- **Version Control:** Git, GitHub
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
├── Diagrams/              # Architecture diagrams (in progress)
├── screenshots/           # Visual documentation (in progress)
├── main.py               # Scenario launcher
├── main.tf               # Terraform infrastructure
├── requirements.txt      # Python dependencies
└── README.md             # This file
```

---

## 📈 My Learning Journey

### Current Status (December 2024)
- ✅ 8 scenarios completed and documented
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
| **Cloud Support Engineer** | 8 documented AWS troubleshooting scenarios | $60-80k |
| **Technical Support Engineer** | Python automation + systematic troubleshooting | $55-75k |
| **CloudOps Engineer** | IaC with Terraform + monitoring experience | $65-85k |
| **NOC Analyst** | Incident response + AWS monitoring | $50-70k |
| **Junior DevOps Engineer** | Git + automation + AWS services | $60-80k |

**Seeking:** 100% remote positions with flexible schedules at felon-friendly employers

---

## 💼 Why Hire Me?

### Traditional Candidate:
- "I completed an AWS certification course"
- "I know EC2, S3, and Lambda"
- Resume lists technologies

### What I Can Show:
- ✅ **8 documented troubleshooting cases** with step-by-step solutions
- ✅ **15+ automation scripts** solving real AWS problems
- ✅ **Systematic approach** to incident response (not guessing)
- ✅ **Clear documentation** demonstrating communication skills
- ✅ **Self-taught** proving I can learn independently

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