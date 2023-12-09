
#refernces the instance we are going to create named web, can be refernced later in terraform code
resource "aws_instance" "web" {
  ami           = "ami-0ec3d9efceafb89e0" #Debian
  instance_type = "t2.micro"
  key_name      = "webserver_2"
  vpc_security_group_ids = [module.security_group.nginx_security_group_id]
  tags = {
    Name = "NGINX Server"
  }
}

#creates a public key pair referencing the private key in the next set of coed
resource "aws_key_pair" "webserver_2" {
  key_name   = "webserver_2"
  public_key = tls_private_key.priv_key.public_key_openssh

}
# RSA key of size 4096 bits
# creates private key using RSA algorithm with 4096 bits
resource "tls_private_key" "priv_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
  
}
#stores the referenced private key in the local machine
resource "local_file" "webserver_2" {
  content  = tls_private_key.priv_key.private_key_pem
  filename = "webserver_2.pem"


}

module "security_group" {
  source = "./security_groups"
  name = "allow ssh to NGINX server"
}