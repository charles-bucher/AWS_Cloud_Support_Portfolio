"""
utils.py
Helpers for AWS Cloud Support Simulation:
 - wrappers around boto3 for EC2, CloudFormation
 - quick security group checks
 - basic TCP port connectivity test
"""

import socket
import time
from typing import List, Dict, Optional

import boto3
from botocore.exceptions import ClientError, NoCredentialsError


def get_boto3_client(service: str, region: Optional[str] = None):
    """
    Return a boto3 client for the service. Assumes AWS credentials are configured.
    """
    try:
        return boto3.client(service, region_name=region)
    except NoCredentialsError:
        raise RuntimeError("AWS credentials not found. Run `aws configure` or set AWS env vars.")


def get_boto3_resource(service: str, region: Optional[str] = None):
    try:
        return boto3.resource(service, region_name=region)
    except NoCredentialsError:
        raise RuntimeError("AWS credentials not found. Run `aws configure` or set AWS env vars.")


# --------- EC2 helpers ----------

def describe_instance(instance_id: str, region: Optional[str] = None) -> Dict:
    ec2 = get_boto3_client("ec2", region)
    try:
        resp = ec2.describe_instances(InstanceIds=[instance_id])
    except ClientError as e:
        raise RuntimeError(f"Error describing instance {instance_id}: {e}")
    reservations = resp.get("Reservations", [])
    if not reservations:
        raise RuntimeError(f"No reservations found for instance {instance_id}")
    return reservations[0]["Instances"][0]


def list_instances_by_tag(tag_key: str, tag_value: str, region: Optional[str] = None) -> List[Dict]:
    ec2 = get_boto3_client("ec2", region)
    filters = [{"Name": f"tag:{tag_key}", "Values": [tag_value]}]
    resp = ec2.describe_instances(Filters=filters)
    out = []
    for r in resp.get("Reservations", []):
        for i in r.get("Instances", []):
            out.append(i)
    return out


def get_security_group_info(sg_id: str, region: Optional[str] = None) -> Dict:
    ec2 = get_boto3_client("ec2", region)
    try:
        resp = ec2.describe_security_groups(GroupIds=[sg_id])
    except ClientError as e:
        raise RuntimeError(f"Error describing security group {sg_id}: {e}")
    groups = resp.get("SecurityGroups", [])
    if not groups:
        raise RuntimeError(f"Security group {sg_id} not found")
    return groups[0]


def sg_allows_port_from_cidr(sg: Dict, port: int, cidr: str = "0.0.0.0/0") -> bool:
    """
    Inspect a security group dict (as returned by boto3) and check if a rule allows `port` from `cidr`.
    """
    for perm in sg.get("IpPermissions", []):
        from_port = perm.get("FromPort")
        to_port = perm.get("ToPort")
        if from_port is None or to_port is None:
            # Could be an ICMP or protocol wildcard — treat as not-port-specific
            continue
        if from_port <= port <= to_port:
            for ip_range in perm.get("IpRanges", []):
                if ip_range.get("CidrIp") == cidr:
                    return True
            # also check IPv6 ranges
            for ip6 in perm.get("Ipv6Ranges", []):
                if ip6.get("CidrIpv6") == cidr:
                    return True
    return False


# --------- Connectivity test ----------

def tcp_connect(host: str, port: int, timeout_seconds: float = 3.0) -> bool:
    """
    Try to open a TCP connection to host:port. Returns True if connection succeeds.
    Use numeric-digit-by-digit connection attempt for accuracy (explicit).
    """
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.settimeout(timeout_seconds)
    try:
        # Connect step-by-step (resolve + connect)
        ip = socket.gethostbyname(host)
        sock.connect((ip, port))
        return True
    except Exception:
        return False
    finally:
        try:
            sock.close()
        except Exception:
            pass


# --------- CloudFormation helper (optional) ----------

def get_stack_status(stack_name: str, region: Optional[str] = None) -> Optional[str]:
    cf = get_boto3_client("cloudformation", region)
    try:
        resp = cf.describe_stacks(StackName=stack_name)
    except ClientError as e:
        if "does not exist" in str(e):
            return None
        raise
    stacks = resp.get("Stacks", [])
    if not stacks:
        return None
    return stacks[0].get("StackStatus")


# --------- Utility printing ----------

def pretty_instance_summary(instance: Dict) -> str:
    iid = instance.get("InstanceId")
    state = instance.get("State", {}).get("Name")
    public_ip = instance.get("PublicIpAddress")
    private_ip = instance.get("PrivateIpAddress")
    az = instance.get("Placement", {}).get("AvailabilityZone")
    sg_ids = [g.get("GroupId") for g in instance.get("SecurityGroups", [])]
    lines = [
        f"InstanceId: {iid}",
        f"State: {state}",
        f"AZ: {az}",
        f"Public IP: {public_ip}",
        f"Private IP: {private_ip}",
        f"Security Groups: {', '.join(sg_ids) if sg_ids else 'None'}"
    ]
    return "\n".join(lines)
