# ☁️ AWS Cloud Support Simulator

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![AWS](https://img.shields.io/badge/AWS-Cloud%20Engineering-orange)](https://aws.amazon.com/)
[![Python](https://img.shields.io/badge/Python-3.9%2B-blue)](https://www.python.org/)
[![Terraform](https://img.shields.io/badge/Terraform-IaC-purple)](https://www.terraform.io/)
[![CloudWatch](https://img.shields.io/badge/CloudWatch-Observability-orange)](https://aws.amazon.com/cloudwatch/)
[![DevOps](https://img.shields.io/badge/DevOps-Cloud%20Operations-success)](https://aws.amazon.com/)

> **Production-Grade Cloud Operations Lab: Master AWS troubleshooting, observability, and incident response for Cloud Engineering roles**

Build real-world cloud operations expertise by investigating 7 production incidents across EC2, Lambda, S3, VPC, and GuardDuty—demonstrating the core skills Cloud Support Engineers, Cloud Operations Engineers, and DevOps professionals use daily.

![Lab Environment Verified](screenshots/00_lab_environment_verified.png)

---

## 🎯 Why This Lab Exists

**The Cloud Skills Gap:**  
Most AWS tutorials teach you how to *build* infrastructure. Employers need engineers who can *operate and troubleshoot* production cloud environments. This lab bridges that gap.

**What Makes This Different:**
- 🔥 **Production-Grade Scenarios** - Real incidents, not toy examples
- 🛠️ **Cloud Operations Focus** - Monitoring, alerting, incident response workflows
- ☁️ **Cloud-Native Tooling** - CloudWatch, CloudTrail, VPC Flow Logs, GuardDuty
- 📊 **Observability Stack** - Build skills employers actually need
- 💼 **Career-Ready** - Portfolio project for Cloud Engineer/DevOps roles

**Perfect For:**
- Cloud Support Engineer positions
- Cloud Operations Engineer roles
- AWS Support Associate/Engineer
- DevOps Engineer (Cloud focus)
- Site Reliability Engineer (SRE) - Cloud
- Cloud Infrastructure Analyst
- AWS Solutions Architect (ops track)

---

## 💼 Career Alignment

### Skills Employers Want (You'll Demonstrate All of These)

| Cloud Engineering Skill | How This Lab Proves It |
|------------------------|------------------------|
| **AWS Service Expertise** | Hands-on with 12+ core AWS services in production scenarios |
| **Incident Response** | Investigated and resolved 7 P0/P1/P2 production incidents |
| **Observability** | Built monitoring with CloudWatch Logs/Metrics, VPC Flow Logs |
| **Security Operations** | Responded to GuardDuty alerts, performed CloudTrail forensics |
| **Network Troubleshooting** | Debugged VPC, security groups, NACLs, routing issues |
| **Performance Optimization** | Tuned Lambda memory, EC2 sizing, DynamoDB capacity |
| **Infrastructure as Code** | Deployed 7 environments with Terraform |
| **Cloud Cost Optimization** | Operated entire lab for <$5/month |
| **Root Cause Analysis** | Documented systematic troubleshooting methodology |
| **Technical Documentation** | Created incident reports, runbooks, and post-mortems |

### Certification Prep Value

**AWS Solutions Architect Associate:**
- ✅ Domain 1: Design Resilient Architectures (VPC, Auto Scaling)
- ✅ Domain 2: High-Performing Architectures (Lambda optimization, caching)
- ✅ Domain 3: Secure Applications (IAM, S3 security, GuardDuty)
- ✅ Domain 4: Cost-Optimized Architectures (Right-sizing, monitoring)

**AWS SysOps Administrator:**
- ✅ Domain 1: Monitoring, Logging, and Remediation (CloudWatch mastery)
- ✅ Domain 2: Reliability and Business Continuity (Incident response)
- ✅ Domain 3: Deployment, Provisioning, and Automation (Terraform IaC)
- ✅ Domain 4: Security and Compliance (GuardDuty, CloudTrail forensics)
- ✅ Domain 5: Networking and Content Delivery (VPC troubleshooting)
- ✅ Domain 6: Cost and Performance Optimization (Resource optimization)

---

## 🏗️ Cloud-Native Architecture

### Multi-Tier VPC Infrastructure

![VPC Architecture](screenshots/01_vpc_architecture_setup.png)

**Production-Grade Components:**
- **3-Tier VPC Design** - Public/Private/Database subnets across 2 AZs
- **NAT Gateway** - High-availability outbound internet for private subnets
- **Internet Gateway** - Public subnet internet connectivity
- **Route Tables** - Custom routing for subnet isolation
- **Security Groups** - Stateful firewall rules at instance level
- **Network ACLs** - Stateless firewall rules at subnet level
- **VPC Flow Logs** - Network traffic logging to CloudWatch
- **VPC Endpoints** - Private AWS service connectivity (S3, DynamoDB)

### Cloud Observability Stack

![Security Groups and NACLs](screenshots/03_security_groups_network_acls.png)

**Enterprise Monitoring Setup:**
- **CloudWatch Logs** - Centralized log aggregation and analysis
- **CloudWatch Metrics** - Real-time performance monitoring
- **CloudWatch Alarms** - Automated alerting for SLA violations
- **CloudWatch Dashboards** - Unified observability console
- **VPC Flow Logs** - Network connectivity troubleshooting
- **CloudTrail** - Complete API audit trail and forensics
- **GuardDuty** - Intelligent threat detection (ML-powered)
- **AWS Config** - Configuration compliance tracking

### Repository Structure

```
AWS_Cloud_Support_Sim/
│
├── scenarios/                     # 7 Production Cloud Incidents
│   ├── 001-ec2-connectivity/     # VPC Networking & Security Groups
│   │   ├── terraform/            # IaC deployment (AWS best practices)
│   │   ├── scripts/              # Cloud CLI automation (boto3)
│   │   ├── monitoring/           # CloudWatch dashboards and alarms
│   │   ├── screenshots/          # Visual troubleshooting guides
│   │   └── README.md             # Incident briefing and resolution
│   │
│   ├── 002-s3-security/          # Cloud Security Incident Response
│   ├── 003-lambda-timeout/       # Serverless Performance Tuning
│   ├── 004-guardduty-alert/      # Security Operations (SecOps)
│   ├── 005-ec2-high-cpu/         # Cloud Infrastructure Performance
│   ├── 006-lambda-dynamodb/      # Distributed Systems Troubleshooting
│   └── 007-multi-service/        # Complex Cloud Architecture Debugging
│
├── cloudwatch/                   # Observability configuration
│   ├── dashboards/               # CloudWatch dashboard JSON
│   ├── alarms/                   # Alarm definitions
│   └── log_insights_queries/     # Pre-built CloudWatch Insights queries
│
├── scripts/                      # Cloud automation tooling
│   ├── aws_health_check.py       # Multi-service health validation
│   ├── cost_analyzer.py          # Cloud cost optimization
│   └── validate_fix.py           # Automated incident resolution check
│
├── terraform/                    # Core cloud infrastructure
│   ├── modules/                  # Reusable IaC components
│   └── environments/             # Environment-specific configs
│
├── docs/                         # Cloud operations runbooks
│   ├── INCIDENT_RESPONSE.md      # Cloud incident workflow
│   ├── TROUBLESHOOTING.md        # AWS troubleshooting methodology
│   └── OBSERVABILITY.md          # CloudWatch best practices
│
└── tests/                        # Automated validation
    └── integration/              # End-to-end scenario tests
```

---

## 🚀 Cloud Operations Scenarios

### 🔴 Scenario 001: VPC Connectivity Troubleshooting (Cloud Networking)

**Cloud Context:**
- **Incident Type:** Network connectivity failure in production VPC
- **Customer Impact:** Public-facing web application unreachable
- **Priority:** P1 (Critical - Revenue Impact)
- **Skills Focus:** VPC networking, security group troubleshooting, cloud observability

**Production Environment:**
```
┌─────────────────────────────────────────┐
│          Production VPC (10.0.0.0/16)   │
│  ┌──────────────────────────────────┐   │
│  │  Public Subnet (10.0.1.0/24)    │   │
│  │  ┌──────────┐   ┌────────────┐  │   │
│  │  │ ALB      │──→│ Web Server │  │   │  ← Customer traffic timing out
│  │  └──────────┘   └────────────┘  │   │
│  └──────────────────────────────────┘   │
│                                          │
│  ┌──────────────────────────────────┐   │
│  │  Private Subnet (10.0.2.0/24)   │   │
│  │  ┌──────────┐   ┌────────────┐  │   │
│  │  │ App      │──→│ RDS        │  │   │
│  │  │ Server   │   │ Database   │  │   │
│  │  └──────────┘   └────────────┘  │   │
│  └──────────────────────────────────┘   │
└─────────────────────────────────────────┘
```

**Cloud Operations Investigation:**
- ✅ **VPC Flow Logs Analysis** - Identify ACCEPT vs REJECT traffic patterns
- ✅ **Security Group Audit** - Validate inbound/outbound rules
- ✅ **Network ACL Review** - Check subnet-level firewall rules
- ✅ **Route Table Verification** - Confirm proper routing to IGW/NAT
- ✅ **EC2 Status Checks** - System reachability and instance health
- ✅ **CloudWatch Metrics** - Network traffic, packet drops, errors

**Cloud-Native Tools Used:**
```bash
# VPC Flow Logs query (CloudWatch Logs Insights)
fields @timestamp, srcAddr, dstAddr, action, bytes
| filter action = "REJECT"
| stats count() by srcAddr
| sort count desc

# Security group analysis
aws ec2 describe-security-groups --group-ids sg-xxxxx
aws ec2 describe-network-acls --network-acl-ids acl-xxxxx

# Route table validation
aws ec2 describe-route-tables --route-table-ids rtb-xxxxx

# EC2 instance health
aws ec2 describe-instance-status --instance-ids i-xxxxx
```

**Learning Outcomes:**
- Master VPC networking troubleshooting methodology
- Understand AWS network security layers (SG, NACL, routing)
- Build CloudWatch Log Insights queries for network analysis
- Diagnose connectivity issues using VPC Flow Logs
- Implement network observability best practices

**AWS Services:** VPC, EC2, Security Groups, NACLs, CloudWatch Logs, VPC Flow Logs, Route 53

---

### 🟠 Scenario 002: Cloud Security Incident - S3 Data Breach Investigation

**Cloud Context:**
- **Incident Type:** Security incident - Potential data exposure
- **Customer Impact:** Critical PII data may be compromised
- **Priority:** P0 (Critical Security Incident)
- **Skills Focus:** Cloud forensics, security operations, AWS IAM, S3 security

![GuardDuty Dashboard](screenshots/07_guardduty_dashboard_overview.png)

**Security Operations Workflow:**
```
1. GuardDuty Alert Received
   ↓
2. CloudTrail Forensic Investigation
   ↓
3. S3 Access Log Analysis
   ↓
4. IAM Policy & Permission Audit
   ↓
5. Blast Radius Assessment
   ↓
6. Containment & Remediation
   ↓
7. Post-Incident Report
```

**Cloud Security Investigation:**
- ✅ **GuardDuty Finding Analysis** - Review threat detection alerts
- ✅ **CloudTrail Forensics** - Identify who/what/when/where
- ✅ **S3 Bucket Policy Audit** - Review public access configuration
- ✅ **IAM Access Analysis** - Trace credential usage and permissions
- ✅ **S3 Server Access Logs** - Analyze actual data access patterns
- ✅ **AWS Config Rules** - Check compliance posture

**Cloud-Native Security Tools:**
```bash
# GuardDuty findings analysis
aws guardduty list-findings --detector-id xxxxx
aws guardduty get-findings --detector-id xxxxx --finding-ids xxxxx

# CloudTrail forensic query
aws cloudtrail lookup-events \
  --lookup-attributes AttributeKey=EventName,AttributeValue=PutBucketPolicy \
  --start-time 2025-01-01T00:00:00Z

# S3 access log analysis (CloudWatch Logs Insights)
fields @timestamp, operation, key, remoteip, httpstatus
| filter operation = "REST.GET.OBJECT"
| filter httpstatus = 200
| stats count() by remoteip

# IAM access analyzer
aws accessanalyzer list-findings --analyzer-arn arn:aws:access-analyzer:...
```

**Learning Outcomes:**
- Conduct cloud security incident response
- Perform CloudTrail forensic investigations
- Understand S3 security model (bucket policies, IAM, ACLs)
- Use GuardDuty for threat detection
- Implement AWS security best practices

**AWS Services:** S3, GuardDuty, CloudTrail, IAM, AWS Config, IAM Access Analyzer, CloudWatch

---

### 🟡 Scenario 003: Serverless Performance Optimization (Lambda Timeout)

**Cloud Context:**
- **Incident Type:** Serverless application performance degradation
- **Customer Impact:** API Gateway returning 504 timeout errors
- **Priority:** P2 (High - Customer-Facing Impact)
- **Skills Focus:** Lambda optimization, serverless architecture, cloud observability

**Serverless Architecture:**
```
API Gateway → Lambda Function → DynamoDB
     ↓
  504 Timeout (30s+)
     ↓
  CloudWatch Logs show:
  - Memory usage: 512 MB allocated, 480 MB used
  - Duration: 28,000 ms (approaching 30s timeout)
  - Cold starts: 15% of invocations
```

**Cloud Performance Investigation:**
- ✅ **CloudWatch Lambda Insights** - Memory, duration, cold starts
- ✅ **Lambda Concurrent Executions** - Throttling detection
- ✅ **X-Ray Tracing** - Distributed tracing for bottleneck identification
- ✅ **CloudWatch Logs Analysis** - Error patterns and performance metrics
- ✅ **Lambda Power Tuning** - Right-sizing compute resources
- ✅ **VPC Configuration** - ENI overhead and cold start impact

**Cloud-Native Performance Tools:**
```bash
# Lambda metrics (CloudWatch)
aws cloudwatch get-metric-statistics \
  --namespace AWS/Lambda \
  --metric-name Duration \
  --dimensions Name=FunctionName,Value=my-function \
  --statistics Average,Maximum \
  --start-time 2025-01-01T00:00:00Z \
  --end-time 2025-01-01T23:59:59Z \
  --period 300

# CloudWatch Logs Insights query
fields @timestamp, @duration, @memorySize, @maxMemoryUsed
| filter @type = "REPORT"
| stats avg(@duration), max(@duration), avg(@maxMemoryUsed)

# X-Ray trace analysis
aws xray get-trace-summaries --start-time 2025-01-01T00:00:00Z \
  --end-time 2025-01-01T23:59:59Z
```

**Performance Optimization Actions:**
- Increase Lambda memory (CPU scales with memory)
- Implement connection pooling for database
- Enable Lambda SnapStart for Java functions
- Remove VPC configuration if not needed
- Implement Lambda Layers for shared dependencies
- Add CloudWatch alarms for duration > 25s

**Learning Outcomes:**
- Master Lambda performance troubleshooting
- Understand serverless cold start optimization
- Use CloudWatch Lambda Insights effectively
- Implement distributed tracing with X-Ray
- Right-size Lambda memory and timeout configurations

**AWS Services:** Lambda, API Gateway, CloudWatch Logs, CloudWatch Metrics, X-Ray, VPC

---

### 🟣 Scenario 004: Cloud Security Operations - Credential Compromise

**Cloud Context:**
- **Incident Type:** IAM credential compromise detected
- **Customer Impact:** Potential unauthorized AWS resource access
- **Priority:** P0 (Critical Security Incident)
- **Skills Focus:** Cloud security operations, IAM forensics, incident containment

**Security Incident Timeline:**
```
T+0:00  GuardDuty: UnauthorizedAccess:IAMUser/InstanceCredentialExfiltration
T+0:05  CloudTrail: API calls from suspicious IP (Tor exit node)
T+0:10  API calls: DescribeInstances, ListBuckets, GetCallerIdentity
T+0:15  Attempted: CreateUser, AttachUserPolicy (DENIED)
T+0:20  Response: Disable compromised credentials
T+0:25  Forensics: Determine blast radius
T+0:30  Remediation: Rotate all potentially exposed credentials
```

**Cloud Security Operations Investigation:**
- ✅ **GuardDuty Finding Deep Dive** - Understand threat indicators
- ✅ **CloudTrail API Audit** - Complete timeline of API calls
- ✅ **IAM Credential Analysis** - Identify compromised access keys
- ✅ **Resource Access Review** - What data was accessed/modified
- ✅ **Lateral Movement Detection** - Check for privilege escalation attempts
- ✅ **Containment Actions** - Immediate credential revocation

**Cloud Security Tooling:**
```bash
# GuardDuty comprehensive analysis
aws guardduty get-findings \
  --detector-id xxxxxx \
  --finding-ids xxxxxx | jq '.Findings[0].Resource'

# CloudTrail forensic timeline
aws cloudtrail lookup-events \
  --lookup-attributes AttributeKey=Username,AttributeValue=compromised-user \
  --max-results 50 | jq '.Events[] | {Time, EventName, SourceIP}'

# IAM access key audit
aws iam list-access-keys --user-name compromised-user
aws iam get-access-key-last-used --access-key-id AKIA...

# Automated containment
aws iam update-access-key \
  --access-key-id AKIA... \
  --status Inactive \
  --user-name compromised-user

# S3 access log analysis for data exfiltration
fields @timestamp, operation, key, bytesOut, remoteip
| filter remoteip = "suspicious-ip"
| filter operation = "REST.GET.OBJECT"
| stats sum(bytesOut) by key
```

**Learning Outcomes:**
- Execute cloud security incident response
- Conduct IAM forensic investigations
- Use GuardDuty for threat intelligence
- Understand AWS credential compromise scenarios
- Implement automated containment procedures

**AWS Services:** GuardDuty, CloudTrail, IAM, CloudWatch, AWS Config, AWS Security Hub

---

### 🔵 Scenario 005: Cloud Infrastructure Performance (EC2 High CPU)

**Cloud Context:**
- **Incident Type:** EC2 instance resource exhaustion
- **Customer Impact:** Application latency increased by 400%
- **Priority:** P2 (High - Performance Degradation)
- **Skills Focus:** Cloud infrastructure optimization, performance troubleshooting

**Cloud Monitoring Dashboard:**
![CloudWatch Dashboard](screenshots/09_cloudwatch_monitoring_dashboard.png)

**Performance Investigation:**
- ✅ **CloudWatch Detailed Monitoring** - 1-minute granularity metrics
- ✅ **CloudWatch Agent** - Process-level metrics collection
- ✅ **Systems Manager Session Manager** - Secure SSH alternative
- ✅ **Application Performance Monitoring (APM)** - Code-level insights
- ✅ **Auto Scaling Activity** - Scale-out event analysis
- ✅ **EBS IOPS Metrics** - Storage performance bottlenecks

**Cloud Performance Tools:**
```bash
# CloudWatch detailed metrics
aws cloudwatch get-metric-statistics \
  --namespace AWS/EC2 \
  --metric-name CPUUtilization \
  --dimensions Name=InstanceId,Value=i-xxxxx \
  --statistics Average,Maximum \
  --start-time 2025-01-01T12:00:00Z \
  --end-time 2025-01-01T13:00:00Z \
  --period 60

# Systems Manager (no SSH keys needed)
aws ssm start-session --target i-xxxxx

# Once connected, analyze processes
top -b -n 1 | head -20
ps aux --sort=-%cpu | head -10
iostat -x 1 5

# CloudWatch Agent - custom metrics
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl \
  -a fetch-config \
  -m ec2 \
  -s \
  -c file:/opt/aws/amazon-cloudwatch-agent/etc/config.json
```

**Performance Optimization:**
- Right-size instance type (Compute Optimizer recommendations)
- Implement Auto Scaling based on CPU CloudWatch alarms
- Optimize application code (profiling via X-Ray)
- Add CloudWatch Dashboard for proactive monitoring
- Implement predictive scaling policies

**Learning Outcomes:**
- Master EC2 performance troubleshooting
- Use CloudWatch Agent for detailed monitoring
- Leverage Systems Manager for secure access
- Implement AWS Compute Optimizer recommendations
- Build comprehensive CloudWatch dashboards

**AWS Services:** EC2, CloudWatch, Systems Manager, Auto Scaling, Compute Optimizer

---

### 🟢 Scenario 006: Distributed Systems Performance (Lambda-DynamoDB)

**Cloud Context:**
- **Incident Type:** DynamoDB throttling causing API failures
- **Customer Impact:** 35% API error rate (500 errors)
- **Priority:** P2 (High - Customer-Facing Impact)
- **Skills Focus:** NoSQL optimization, serverless architecture, capacity planning

**Distributed System Architecture:**
```
API Gateway → Lambda (100 concurrent executions)
                ↓
            DynamoDB Table
            - Provisioned: 25 RCU, 25 WCU
            - Consumed: 125 RCU (throttled!)
            - Burst Capacity: Exhausted
                ↓
          ProvisionedThroughputExceededException
```

**Cloud Database Investigation:**
- ✅ **DynamoDB CloudWatch Metrics** - ConsumedReadCapacityUnits, throttles
- ✅ **Lambda Retry Behavior** - Exponential backoff analysis
- ✅ **Hot Partition Detection** - Partition key analysis
- ✅ **DynamoDB Contributor Insights** - Top partition keys by traffic
- ✅ **X-Ray Service Map** - End-to-end latency visualization
- ✅ **Auto Scaling Configuration** - Reactive vs predictive scaling

**Cloud Performance Tools:**
```bash
# DynamoDB metrics
aws cloudwatch get-metric-statistics \
  --namespace AWS/DynamoDB \
  --metric-name ConsumedReadCapacityUnits \
  --dimensions Name=TableName,Value=my-table \
  --statistics Sum \
  --start-time 2025-01-01T12:00:00Z \
  --end-time 2025-01-01T13:00:00Z \
  --period 300

# Check for throttling
aws cloudwatch get-metric-statistics \
  --namespace AWS/DynamoDB \
  --metric-name UserErrors \
  --dimensions Name=TableName,Value=my-table \
  --statistics Sum

# DynamoDB Contributor Insights
aws dynamodb describe-contributor-insights \
  --table-name my-table

# Lambda concurrency analysis
aws lambda get-function-concurrency \
  --function-name my-function
```

**Optimization Actions:**
- Enable DynamoDB Auto Scaling (target 70% utilization)
- Implement DynamoDB on-demand billing for unpredictable workloads
- Add DynamoDB DAX (caching) for read-heavy patterns
- Optimize partition key design (avoid hot partitions)
- Implement Lambda reserved concurrency limits
- Add CloudWatch alarms for throttle events

**Learning Outcomes:**
- Troubleshoot DynamoDB throttling issues
- Understand NoSQL capacity planning
- Optimize partition key design patterns
- Configure DynamoDB Auto Scaling
- Use CloudWatch Contributor Insights effectively

**AWS Services:** Lambda, DynamoDB, CloudWatch, X-Ray, API Gateway, DynamoDB DAX

---

### ⚫ Scenario 007: Multi-Service Cloud Outage (Advanced)

**Cloud Context:**
- **Incident Type:** Complete production environment failure
- **Customer Impact:** Full service outage - all customers affected
- **Priority:** P0 (Critical - Major Incident)
- **Skills Focus:** Complex cloud architecture debugging, war room coordination

**Multi-Service Architecture:**
```
Route 53 (DNS)
    ↓
Application Load Balancer
    ↓
┌─────────────────────────────────────────┐
│  Target Group: Web Tier (EC2)           │ ← All targets failing health checks
└─────────────────────────────────────────┘
    ↓
┌─────────────────────────────────────────┐
│  Lambda API Layer                        │ ← Connection timeouts
└─────────────────────────────────────────┘
    ↓
┌─────────────────────────────────────────┐
│  RDS Database (Multi-AZ)                 │ ← Primary cause of failure
└─────────────────────────────────────────┘
```

**Complex Cloud Investigation:**
- ✅ **Service Health Dashboard** - AWS Personal Health Dashboard
- ✅ **Multi-Service CloudWatch** - Unified observability view
- ✅ **CloudTrail Recent Changes** - Infrastructure modification audit
- ✅ **VPC Connectivity Matrix** - Inter-service communication validation
- ✅ **RDS Performance Insights** - Database bottleneck identification
- ✅ **ALB Target Health** - Load balancer health check analysis
- ✅ **Lambda VPC ENI Limits** - Network interface capacity

**Cloud Operations Command Center:**
```bash
# Unified health check across all services
./scripts/cloud_health_check.py --environment production

# Expected output:
# ✓ Route 53: HEALTHY
# ✓ ALB: DEGRADED (0/3 targets healthy)
# ✗ EC2: UNHEALTHY (Connection to RDS timing out)
# ✗ Lambda: UNHEALTHY (VPC connection failures)
# ✗ RDS: UNHEALTHY (Primary instance CPU 100%, no failover)

# CloudTrail - recent changes in last hour
aws cloudtrail lookup-events \
  --start-time $(date -u -d '1 hour ago' +%Y-%m-%dT%H:%M:%S)Z \
  --max-results 100 | jq '.Events[] | {Time, EventName, Username}'

# RDS performance deep dive
aws rds describe-db-instances \
  --db-instance-identifier prod-db | jq '.DBInstances[0].DBInstanceStatus'

aws pi get-resource-metrics \
  --service-type RDS \
  --identifier db-XXXXXX \
  --metric-queries file://rds-queries.json \
  --start-time 2025-01-01T12:00:00Z \
  --end-time 2025-01-01T13:00:00Z
```

**Learning Outcomes:**
- Execute complex multi-service incident response
- Triage multiple failing components systematically
- Use dependency mapping to identify root cause
- Coordinate war room communication
- Conduct thorough post-incident review

**AWS Services:** EC2, Lambda, RDS, ALB, Route 53, CloudWatch, CloudTrail, VPC, Systems Manager

---

## 🛠️ Setup

### Prerequisites

**Required Cloud Skills:**
- ✅ Basic AWS Console navigation
- ✅ Understanding of cloud computing concepts
- ✅ Familiarity with command-line interfaces
- ✅ Knowledge of networking fundamentals (TCP/IP, DNS)

**Technical Requirements:**
- ✅ AWS Free Tier account (no credit card charge if limits respected)
- ✅ AWS CLI v2 installed and configured
- ✅ Terraform v1.0+ installed
- ✅ Python 3.9+ with boto3 library
- ✅ Git for version control

**Recommended:**
- VS Code with AWS Toolkit extension
- AWS CloudShell (browser-based CLI)
- 2-3 hours per scenario for thorough learning

### Cloud Environment Setup

**1. AWS Account Configuration**
```bash
# Install AWS CLI v2 (if not installed)
# macOS
brew install awscli

# Linux
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Windows (PowerShell)
msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi

# Configure credentials
aws configure
# AWS Access Key ID: [Enter your access key]
# AWS Secret Access Key: [Enter your secret key]
# Default region: us-east-1 (recommended for cost)
# Default output format: json

# Verify configuration
aws sts get-caller-identity
```

**2. Clone Cloud Operations Lab**
```bash
git clone https://github.com/charles-bucher/AWS_Cloud_Support_Sim.git
cd AWS_Cloud_Support_Sim
```

**3. Install Cloud Automation Tools**
```bash
# Python dependencies (boto3 for AWS SDK)
pip install -r requirements.txt

# Terraform (Infrastructure as Code)
# macOS
brew install terraform

# Linux
wget https://releases.hashicorp.com/terraform/1.6.0/terraform_1.6.0_linux_amd64.zip
unzip terraform_1.6.0_linux_amd64.zip
sudo mv terraform /usr/local/bin/

# Verify
terraform --version
python --version
aws --version
```

**4. Set Up Cloud Cost Alerts**
```bash
# Navigate to AWS Billing Console
# https://console.aws.amazon.com/billing/home#/budgets

# Create budget alerts:
# - Budget Name: AWS-Lab-Budget
# - Budget Amount: $20/month
# - Alert at: $10 (50%), $15 (75%), $20 (100%)
# - Email: your-email@example.com
```

### First Cloud Incident Response

**Launch Scenario 001 (Cloud Networking):**

```bash
# Navigate to first cloud scenario
cd scenarios/001-ec2-connectivity

# Read incident brief (like a real support ticket)
cat README.md

# Deploy cloud infrastructure with Terraform
cd terraform
terraform init
terraform plan -out=tfplan
terraform apply tfplan

# Infrastructure deployed in ~5 minutes:
# ✓ VPC (10.0.0.0/16)
# ✓ Public/Private subnets (2 AZs)
# ✓ Internet Gateway + NAT Gateway
# ✓ EC2 instance (t2.micro)
# ✓ Security Groups + NACLs
# ✓ VPC Flow Logs → CloudWatch
# ✓ CloudWatch Dashboard

# Begin cloud incident investigation:
# 1. Review incident symptoms in README.md
# 2. Open CloudWatch Logs console
# 3. Query VPC Flow Logs for REJECT patterns
# 4. Analyze security group rules
# 5. Check route tables
# 6. Identify root cause
# 7. Implement fix
# 8. Validate resolution
# 9. Document findings

# Validate your fix
cd ..
python ../scripts/validate_fix.py --scenario 001

# Expected output:
# ✓ Issue reproduced successfully
# ✓ Root cause identified: Security group blocking SSH (port 22)
# ✓ Remediation applied: Updated security group rule
# ✓ Service restored: SSH connectivity working
# ✓ Monitoring configured: CloudWatch alarm for failed connections
# 
# Scenario 001: RESOLVED
# Time to Resolution: 45 minutes
# Cloud Skills Demonstrated: VPC networking, security groups, CloudWatch Logs

# Clean up cloud resources (important!)
cd terraform
terraform destroy -auto-approve
```

### Cloud Cost Management

**Expected Costs (AWS Free Tier):**
| Service | Monthly Cost | Free Tier Coverage |
|---------|--------------|-------------------|
| **EC2 (t2.micro)** | $0 | 750 hours/month free |
| **Lambda** | $0 | 1M requests + 400K GB-seconds free |
| **CloudWatch Logs** | $3-5 | First 5 GB free, then $0.50/GB |
| **CloudWatch Metrics** | $0 | 10 custom metrics free |
| **DynamoDB** | $0 | 25 GB storage + 25 WCU/RCU free |
| **S3** | $0 | 5 GB storage free |
| **VPC (NAT Gateway)** | $3-4 | $0.045/hour (~$32/month if left running) |
| **CloudTrail** | $0 | First trail free |
| **GuardDuty** | $0 | 30-day free trial |
| **TOTAL** | **$3-5/month** | *with proper cleanup* |

**⚠️ Critical Cost-Saving Rules:**
1. **ALWAYS run `terraform destroy` after each scenario**
2. **NAT Gateway costs $0.045/hour** - destroy when not in use
3. **Run scenarios sequentially, not in parallel**
4. **Use us-east-1 region** (cheapest)
5. **Set up billing alerts** ($10, $20 thresholds)
6. **Check for orphaned resources weekly**

---

## 📊 Cloud Skills Demonstrated

### Core AWS Cloud Services (Hands-On)

| AWS Service | Scenarios Used | Skill Level Achieved |
|------------|----------------|---------------------|
| **VPC** | 001, 007 | Advanced - Design, troubleshoot multi-tier VPC |
| **EC2** | 001, 005, 007 | Intermediate - Instance management, performance tuning |
| **Lambda** | 003, 006, 007 | Advanced - Performance optimization, monitoring |
| **S3** | 002 | Advanced - Security, IAM policies, access logs |
| **DynamoDB** | 006, 007 | Intermediate - Capacity planning, throttling |
| **RDS** | 007 | Intermediate - Multi-AZ, Performance Insights |
| **IAM** | 002, 004 | Advanced - Policy analysis, credential forensics |
| **CloudWatch** | All | Expert - Logs, Metrics, Alarms, Dashboards, Insights |
| **CloudTrail** | 002, 004, 007 | Advanced - Forensics, API audit trails |
| **GuardDuty** | 002, 004 | Intermediate - Threat detection, finding analysis |
| **Security Groups** | 001, 005, 007 | Advanced - Troubleshooting, least privilege |
| **ALB/ELB** | 007 | Intermediate - Health checks, target groups |

### Cloud Operations Competencies

**Observability & Monitoring** ⭐⭐⭐⭐⭐
- CloudWatch Logs query language (Insights)
- Custom CloudWatch dashboards for multi-service monitoring
- CloudWatch Alarms with SNS notification
- VPC Flow Logs analysis for network troubleshooting
- X-Ray distributed tracing for serverless applications
- CloudWatch Lambda Insights for performance metrics

**Incident Response** ⭐⭐⭐⭐⭐
- Systematic troubleshooting methodology (triage → RCA → fix → prevent)
- P0/P1/P2 incident prioritization
- War room coordination (multi-service outages)
- Post-incident documentation and runbooks
- Root cause analysis (5 Whys, Fishbone)
- Mean Time to Resolution (MTTR) optimization

**Security Operations** ⭐⭐⭐⭐
- GuardDuty finding interpretation and response
- CloudTrail forensic investigation techniques
- IAM credential compromise containment
- S3 bucket policy analysis and remediation
- Security incident communication and escalation
- Implementing preventive security controls

**Performance Optimization** ⭐⭐⭐⭐
- Lambda memory tuning and cold start reduction
- EC2 right-sizing with Compute Optimizer
- DynamoDB capacity planning and auto-scaling
- VPC endpoint implementation for cost savings
- Application Performance Monitoring (APM)
- Cost-performance trade-off analysis

**Infrastructure as Code** ⭐⭐⭐⭐
- Terraform module development
- Cloud infrastructure version control
- Multi-environment deployment strategies
- IaC troubleshooting and debugging
- State management and remote backends
- Cloud architecture documentation

---

## 🎓 Learning Path

### Cloud Beginner Track (Start Here)

**Prerequisites:**
- Completed AWS Cloud Practitioner cert OR equivalent knowledge
- Basic Linux command-line experience
- Understanding of networking concepts (IP addresses, subnets)

**Week 1-2: Cloud Networking Fundamentals**
- **Scenario 001: EC2 Connectivity** (2-3 hours)
  - Learn: VPC architecture, security groups, NACLs
  - Build: CloudWatch Log Insights queries for network analysis
  - Outcome: Troubleshoot complex VPC connectivity issues

**Week 3-4: Cloud Security Basics**
- **Scenario 002: S3 Security Incident** (2-3 hours)
  - Learn: S3 security model, IAM policies, CloudTrail
  - Build: Security incident response runbook
  - Outcome: Perform cloud forensic investigations

**Checkpoint:** Can you explain VPC security layers and perform CloudTrail forensics?

---

### Cloud Intermediate Track

**Prerequisites:**
- Completed Beginner Track scenarios
- AWS Solutions Architect Associate cert (recommended)
- Comfortable with AWS CLI and boto3

**Week 5-6: Serverless Performance**
- **Scenario 003: Lambda Timeout** (3 hours)
  - Learn: Lambda performance optimization, memory tuning
  - Build: CloudWatch dashboard for serverless monitoring
  - Outcome: Optimize Lambda functions for cost and performance

**Week 7-8: Cloud Infrastructure Operations**
- **Scenario 005: EC2 High CPU** (3 hours)
  - Learn: CloudWatch Agent, Systems Manager, performance analysis
  - Build: Auto Scaling based on custom CloudWatch metrics
  - Outcome: Right-size EC2 instances and implement auto-scaling

**Week 9-10: Distributed Systems**
- **Scenario 006: DynamoDB Throttling** (3 hours)
  - Learn: NoSQL capacity planning, partition key design
  - Build: DynamoDB auto-scaling with CloudWatch alarms
  - Outcome: Troubleshoot database performance issues

**Checkpoint:** Can you optimize Lambda functions and diagnose DynamoDB throttling?

---

### Cloud Advanced Track

**Prerequisites:**
- Completed Intermediate Track scenarios
- AWS SysOps Administrator cert (recommended)
- 6+ months AWS hands-on experience (labs count!)

**Week 11-12: Advanced Security Operations**
- **Scenario 004: GuardDuty Alert** (3-4 hours)
  - Learn: Advanced CloudTrail forensics, credential compromise
  - Build: Automated security response with Lambda + EventBridge
  - Outcome: Handle P0 security incidents with confidence

**Week 13-14: Complex Cloud Architecture**
- **Scenario 007: Multi-Service Outage** (4-5 hours)
  - Learn: Dependency mapping, multi-service triage
  - Build: Unified CloudWatch dashboard for entire stack
  - Outcome: Debug production outages involving 5+ AWS services

**Checkpoint:** Can you handle a P0 multi-service outage independently?

---

### Total Time Investment

| Track | Duration | Scenarios | Outcome |
|-------|----------|-----------|---------|
| **Beginner** | 2-4 weeks | 2 scenarios | Entry-level cloud skills |
| **Intermediate** | 4-6 weeks | 3 scenarios | Mid-level cloud operations |
| **Advanced** | 2-3 weeks | 2 scenarios | Senior cloud engineer skills |
| **TOTAL** | **8-13 weeks** | **7 scenarios** | **Production-ready cloud engineer** |

**Flexible Learning:**
- ⏰ Self-paced (no deadlines)
- 🔄 Repeat scenarios for mastery
- 📚 Reference documentation anytime
- 💼 Portfolio-ready after completion

---

## 🎯 Cloud Career Outcomes

### What You'll Have After Completion

**1. Portfolio GitHub Repository** 📂
- 7 production-grade cloud incident investigations
- Terraform infrastructure as code
- Python automation scripts (boto3)
- CloudWatch dashboard configurations
- Incident reports and documentation

**2. Demonstrable Cloud Skills** ☁️
- AWS service expertise (12+ services)
- Cloud observability (CloudWatch mastery)
- Security operations (GuardDuty, CloudTrail)
- Performance optimization
- Infrastructure as code (Terraform)

**3. Interview Talking Points** 💬
- "I investigated and resolved 7 production cloud incidents..."
- "I used CloudWatch Logs Insights to identify VPC connectivity issues..."
- "I optimized Lambda performance from 28s to 3s by..."
- "I performed a security forensic investigation using CloudTrail..."

**4. Certification Prep** 🎓
- AWS Solutions Architect Associate: 80% exam coverage
- AWS SysOps Administrator: 90% hands-on alignment
- Practical experience with exam services

---

### Resume & LinkedIn Updates

**Add to "Experience" Section:**
```
AWS Cloud Operations Lab | Independent Project | 2025
- Investigated and resolved 7 production-grade AWS incidents (P0/P1/P2)
- Built cloud observability stack using CloudWatch Logs, Metrics, and Dashboards
- Performed security incident response for GuardDuty alerts and IAM compromises
- Optimized Lambda performance (28s → 3s) through memory tuning and tracing
- Deployed cloud infrastructure using Terraform IaC across 7 environments
- Analyzed VPC Flow Logs and CloudTrail for network and security troubleshooting
```

**Add to "Skills" Section:**
- **Cloud Platforms:** AWS (VPC, EC2, Lambda, S3, DynamoDB, RDS)
- **Observability:** CloudWatch Logs/Metrics, VPC Flow Logs, X-Ray
- **Security:** GuardDuty, CloudTrail, IAM, AWS Config
- **IaC:** Terraform, AWS CloudFormation
- **Automation:** Python (boto3), AWS CLI, Bash
- **Monitoring:** CloudWatch Dashboards/Alarms, CloudWatch Insights

**LinkedIn Headline:**
```
Cloud Operations Engineer | AWS | Infrastructure | Observability | Python
```

---

### Target Job Titles (You're Ready For These)

**Entry-Level (0-2 years):**
- ☁️ Cloud Support Engineer (AWS focus)
- ☁️ Cloud Operations Associate
- ☁️ AWS Support Engineer I
- ☁️ Junior DevOps Engineer (Cloud)
- ☁️ Cloud Infrastructure Analyst
- ☁️ NOC Engineer (Cloud Operations)

**Mid-Level (with certs):**
- ☁️ Cloud Operations Engineer II
- ☁️ AWS Support Engineer II
- ☁️ DevOps Engineer (AWS)
- ☁️ Site Reliability Engineer (Cloud)
- ☁️ Cloud Infrastructure Engineer

**Salary Ranges (Remote, US):**
- Entry-Level: $50K-$75K
- With AWS SAA cert: $60K-$85K
- With 1 year experience: $70K-$95K
- Mid-Level: $85K-$120K

---

## 📚 Additional Resources

### AWS Documentation (Cloud-Native)
- [AWS Well-Architected Framework](https://aws.amazon.com/architecture/well-architected/)
- [AWS Observability Best Practices](https://aws-observability.github.io/observability-best-practices/)
- [CloudWatch Logs Insights Query Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html)
- [VPC Flow Logs Analysis](https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html)
- [AWS Security Best Practices](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html)

### Cloud Operations & SRE
- **Site Reliability Engineering** (Google SRE Book)
- **The DevOps Handbook** (Kim, Humble, Debois, Willis)
- **AWS Observability Workshop** (Free, hands-on)

### Certification Prep
- **AWS Solutions Architect Associate** (SAA-C03)
  - Aligns with scenarios: 001, 002, 003, 005, 006, 007
- **AWS SysOps Administrator Associate** (SOA-C02)
  - Aligns with all 7 scenarios (best match)

---

## 🤝 Contributing

This is an open-source cloud operations project. Contributions welcome!

**Ways to Contribute:**
- 🐛 Report bugs or infrastructure issues
- 💡 Suggest new cloud incident scenarios
- 📝 Improve documentation and runbooks
- ✨ Add CloudWatch dashboard templates
- 🧪 Contribute validation tests
- 🔧 Create automation scripts

**To Contribute:**
1. Fork the repository
2. Create feature branch: `git checkout -b feature/new-cloud-scenario`
3. Make changes and test thoroughly
4. Commit: `git commit -m 'Add Route 53 DNS failover scenario'`
5. Push: `git push origin feature/new-cloud-scenario`
6. Open Pull Request with description

---

## 📞 Contact

**Charles Bucher**  
Cloud Operations Engineer | AWS Specialist | Infrastructure Automation

**Connect With Me:**
- 💼 **LinkedIn:** [charles-bucher-cloud](https://linkedin.com/in/charles-bucher-cloud)
- 💻 **GitHub:** [@charles-bucher](https://github.com/charles-bucher)
- 📧 **Email:** quietopscb@gmail.com
- 🌐 **Portfolio:** [charles-bucher.github.io](https://charles-bucher.github.io/)

**Open to opportunities:**
- Cloud Support Engineer roles
- Cloud Operations positions
- DevOps Engineer (AWS focus)
- Remote-first companies
- Contract/W2/C2H opportunities

**Certifications in Progress:**
- AWS Solutions Architect Associate (Scheduled Q1 2025)
- AWS SysOps Administrator (Planned Q2 2025)

---

## ⭐ Support This Project

**If this cloud operations lab helped you:**

- ⭐ **Star this repository** - Helps others discover it
- 📢 **Share with your network** - On LinkedIn/Twitter
- 💬 **Write a testimonial** - Share your success story
- 🤝 **Connect with me** - Let's grow together
- 📝 **Write a blog post** - Document your learning journey

**Success Stories:**
> "This lab helped me land my first cloud support role at AWS Partner. The incident response methodology was exactly what they asked about in interviews."
> — *Future You* 🚀

---

## 📄 License

MIT License - See [LICENSE.md](LICENSE.md) for details

**Free for:**
- Personal learning and skill development
- Portfolio and resume projects
- Interview preparation
- Educational and training purposes
- Open-source contributions

---

## 🔥 Start Your Cloud Career Today

**You're 7 Scenarios Away From Being a Cloud Operations Engineer**

```bash
git clone https://github.com/charles-bucher/AWS_Cloud_Support_Sim.git
cd AWS_Cloud_Support_Sim
cd scenarios/001-ec2-connectivity
cat README.md  # Your first incident awaits...
```

---

## 🏷️ Keywords & Tags

`aws` `cloud-engineering` `cloud-operations` `devops` `site-reliability-engineering` `aws-solutions-architect` `aws-sysops` `cloudwatch` `lambda` `ec2` `vpc` `s3` `dynamodb` `terraform` `infrastructure-as-code` `observability` `incident-response` `cloud-security` `guardduty` `cloudtrail` `aws-certification` `cloud-support-engineer` `aws-troubleshooting` `cloud-monitoring` `python-boto3` `aws-cli` `vpc-flow-logs` `cloud-forensics` `performance-optimization` `serverless` `cloud-architecture`

---

[![AWS](https://img.shields.io/badge/AWS-Cloud%20Engineering-orange)](https://aws.amazon.com/) 
[![DevOps](https://img.shields.io/badge/DevOps-Cloud%20Operations-success)](https://aws.amazon.com/) 
[![SRE](https://img.shields.io/badge/SRE-Site%20Reliability-blue)](https://sre.google/)
[![Python](https://img.shields.io/badge/Python-boto3-blue)](https://boto3.amazonaws.com/)
[![Terraform](https://img.shields.io/badge/Terraform-IaC-purple)](https://www.terraform.io/)

---

**Learn cloud operations by responding to real production incidents**

*Made with ☁️ by cloud engineers, for future cloud engineers*

**Practice makes perfect. Cloud incidents make you production-ready.** 🚀