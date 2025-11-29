⚡ AWS Cloud Support Simulation

[![GitHub stars](https://img.shields.io/github/stars/charles-bucher/AWS_Cloud_Support_Sim?style=social)](https://github.com/charles-bucher/AWS_Cloud_Support_Sim/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/charles-bucher/AWS_Cloud_Support_Sim?style=social)](https://github.com/charles-bucher/AWS_Cloud_Support_Sim/network/members)
[![Python](https://img.shields.io/badge/Python-3.11-blue?logo=python&logoColor=white)](https://www.python.org/)
[![Terraform](https://img.shields.io/badge/Terraform-1.5.1-623CE4?logo=terraform&logoColor=white)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-CloudOps-orange?logo=amazon-aws&logoColor=white)](https://aws.amazon.com/)
[![CloudWatch](https://img.shields.io/badge/CloudWatch-monitoring-lightgrey?logo=amazon-aws&logoColor=orange)](https://aws.amazon.com/cloudwatch/)

---

## 👋 About This Repository
This repository **simulates a Cloud Support engineering workflow**, documenting real-world AWS troubleshooting scenarios. Each case study follows the **support ticket lifecycle** from the initial customer report through **root cause analysis, resolution, and validation**.

It is designed to demonstrate the practical skills and operational thinking that **junior cloud engineers, NOC analysts, and L1/L2 support specialists** use every day.

---

## 🚀 Skills Demonstrated
| Category | Skills & Tools |
|----------|----------------|
| **AWS Services** | EC2, Lambda, S3, IAM, CloudWatch, CloudFormation |
| **Automation & IaC** | Python scripting, Terraform, CloudFormation basics |
| **Monitoring & Logging** | CloudWatch metrics, dashboards, log analysis |
| **Operational Troubleshooting** | Incident simulation, RCA, SLA thinking, structured problem-solving |
| **Version Control / DevOps** | Git, GitHub Actions |

---

## 📂 Scenarios (with Screenshots)

### 1️⃣ EC2 Troubleshooting
**Objective:** Launch an EC2 instance via CloudFormation and verify connectivity.  
**Key Steps:**  
- Deploy CloudFormation stack  
- Verify EC2 provisioning  
- Configure & troubleshoot Security Groups  
- Test connectivity (SSH / ping)  
- Validate root cause and resolution  

**Screenshots:** EC2 Creation, Security Group Debugging

---

### 2️⃣ Lambda Error Handling
**Objective:** Diagnose and resolve Lambda execution failures.  
**Key Steps:**  
- Deploy Lambda function  
- Trigger controlled error  
- Investigate CloudWatch logs  
- Fix IAM policy or function code  
- Redeploy and validate success  

**Screenshots:** Lambda Error in Console, CloudWatch Log Investigation

---

### 3️⃣ S3 IAM Access Debugging
**Objective:** Troubleshoot access denied issues for an IAM user accessing S3.  
**Key Steps:**  
- Identify IAM user/role  
- Review IAM policy and bucket policy  
- Reproduce failure using AWS CLI  
- Update permissions  
- Validate successful access  

**Screenshots:** Access Denied, Policy Fix Applied

---

## 📁 Repository Structure
AWS_Cloud_Support_Sim/
├── docs/
│ └── screenshots/ # Scenario screenshots
├── scenarios/ # EC2, Lambda, S3 exercises
├── src/AWS_Project/ # Python automation scripts
├── main.py # Python entry point
├── utils.py # Helper functions
├── main.tf # Terraform template
├── requirements.txt # Python dependencies
└── README.md # This file

yaml
Copy code

---

## 🔥 Career Goal
- Start as **Cloud Support / NOC Engineer** (entry-level, remote preferred)  
- Grow through **hands-on troubleshooting, automation, and documentation**  
- Build measurable impact via **CloudOps projects and operational problem-solving**

---

## 📬 Contact
- 📧 Email: [quietopscb@gmail.com](mailto:quietopscb@gmail.com)  
- GitHub: [https://github.com/charles-bucher](https://github.com/charles-bucher)  
- LinkedIn: [https://linkedin.com/in/charles-bucher-cloud](https://linkedin.com/in/charles-bucher-cloud)  
- Indeed: [https://profile.indeed.com/p/charlesb-x0xr5fx](https://profile.indeed.com/p/charlesb-x0xr5fx)

---

## 💡 Notes
- All scenarios mirror **real production troubleshooting patterns**  
- Provisioned AWS resources **may incur costs** — clean them up after exercises  
- Screenshots show **reproducible steps and validated fixes**

