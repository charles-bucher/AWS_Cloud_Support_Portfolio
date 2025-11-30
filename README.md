🟦 AWS Cloud Support Simulation

A hands-on, job-ready training lab for real AWS Cloud Support workflows.










📌 Overview

This project simulates the real day-to-day workload of an AWS Cloud Support Engineer.
Instead of theory, you walk through actual troubleshooting flows used by support teams:

Broken EC2 applications

CloudWatch log analysis

IAM access failures

VPC networking issues

Real ticket-style scenarios

Structured escalation workflow

If you’re aiming for Cloud Support, CloudOps, NOC, or SRE, this is the type of repo that gets interviews.

🏗️ Architecture Diagram
![AWS Support Flow](Diagrams/AWSSupportFlowDiagram.png)

🔧 Features

End-to-end AWS troubleshooting simulations

Ticket intake → analysis → resolution flow

Automated diagnostics (logs, pings, EC2 metadata)

Reproduce common customer issues

Clean, repeatable lab environment

Skills aligned with AWS Cloud Support Associate / CloudOps Engineer roles

🚦 What You Learn

How AWS Support approaches incidents

How to gather evidence and eliminate noise

How to escalate with clarity

How to troubleshoot methodically under pressure

How to communicate root cause

📸 Screenshots

(All loaded from docs/screenshots/ — replace filenames if needed.)

## 📸 Screenshots

### 🟦 Support Dashboard
![Support Dashboard](docs/screenshots/support_dashboard.png)

### 🟧 Ticket Intake
![Ticket Intake](docs/screenshots/ticket_intake.png)

### 🟩 Troubleshooting Workflow
![Troubleshooting Workflow](docs/screenshots/troubleshooting_workflow.png)

### 🟪 CloudWatch Logs Review
![CloudWatch Logs](docs/screenshots/cloudwatch_logs.png)

### 🟥 EC2 Connectivity Diagnostics
![EC2 Diagnostics](docs/screenshots/ec2_connectivity.png)

### 🟨 Issue Resolution Output
![Issue Resolution](docs/screenshots/issue_resolution.png)

📂 Project Structure
AWS_Cloud_Support_Sim/
│
├── docs/
│   └── screenshots/
│
├── Diagrams/
│   └── AWSSupportFlowDiagram.png
│
├── scenarios/
├── scripts/
└── README.md

🚀 How to Use
git clone https://github.com/charles-bucher/AWS_Cloud_Support_Sim
cd AWS_Cloud_Support_Sim


Run any scenario:

python scenarios/ec2_connectivity.py
python scenarios/log_analysis.py

🎯 Who This Is For

Cloud Support Engineer candidates

Junior CloudOps techs

NOC Analysts upskilling into cloud

Anyone building a cloud troubleshooting portfolio

💼 ATS-Optimized Keywords

Cloud Support • AWS • EC2 • VPC • IAM • CloudWatch • Log Analysis • Diagnostics • Incident Response • Root Cause • CloudOps • Python Automation • Debugging • Technical Troubleshooting • Support Escalation

🤝 Contributions

Open to PRs, issues, and improvements.
This project is built to help others break into cloud.

⭐ If this helped you, star the repo

It pushes the project higher and signals hiring managers that you’re active.

