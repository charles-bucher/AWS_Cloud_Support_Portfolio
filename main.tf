terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.25"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# -----------------------------
# Data
# -----------------------------
data "aws_availability_zones" "available" {}

# -----------------------------
# VPC
# -----------------------------
resource "aws_vpc" "lab_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "lab-vpc"
  }
}

# -----------------------------
# Internet Gateway
# -----------------------------
resource "aws_internet_gateway" "lab_igw" {
  vpc_id = aws_vpc.lab_vpc.id

  tags = {
    Name = "lab-igw"
  }
}

# -----------------------------
# Public Subnet
# -----------------------------
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.lab_vpc.id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "lab-public-subnet"
  }
}

# -----------------------------
# Route Table (PUBLIC)
# -----------------------------
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.lab_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lab_igw.id
  }

  tags = {
    Name = "lab-public-rt"
  }
}

resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}

# -----------------------------
# Security Group
# -----------------------------
resource "aws_security_group" "lab_sg" {
  name        = "lab-security-group"
  description = "Allow SSH, HTTP, ICMP"
  vpc_id      = aws_vpc.lab_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    protocol    = "icmp"
    from_port   = -1
    to_port     = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "lab-sg"
  }
}

# -----------------------------
# Random ID (S3 uniqueness)
# -----------------------------
resource "random_id" "bucket_id" {
  byte_length = 4
}

# -----------------------------
# S3 Bucket
# -----------------------------
resource "aws_s3_bucket" "lab_bucket" {
  bucket = "lab-bucket-${random_id.bucket_id.hex}"

  tags = {
    Name = "lab-bucket"
  }
}

# -----------------------------
# EC2 Instance
# -----------------------------
resource "aws_instance" "lab_instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public_subnet.id
  key_name                    = var.key_pair_name
  vpc_security_group_ids      = [aws_security_group.lab_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "lab-instance"
  }
}
