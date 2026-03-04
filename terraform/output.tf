output "instance_public_ip" {
  description = "Public IP of EC2"
  value       = aws_instance.web_server.public_ip
}

output "instance_id" {
  description = "Instance ID"
  value       = aws_instance.web_server.id
}

output "web_server_ip" {
  value = aws_instance.web_server.public_ip
}
