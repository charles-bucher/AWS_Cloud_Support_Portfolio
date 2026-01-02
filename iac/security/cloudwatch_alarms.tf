# CloudWatch alarm for CPU > 80% on lab instance
resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "HighCPU-LabInstance"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 80
  alarm_description   = "Alarm if lab instance CPU > 80%"
  dimensions = {
    InstanceId = aws_instance.lab_instance.id
  }
}
