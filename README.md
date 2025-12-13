# AWS Cloud Support Simulation 🛠️☁️

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Python 3.8+](https://img.shields.io/badge/python-3.8+-blue.svg)](https://www.python.org/downloads/)
[![AWS](https://img.shields.io/badge/AWS-Cloud-orange.svg)](https://aws.amazon.com/)

> **Real-world AWS troubleshooting scenarios designed to demonstrate hands-on cloud support engineering skills**

## 👨‍💻 About This Project

This repository showcases **production-ready cloud support skills** through intentionally broken AWS environments that require systematic troubleshooting, root cause analysis, and documented remediation—exactly what Cloud Support Engineers do daily.

**Built by:** Charles Bucher  
**Location:** Pinellas Park, Florida  
**Contact:** quietopscb@gmail.com | [LinkedIn](https://linkedin.com/in/charles-bucher) | [GitHub](https://github.com/charles-bucher)

---

## 🎯 Why This Repository Exists

As a self-taught cloud professional, I built this to:
- **Demonstrate real troubleshooting ability** beyond certifications
- **Show employers I can solve actual production incidents**
- **Build a portfolio** of documented support cases for remote cloud roles
- **Practice the exact scenarios** Cloud Support Engineers face daily

---

## 💼 Skills Demonstrated

### Cloud Technologies
- **AWS Core Services:** EC2, VPC, S3, Lambda, IAM, CloudWatch, CloudFormation, GuardDuty
- **Networking:** Security Groups, NACLs, Route Tables, VPC configurations, connectivity troubleshooting
- **Security:** IAM policies, least-privilege access, security group misconfigurations, GuardDuty alerts

### Technical Skills
- **Automation:** Python 3.8+, Boto3 SDK, automated monitoring & remediation scripts
- **Infrastructure as Code:** Terraform, CloudFormation templates
- **DevOps Practices:** Git version control, systematic documentation, incident response workflows
- **Problem Solving:** Root cause analysis, log investigation, configuration debugging

---

## 🔧 Hands-On Scenarios

Each scenario simulates a real support ticket with:
✅ Intentionally broken environment  
✅ Step-by-step troubleshooting process  
✅ Root cause analysis  
✅ Documented solution  
✅ Screenshots & diagrams  

### Current Scenarios

| # | Scenario | Skills Tested | Status |
|---|----------|---------------|--------|
| 1 | **EC2 Cannot Connect to Internet** | VPC routing, Internet Gateway, Route Tables | ✅ Complete |
| 2 | **S3 Bucket Access Denied** | IAM policies, S3 bucket policies, least-privilege | ✅ Complete |
| 3 | **Lambda Function Timeout** | Lambda configuration, VPC endpoints, execution roles | ✅ Complete |
| 4 | **Security Group Misconfiguration** | Network troubleshooting, security rules, port issues | ✅ Complete |
| 5 | **GuardDuty Security Alert** | Security monitoring, threat detection, incident response | ✅ Complete |
| 6 | **CloudWatch Alarm False Positives** | Monitoring, metrics, threshold tuning | ✅ Complete |
| 7 | **IAM Permission Denied Errors** | Identity & Access Management, policy debugging | ✅ Complete |
| 8 | **VPC Subnet Connectivity Issues** | Subnets, NACLs, routing tables, network isolation | ✅ Complete |
| 9 | **RDS Database Connection Failure** | Database connectivity, security groups, subnet groups | 🚧 In Progress |

---

## 🚀 Quick Start

### Prerequisites
- AWS Account (Free Tier eligible)
- Python 3.8 or higher
- AWS CLI configured
- Basic understanding of AWS services

### Installation

```bash
# Clone the repository
git clone https://github.com/charles-bucher/AWS_Cloud_Support_Sim.git
cd AWS_Cloud_Support_Sim

# Create virtual environment
python -m venv venv

# Activate virtual environment
# Windows:
.\venv\Scripts\activate
# Linux/Mac:
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Configure AWS credentials
aws configure
```

### Run a Scenario

```bash
# Run the main simulation menu
python main.py

# Or run a specific scenario directly
python scenarios/ec2_connectivity.py
```

---

## 📂 Repository Structure

```
AWS_Cloud_Support_Sim/
├── scenarios/           # Individual troubleshooting scenarios
│   ├── ec2_connectivity.py
│   ├── s3_access.py
│   ├── lambda_timeout.py
│   └── ...
├── scripts/            # Automation & remediation scripts
│   ├── monitor_sg.py
│   ├── fix_iam.py
│   └── ...
├── Diagrams/           # Architecture & troubleshooting diagrams
├── screenshots/        # Step-by-step visual documentation
├── main.py            # Main simulation launcher
├── main.tf            # Terraform infrastructure code
├── requirements.txt   # Python dependencies
└── README.md          # This file
```

---

## 🎓 What Makes This Different

Most AWS repos show **perfect configurations**. This one shows:
- ❌ **Broken environments** that need fixing
- 🔍 **Systematic troubleshooting** methodology
- 📝 **Complete documentation** of the problem-solving process
- 🛠️ **Real remediation** code, not just theory
- 📊 **Visual evidence** with screenshots & diagrams

This mirrors **actual cloud support work**—not tutorials.

---

## 🎯 Target Job Roles

This portfolio is designed to demonstrate readiness for:
- ✅ Cloud Support Engineer (AWS, Azure, GCP)
- ✅ CloudOps Engineer
- ✅ Technical Support Engineer (Cloud)
- ✅ Junior DevOps Engineer
- ✅ NOC (Network Operations Center) Analyst
- ✅ Site Reliability Engineer (Entry Level)

**Salary Target:** Remote positions $60K-$100K+ annually

---

## 📈 Roadmap

### Upcoming Scenarios
- [ ] ELB Health Check Failures
- [ ] Auto Scaling Configuration Issues
- [ ] VPC Peering Connectivity
- [ ] CloudFront CDN Troubleshooting
- [ ] Cost Optimization Investigation
- [ ] ECS Container Startup Failures

### Future Enhancements
- [ ] Video walkthroughs of troubleshooting process
- [ ] Terraform modules for quick deployment
- [ ] Automated testing framework
- [ ] Cost estimation for each scenario
- [ ] Certification study guides integration

---

## 🤝 Contributing

Contributions are welcome! Whether you want to:
- Add new scenarios
- Improve documentation
- Fix bugs
- Suggest enhancements

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🔐 Security

Found a security vulnerability? Please review [SECURITY.md](SECURITY.md) for responsible disclosure.

---

## 💡 Why Hire Someone With This Portfolio?

**Traditional Applicant:**
- "I completed AWS certification courses"
- "I know EC2, S3, and Lambda"
- Resume lists technologies

**This Portfolio Shows:**
- ✅ "I've debugged 9+ real AWS scenarios with documented solutions"
- ✅ "Here's my troubleshooting methodology in action"
- ✅ "I can write automation scripts to prevent future incidents"
- ✅ "I document everything clearly for team knowledge sharing"

**Hiring managers see:** Someone who can start contributing **Day 1**.

---

## 🌟 Testimonials

> *"This isn't just another AWS tutorial repo. Charles built actual broken scenarios that force you to think like a real support engineer. The documentation quality is excellent."*  
> — Peer review from AWS community

---

## 📞 Let's Connect

**Charles Bucher**  
📍 Pinellas Park, Florida (Open to 100% Remote)  
✉️ quietopscb@gmail.com  
🔗 [GitHub](https://github.com/charles-bucher) • [LinkedIn](https://linkedin.com/in/charles-bucher)

**Currently seeking:** Remote Cloud Support Engineer or CloudOps roles

---

## ⭐ Star This Repo!

If this project helps you learn AWS troubleshooting or lands you a cloud support interview, please **star the repository**! It helps others discover these practical learning resources.

---

<div align="center">

**Built with ☁️ by someone who believes in learning by breaking things (safely)**

[Report Bug](https://github.com/charles-bucher/AWS_Cloud_Support_Sim/issues) • [Request Feature](https://github.com/charles-bucher/AWS_Cloud_Support_Sim/issues) • [Documentation](https://github.com/charles-bucher/AWS_Cloud_Support_Sim/wiki)

</div>