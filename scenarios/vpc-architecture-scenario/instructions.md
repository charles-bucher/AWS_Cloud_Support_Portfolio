# VPC Architecture - Honest Instructions

## Goal
Practice designing and troubleshooting VPC network setup.

---

## Steps
1. Deploy CloudFormation template
2. Launch EC2 into PublicSubnet
3. Test connectivity to Internet
4. If no connectivity:
   - Check route tables
   - Check IGW attachment
   - Check subnet public IP mapping
5. Document issues, fixes, and lessons learned

---

## Deliverables
- Screenshots of VPC, subnets, IGW
- Notes in `vpc-architecture.txt`
