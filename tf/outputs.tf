output "ec2_public_ip1" {
  description = "The ip of the machine"
  value       = aws_instance.my-ec2-1.public_ip
}

output "ec2_public_ip2" {
  description = "The ip of the machine"
  value       = aws_instance.my-ec2-2.public_ip
}


output "ec2_public_ip3" {
  description = "The ip of the machine"
  value       = aws_instance.my-ec2-3.public_ip
}


output "ec2_public_dns-1" {
  description = "The ip of the machine"
  value       = aws_instance.my-ec2-1.public_dns
}

output "ec2_public_dns-2" {
  description = "The ip of the machine"
  value       = aws_instance.my-ec2-1.public_dns
}

output "ec2_public_dns-3" {
  description = "The ip of the machine"
  value       = aws_instance.my-ec2-3.public_dns
}
