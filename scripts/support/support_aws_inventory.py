
from botocore.exceptions import ClientError, BotoCoreError

def safe_aws_call(func, description="AWS call"):
    try:
        return func()
    except ClientError as e:
        logger.error(f"{description} failed: {e.response['Error']['Code']}")
    except BotoCoreError as e:
        logger.error(f"{description} SDK failure: {e}")
    return None

import logging

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(name)s: %(message)s"
)
logger = logging.getLogger(__name__)

import boto3

def get_account_info():
    try:
    sts = boto3.client("sts")
except BotoCoreError as e:
    logger.critical("Failed to create sts client: {e}")
    raise

    identity = sts.get_caller_identity()
    logger.info("AWS Account Info:")
    logger.info(f"  Account ID: {identity['Account']}")
    logger.info(f"  User ARN: {identity['Arn']}")
    logger.info(f"  User ID: {identity['UserId']}\n")

def list_regions():
    try:
    ec2 = boto3.client("ec2")
except BotoCoreError as e:
    logger.critical("Failed to create ec2 client: {e}")
    raise

    regions = [r['RegionName'] for r in ec2.describe_regions()['Regions']]
    logger.info("AWS Regions:")
    logger.info(f"  {', '.join(regions)}\n")
    return regions

def list_s3_buckets():
    try:
    s3 = boto3.client("s3")
except BotoCoreError as e:
    logger.critical("Failed to create s3 client: {e}")
    raise

    buckets = [b['Name'] for b in s3.list_buckets()['Buckets']]
    logger.info("S3 Buckets:")
    logger.info(f"  {', '.join(buckets) if buckets else 'None'}\n")

def list_ec2_instances():
    try:
    ec2 = boto3.client("ec2")
except BotoCoreError as e:
    logger.critical("Failed to create ec2 client: {e}")
    raise

    instances = []
    for r in list_regions():
        regional_ec2 = boto3.client("ec2", region_name=r)
        res = regional_ec2.describe_instances()
        for reservation in res['Reservations']:
            for instance in reservation['Instances']:
                instances.append({
                    "ID": instance['InstanceId'],
                    "Type": instance['InstanceType'],
                    "State": instance['State']['Name'],
                    "Region": r
                })
    logger.info("EC2 Instances:")
    if instances:
        for i in instances:
            logger.info(f"  {i['ID']} | {i['Type']} | {i['State']} | {i['Region']}")
    else:
        logger.info("  None")
    logger.info()

def list_lambda_functions():
    functions = []
    for r in list_regions():
        lambda_client = boto3.client("lambda", region_name=r)
        res = lambda_client.list_functions()
        for func in res.get('Functions', []):
            functions.append({
                "Name": func['FunctionName'],
                "Runtime": func['Runtime'],
                "Region": r
            })
    logger.info("Lambda Functions:")
    if functions:
        for f in functions:
            logger.info(f"  {f['Name']} | {f['Runtime']} | {f['Region']}")
    else:
        logger.info("  None")
    logger.info()

if __name__ == "__main__":
    get_account_info()
    list_s3_buckets()
    list_ec2_instances()
    list_lambda_functions()