# ⚡ AWS Cloud Support Simulation

[![GitHub stars](https://img.shields.io/github/stars/charles-bucher/AWS_Cloud_Support_Sim?style=social)](https://github.com/charles-bucher/AWS_Cloud_Support_Sim/stargazers) 
[![GitHub issues](https://img.shields.io/github/issues/charles-bucher/AWS_Cloud_Support_Sim)](https://github.com/charles-bucher/AWS_Cloud_Support_Sim/issues)  
[![License](https://img.shields.io/github/license/charles-bucher/AWS_Cloud_Support_Sim)](LICENSE)  

Simulate real-world AWS Cloud Support workflows, gain hands-on troubleshooting experience, and level up your CloudOps skills.

---

## 👋 About This Repository

This repository provides realistic AWS support scenarios following the full lifecycle of a cloud support ticket:

1. Customer report / incident trigger  
2. Root cause analysis  
3. Resolution implementation  
4. Verification & validation  

Ideal for aspiring **Cloud Support Engineers**, **NOC Analysts**, and **L1/L2 Support Specialists**, demonstrating practical skills, operational thinking, and automation knowledge.

---

## 🚀 Skills & Tools

| Category | Skills & Tools | AWS Services |
|----------|----------------|--------------|
| CloudOps / Support | Incident simulation, RCA, SLA thinking, structured problem-solving | EC2, Lambda, S3, IAM, CloudWatch, CloudFormation |
| Automation & IaC | Python scripting, Terraform, CloudFormation basics | N/A |
| Monitoring & Logging | CloudWatch metrics, dashboards, log analysis | CloudWatch |
| Version Control / DevOps | Git, GitHub Actions, CI/CD pipelines | N/A |

---

## 📂 Scenarios & Screenshots

### 1️⃣ EC2 Troubleshooting

**Objective:** Launch an EC2 instance via CloudFormation and verify connectivity.

**Key Steps:**
- Deploy CloudFormation stack
- Verify EC2 provisioning
- Configure & troubleshoot Security Groups
- Test connectivity (SSH / ping)
- Validate root cause & resolution

**Screenshots:**  
![EC2 Connectivity Ping](docs/screenshots/ACSS_01_ec2_connectivity_ping.png)  
![EC2 Instance Details](docs/screenshots/ACSS_02_ec2_instance_details.png)  
![EC2 Ping Test](docs/screenshots/ACSS_03_ec2_ping_test.png)  
![EC2 Security Group](docs/screenshots/ACSS_04_ec2_security_group.png)  
![EC2 Security Group Verify](docs/screenshots/ACSS_05_ec2_security_group_verify.png)  
![EC2 Stack Created](docs/screenshots/ACSS_06_ec2_stack_created.png)  

---

### 2️⃣ Python / Automation

**Objective:** Automate CloudOps tasks and manage code deployments.

**Key Steps:**
- Commit Python scripts to Git
- Install dependencies via `requirements.txt`
- Run automation scripts

**Screenshots:**  
![Python Git Commit](docs/screenshots/ACSS_07_python_git_commit.png)  
![Python Requirements](docs/screenshots/ACSS_08_python_requirements.png)  
![Python Run Main](docs/screenshots/ACSS_09_python_run_main.png)  

---

## 🏗️ Architecture Diagram

![AWS Support Flow Diagram](Diagrams/AWSSupportFlowDiagram.png)

---

## 🔥 Career Goal

- Start as **Cloud Support / NOC Engineer** (remote preferred)  
- Gain hands-on troubleshooting, automation, and documentation experience  
- Build measurable impact via CloudOps projects and operational problem-solving  

---

## 📬 Contact

- **Email:** quietopscb@gmail.com  
- **GitHub:** [charles-bucher](https://github.com/charles-bucher)  
- **LinkedIn:** [Charles Bucher](https://www.linkedin.com/in/charles-bucher-cloud)  

---

## 💡 Notes

- All scenarios mirror real production troubleshooting patterns  
- Provisioned AWS resources may incur costs — clean up after exercises  
- Screenshots show reproducible steps and validated fixes  

---

## 🔑 Keywords

terraform, incident-response, cloudwatch, ci-cd, infrastructure-as-code, aws-security, noc, security-automation, devsecops, cloudops, cloud-support, python-automation, aws-guardduty
