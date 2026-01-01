☁️ AWS Cloud Support Simulator












Hands-on AWS Cloud Support & SysOps simulation lab focused on real-world troubleshooting, monitoring, automation, and incident response across core AWS services.

This repository is designed to mirror the day-to-day responsibilities of an AWS Cloud Support / SysOps Associate and serves as a portfolio project for cloud career transitioners.

📝 TL;DR

Simulates real AWS production incidents (P0–P2)

Troubleshoot EC2, Lambda, S3, VPC, IAM, CloudWatch issues

Uses Terraform, Python (boto3), AWS CLI

Built to align directly with AWS SysOps Administrator (SOA-C02)

Portfolio-ready, recruiter-readable, cert-aligned

📌 Table of Contents

Overview

Features

Architecture

Repository Structure

Usage

Screenshots

Skills Demonstrated

SysOps & Career Alignment

Tech Stack

License

🔍 Overview

This project simulates real AWS Cloud Support tickets and operational failures that commonly occur in production environments.

Each scenario requires you to:

Identify the root cause using CloudWatch metrics/logs

Validate IAM, networking, and service configurations

Apply a fix using AWS Console, CLI, or automation

Prevent recurrence through monitoring or IaC improvements

The goal is not just “deployment,” but operational excellence, troubleshooting depth, and clear documentation — exactly what AWS support and SysOps roles expect.

🔥 Features

EC2 connectivity and performance failures

Lambda timeout, memory, and permission issues

S3 access and policy misconfigurations

VPC routing, NAT, and security group errors

CloudWatch alarms, dashboards, and log analysis

Terraform-based infrastructure deployments

Python automation scripts for validation and remediation

Incident-style runbooks and troubleshooting notes

🏗️ Architecture

High-level architecture used across scenarios:

Internet
   |
Application Load Balancer
   |
EC2 / Lambda (App Tier)
   |
RDS / DynamoDB / S3


Core AWS Components

VPC with public/private subnets

Security Groups & IAM roles

CloudWatch Logs, Metrics, Alarms

Terraform-managed infrastructure

AWS CLI & boto3 automation

Designed to reflect SysOps-level operational responsibility, not just architecture diagrams.

📂 Repository Structure
AWS_Cloud_Support_Sim/
├── scenarios/          # Incident-based labs
├── terraform/          # IaC modules & environments
├── scripts/            # Python automation & validation
├── cloudwatch/         # Dashboards, alarms, queries
├── docs/               # Runbooks & troubleshooting notes
└── screenshots/        # Visual evidence for portfolio

⚡ Usage
Prerequisites

AWS Account (Free Tier OK)

Python 3.9+

Terraform v1.0+

AWS CLI v2

Setup
git clone https://github.com/charles-bucher/AWS_Cloud_Support_Sim.git
cd AWS_Cloud_Support_Sim
pip install -r requirements.txt
aws configure

Run a Scenario
cd scenarios/ec2-connectivity
terraform init
terraform apply


Follow the scenario README to:

Investigate the issue

Apply remediation

Validate the fix

Tear down resources

🖼️ Screenshots

Screenshots are included to provide visual proof of hands-on work.

CloudWatch Dashboards

Terraform apply outputs

Incident validation scripts

screenshots/
├── cloudwatch_dashboard.png
├── terraform_apply.png
└── incident_validation.png

🧠 Skills Demonstrated

AWS Cloud Support troubleshooting

SysOps-level monitoring & alerting

CloudWatch Logs & Metrics analysis

IAM permission debugging

VPC networking fundamentals

Infrastructure as Code (Terraform)

Python automation with boto3

Incident documentation & root cause analysis

🎯 SysOps & Career Alignment

Target Roles

AWS Cloud Support Associate

SysOps Administrator

Cloud Operations Engineer

Junior Cloud Engineer

Certification Alignment

AWS SysOps Administrator – Associate (SOA-C02)

AWS Solutions Architect – Associate (SAA-C03)

This project is intentionally operations-heavy, not architecture-only.

🛠️ Tech Stack

AWS: EC2, Lambda, S3, IAM, VPC, CloudWatch

IaC: Terraform

Automation: Python (boto3), AWS CLI

Monitoring: CloudWatch Dashboards & Alarms

Docs: Markdown, runbooks, diagrams

📄 License

This project is licensed under the MIT License.

You are free to:

Use

Modify

Distribute

Reference in portfolios and resumes

See the LICENSE file for details.