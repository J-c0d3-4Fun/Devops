
#refernces the instance we are going to create named web, can be refernced later in terraform code
resource "aws_instance" "apache" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = "webserver_2"
  vpc_security_group_ids = [module.security_group.security_group_id]
  tags = {
    Name = var.name
  }
}

module "security_group" {
  source = "../security_groups"
  name = "allow_ssh_apache"
}
