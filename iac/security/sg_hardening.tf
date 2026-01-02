# Restrict SSH to your IP only
resource "aws_security_group_rule" "ssh_restrict" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  cidr_blocks              = ["YOUR_PUBLIC_IP/32"]
  security_group_id        = aws_security_group.lab_sg.id
  description              = "Allow SSH from my IP only"
}

# Restrict HTTP to VPC only
resource "aws_security_group_rule" "http_restrict" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["10.0.0.0/16"]
  security_group_id = aws_security_group.lab_sg.id
  description       = "HTTP internal only"
}
