output "instance_id" {
  description = "The ID of the created instance"
  value       = aws_instance.santhu_instance.id
}

output "instance_public_ip" {
  description = "The public IP address of the created instance"
  value       = aws_instance.santhu_instance.public_ip
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.javaapp_sg.id
}

output "security_group_name" {
  description = "The name of the security group"
  value       = aws_security_group.javaapp_sg.name
}
