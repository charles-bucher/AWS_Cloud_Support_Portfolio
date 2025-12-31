terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

provider "aws" {
  region = var.region
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami" {
  # Amazon Linux 2 (update as needed for region)
  default = "ami-0c02fb55956c7d316"
}

resource "aws_key_pair" "demo_key" {
  key_name   = "aws-cloud-support-sim-key"
  public_key = file(var.pubkey_path)
}

variable "pubkey_path" {
  default = "~/.ssh/id_rsa.pub"
}

resource "aws_security_group" "ssh_only" {
  name        = "aws-cloud-support-sim-ssh-only"
  description = "Allow SSH from all (for demo only)"
  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "demo" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.demo_key.key_name
  vpc_security_group_ids = [aws_security_group.ssh_only.id]

  tags = {
    Name = "aws-cloud-support-sim-demo"
  }
}

output "instance_id" {
  value = aws_instance.demo.id
}

output "public_ip" {
  value = aws_instance.demo.public_ip
}
