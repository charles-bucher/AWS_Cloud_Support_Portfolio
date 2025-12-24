# Charles Bucher Cloud Support Sim

![Repo Validator](https://img.shields.io/badge/Validation-Passed-brightgreen)
![Python](https://img.shields.io/badge/Python-3.14-blue)
![Terraform](https://img.shields.io/badge/Terraform-1.5.9-blue)

Hands-on AWS Cloud Support labs for troubleshooting EC2, S3, Lambda, and GuardDuty incidents using real cloud support workflows. Focused on logs, metrics, incident response, remediation, and prevention.

---

## TL;DR
This repository is a comprehensive AWS Cloud Support learning and portfolio project. It contains lab simulations, automation scripts, and documentation to demonstrate troubleshooting, monitoring, and remediation of cloud incidents.

---

## Quick Start
1. Clone the repo:
   ```bash
   git clone https://github.com/charles-bucher/charles-bucher.git
   cd charles-bucher
Set up a Python virtual environment:

bash
Copy code
python -m venv venv
source venv/bin/activate  # Linux/Mac
.\venv\Scripts\activate   # Windows
Install dependencies:

bash
Copy code
pip install -r requirements.txt
Run validation or lab scripts:

bash
Copy code
python validate_repos.py
Incident Scenarios
This repo includes labs covering:

ID	Incident	Services	Difficulty	Status
001	EC2 connectivity issue	EC2, VPC	Easy	Complete
002	Public S3 bucket exposure	S3, IAM	Medium	Complete
003	Lambda timeout automation	Lambda, CloudWatch	Medium	Complete
004	IAM role & policy misconfiguration	IAM, CloudTrail	Medium	Complete
005	Security groups & NACL misconfig	EC2, VPC	Medium	Complete
006	CloudWatch monitoring alerts	CloudWatch, SNS	Medium	Complete

Installation
Make sure AWS CLI is configured with your credentials.

Terraform should be installed for infrastructure deployments.

Python 3.14+ is required to run validation and lab scripts.

Follow each scenario README for detailed deployment and remediation steps.

Skills
AWS Cloud Support (EC2, S3, Lambda, GuardDuty)

AWS Cloud Monitoring & Logging

Incident Response & Remediation

Python Automation

Terraform Infrastructure as Code (IaC)

Root Cause Analysis & Troubleshooting

Portfolio & Documentation Best Practices

License
This project is licensed under the MIT License. See LICENSE for details.

Contact
LinkedIn: Charles-bucher-cloud

GitHub: charles-bucher

