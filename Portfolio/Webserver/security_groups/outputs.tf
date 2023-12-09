output "security_group_id" {
  description = "alllow ssh security group"
  value = aws_security_group.allow_ssh_apache.id
}

output "nginx_security_group_id" {
  description = "allow ssh to nginx"
  value = aws_security_group.allow_ssh.id
}