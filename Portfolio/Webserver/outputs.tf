output "security_group_id" {
  description = "alllow ssh security group"
  value = module.security_group.nginx_security_group_id
}

output "security_group_name" {
  description = "name of security group"
  value = module.security_group.nginx_security_group_id
}