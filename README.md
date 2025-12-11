# AWS Cloud Support Simulation

## TL;DR

Hands-on AWS Cloud Support simulation project designed to build practical troubleshooting skills.

**What it does:**
- Simulates EC2, VPC, S3, Lambda, and GuardDuty issues
- Demonstrates network diagnostics, security group fixes, and CloudFormation troubleshooting
- Automates monitoring tasks with Python/Boto3
- Infrastructure as Code via Terraform

**Built for:** Learning and demonstrating Cloud Support & CloudOps skills.

**Key Skills Practiced:** EC2/VPC troubleshooting, IAM & Security Groups, CloudFormation, CloudWatch monitoring, Python automation, Git workflows.

**Quick Start:**
```bash
git clone https://github.com/charles-bucher/AWS_Cloud_Support_Sim.git
cd AWS_Cloud_Support_Sim
python -m venv venv
.\venv\Scripts\activate      # Windows
pip install -r requirements.txt
aws configure
python main.py


[![AWS](https://img.shields.io/badge/AWS-EC2_VPC_S3_CloudFormation-FF9900?style=flat-square&logo=amazon-aws)](https://aws.amazon.com/)
[![Python](https://img.shields.io/badge/Python-3.x-3776AB?style=flat-square&logo=python)](https://www.python.org/)
[![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?style=flat-square&logo=terraform)](https://www.terraform.io/)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg?style=flat-square)](LICENSE)

> Hands-on AWS troubleshooting scenarios built while learning cloud support engineering practices.

---

## 📋 About This Project

A personal learning project where I built practical AWS troubleshooting scenarios to develop cloud support skills. Each scenario simulates common issues I researched and implemented in my AWS account, documenting the complete troubleshooting process.

**Built for:** Demonstrating hands-on AWS troubleshooting skills for Cloud Support Engineer and IT Support positions.

---

## 🎯 Skills Practiced

| Skill Area | Technologies Used |
|------------|------------------|
| **Compute & Networking** | EC2, VPC, Security Groups, Route Tables, Internet Gateway |
| **Infrastructure as Code** | CloudFormation templates, YAML configuration |
| **Storage** | S3 buckets, object management |
| **Security** | Security group rules, IAM permissions, GuardDuty |
| **Monitoring** | CloudWatch metrics, logs |
| **Automation** | Python scripts, Boto3 SDK |
| **Version Control** | Git, GitHub workflow |

---

## 🏗️ Troubleshooting Architecture

### Support Ticket Workflow

```mermaid
graph TB
    subgraph "Cloud Support Simulation Process"
        A[Issue Identified] --> B[Gather Information]
        B --> C{Issue Category?}
        
        C -->|Network| D[VPC/Connectivity Check]
        C -->|Security| E[Security Group/IAM Check]
        C -->|Infrastructure| F[Resource Configuration]
        
        D --> G[Test Connectivity]
        G --> H[Check Route Tables]
        H --> I[Verify Internet Gateway]
        I --> J[Ping Tests]
        
        E --> K[Review SG Rules]
        K --> L[Verify Inbound/Outbound]
        L --> M[Apply Fixes]
        
        F --> N[CloudFormation Review]
        N --> O[Stack Validation]
        O --> P[Resource Checks]
        
        J --> Q[Resolution Applied]
        M --> Q
        P --> Q
        
        Q --> R[Documentation]
        R --> S[Screenshot Evidence]
    end
    
    style A fill:#ff6b6b
    style Q fill:#51cf66
    style S fill:#4dabf7
```

---

### EC2 Network Troubleshooting Flow

```mermaid
flowchart TD
    subgraph "Network Connectivity Diagnosis"
        A[EC2 Instance Unreachable] --> B{Can Ping Instance?}
        
        B -->|No| C[Check Security Groups]
        B -->|Yes| D[Check Application]
        
        C --> E{ICMP Allowed?}
        E -->|No| F[Add ICMP Rule]
        E -->|Yes| G[Check Route Table]
        
        G --> H{Route to IGW?}
        H -->|No| I[Add IGW Route]
        H -->|Yes| J[Check Network ACL]
        
        F --> K[Test Connectivity]
        I --> K
        J --> K
        
        K --> L{Resolved?}
        L -->|Yes| M[Document Solution]
        L -->|No| N[Escalate Issue]
        
        D --> O[Check App Logs]
    end
    
    style A fill:#ff6b6b
    style M fill:#51cf66
    style N fill:#ffd43b
```

---

### CloudFormation Deployment Process

```mermaid
sequenceDiagram
    participant Dev as Developer
    participant CF as CloudFormation
    participant EC2 as EC2 Service
    participant VPC as VPC Service
    participant SG as Security Groups
    
    Dev->>CF: Upload template.yaml
    CF->>CF: Validate syntax
    CF->>VPC: Create VPC resources
    VPC-->>CF: VPC created
    CF->>SG: Create security groups
    SG-->>CF: SG created
    CF->>EC2: Launch instances
    EC2-->>CF: Instances running
    CF-->>Dev: Stack CREATE_COMPLETE
    
    Note over Dev,CF: Troubleshooting scenario ready
```

---

### Security Group Configuration

```mermaid
graph LR
    subgraph "Security Group Management"
        A[Default: Deny All] --> B{Add Inbound Rules}
        
        B --> C[SSH Port 22]
        B --> D[HTTPS Port 443]
        B --> E[HTTP Port 80]
        
        C --> F[Source: My IP]
        D --> G[Source: 0.0.0.0/0]
        E --> G
        
        F --> H[Apply Rules]
        G --> H
        
        H --> I[Test Access]
        I --> J{Access Working?}
        
        J -->|Yes| K[Document Config]
        J -->|No| L[Review & Adjust]
        L --> B
    end
    
    style A fill:#ff6b6b
    style K fill:#51cf66
    style I fill:#ffd43b
```

---

## 📸 Implementation Evidence

### Scenario 1: EC2 Network Connectivity Testing

<details>
<summary>📋 View Troubleshooting Steps</summary>

**Network Diagnostics:**
![EC2 Network Testing](https://raw.githubusercontent.com/charles-bucher/AWS_Cloud_Support_Sim/main/screenshots/CloudSupport_01_EC2-Network-Connectivity-Tester.png)

**What I Did:**
- Deployed EC2 instance in custom VPC
- Configured route tables for internet access
- Verified Internet Gateway attachment
- Performed ping tests to validate connectivity
- Average latency: 59ms (optimal performance)

**Skills Applied:** EC2, VPC networking, route tables, connectivity troubleshooting

</details>

---

### Scenario 2: Security Group Misconfiguration

<details>
<summary>📋 View Troubleshooting Steps</summary>

**Security Group Analysis:**
![Security Group Config](https://raw.githubusercontent.com/charles-bucher/AWS_Cloud_Support_Sim/main/screenshots/CloudSupport_02_EC2-Security-Group-Manager.png)

**What I Did:**
- Identified blocked HTTPS traffic (port 443)
- Reviewed existing security group rules
- Added inbound rules for HTTPS and SSH
- Implemented least-privilege access principles
- Validated traffic flow after changes

**Skills Applied:** Security Groups, network security, access control, troubleshooting

</details>

---

### Scenario 3: CloudFormation Stack Deployment

<details>
<summary>📋 View Troubleshooting Steps</summary>

**Infrastructure Deployment:**
![CloudFormation Stack](https://raw.githubusercontent.com/charles-bucher/AWS_Cloud_Support_Sim/main/screenshots/CloudSupport_03_CloudFormation-Troubleshooting-Stack%20-.png)

**What I Did:**
- Designed CloudFormation template for EC2 environment
- Defined parameters for reusable deployments
- Deployed stack and monitored creation process
- Achieved CREATE_COMPLETE status
- Documented resource outputs

**Skills Applied:** CloudFormation, Infrastructure as Code, YAML, stack management

</details>

---

### Scenario 4: Version Control Workflow

<details>
<summary>📋 View Troubleshooting Steps</summary>

**Professional Git Setup:**
![Git Workflow](https://raw.githubusercontent.com/charles-bucher/AWS_Cloud_Support_Sim/main/screenshots/CloudSupport_04_AWS-Cloud-Support-Portfolio.png)

**What I Did:**
- Initialized Git repository with proper structure
- Created Python virtual environment for isolation
- Organized code into main.py and utils.py
- Established commit history
- Configured .gitignore for Python projects

**Skills Applied:** Git, version control, Python project structure, development workflow

</details>

---

### Scenario 5: GuardDuty Security Monitoring

<details>
<summary>📋 View Troubleshooting Steps</summary>

**Automated Security Monitoring:**
![GuardDuty Script](https://raw.githubusercontent.com/charles-bucher/AWS_Cloud_Support_Sim/main/screenshots/CloudSupport_05_Python-AWS-Project-Template%20.png)

**What I Did:**
- Wrote Python script to query GuardDuty API
- Configured AWS credentials using environment variables
- Implemented automated findings check
- Set up continuous monitoring workflow
- Tested alert notifications

**Skills Applied:** Python, Boto3, AWS GuardDuty, automation, security monitoring

</details>

---

## 📁 Repository Structure

```
AWS_Cloud_Support_Sim/
├── Diagrams/               # Architecture diagrams
├── scenarios/              # CloudFormation templates
│   ├── ec2-troubleshoot/   # EC2 connectivity scenario
│   ├── lambda-errors/      # Lambda troubleshooting
│   └── s3-iam-policy/      # S3 IAM policy issues
├── screenshots/            # Documentation of implementations
├── scripts/                # Python automation scripts
├── main.py                 # Primary simulation script
├── main.tf                 # Terraform configuration
├── utils.py                # Helper functions
├── requirements.txt        # Python dependencies
└── README.md               # This file
```

---

## 🚀 Getting Started

### Prerequisites

- AWS Free Tier account
- Python 3.8+
- AWS CLI configured
- Git

### Installation

```bash
# Clone repository
git clone https://github.com/charles-bucher/AWS_Cloud_Support_Sim.git
cd AWS_Cloud_Support_Sim

# Create virtual environment
python -m venv venv

# Activate virtual environment
# Windows:
.\venv\Scripts\activate
# Linux/Mac:
# source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Configure AWS credentials
aws configure
```

### Running Scenarios

```bash
# Activate virtual environment
.\venv\Scripts\activate

# Run main simulation
python main.py

# Run specific scripts
python scripts/guardduty-monitor.py
```

---

## 📚 What I Learned

### AWS Services
- **EC2**: Instance management, network configuration, connectivity troubleshooting
- **VPC**: Subnets, route tables, Internet Gateway, network isolation
- **Security Groups**: Inbound/outbound rules, stateful firewall configuration
- **CloudFormation**: Template design, stack management, resource provisioning
- **S3**: Bucket creation, permissions, object storage
- **GuardDuty**: Security findings, threat detection

### Troubleshooting Skills
- Systematic approach to diagnosing issues
- Network connectivity testing and validation
- Security configuration review
- Log analysis and interpretation
- Documentation of resolution steps

### Python & Automation
- Boto3 SDK for AWS API interactions
- Environment variable management
- Script development for monitoring tasks
- Error handling and logging

### DevOps Practices
- Infrastructure as Code principles
- Version control with Git
- Virtual environment management
- Professional documentation with screenshots

---

## 🎯 Next Steps

**Planned Improvements:**
- [ ] Add RDS database connectivity scenarios
- [ ] Implement Lambda error troubleshooting
- [ ] Create VPC peering scenarios
- [ ] Add ELB health check troubleshooting
- [ ] Build automated testing for scenarios

---

## 💼 Relevant Job Skills

This project demonstrates skills for:

**Cloud Support Engineer:**
- AWS service troubleshooting
- Network connectivity diagnosis
- Security group configuration
- Customer-facing documentation

**Cloud Operations:**
- Infrastructure monitoring
- Incident response procedures
- Automation scripting
- Resource management

**IT Support Specialist:**
- Systematic troubleshooting approach
- Technical documentation
- Tool proficiency (AWS CLI, Python)
- Problem-solving methodology

---

## 📧 Contact

**Charles Bucher**  
📍 Pinellas Park, Florida  
✉️ quietopscb@gmail.com  
🔗 [GitHub](https://github.com/charles-bucher) • [LinkedIn](https://linkedin.com/in/charles-bucher-cloud)

Currently building cloud infrastructure skills and seeking Cloud Support Engineer opportunities.

---

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Learning Resources

Built while learning from:
- AWS Official Documentation
- AWS CloudFormation User Guide
- Python Boto3 Documentation
- Cloud support best practices

---

**Keywords for ATS:** AWS, Cloud Support, EC2, VPC, Security Groups, CloudFormation, S3, Python, Boto3, Troubleshooting, Network Connectivity, Infrastructure as Code, GuardDuty, CloudWatch, Technical Support, IT Support, Problem Solving, Documentation