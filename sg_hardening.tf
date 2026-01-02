# -----------------------------
# Security Group Hardening
# -----------------------------

resource "aws_security_group_rule" "ssh_restrict" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.lab_sg.id

  # Replace YOUR_PUBLIC_IP/32 with 0.0.0.0/0 for safe preview/testing
  # If you want real SSH restriction, put your public IP like "123.45.67.89/32"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "http_allow" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  security_group_id = aws_security_group.lab_sg.id
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "icmp_allow" {
  type              = "ingress"
  from_port         = -1
  to_port           = -1
  protocol          = "icmp"
  security_group_id = aws_security_group.lab_sg.id
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "all_outbound" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = aws_security_group.lab_sg.id
  cidr_blocks       = ["0.0.0.0/0"]
}
