output "vpc_id" {
  value = aws_vpc.lab_vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "security_group_id" {
  value = aws_security_group.lab_sg.id
}

output "instance_public_ip" {
  value = aws_instance.lab_instance.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.lab_bucket.bucket
}

output "available_azs" {
  value = data.aws_availability_zones.available.names
}
