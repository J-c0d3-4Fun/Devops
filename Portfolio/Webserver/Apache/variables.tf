variable "ami_id" {
  type = string
  default = "ami-0ec3d9efceafb89e0" #Debian
}

variable "name" {
  type = string
  default = "Apache Server"
}

variable "region" {
  type = string
  default = "us-east-2"
}

variable "group" {
  type = string
  default = "sg-077f10c6010b0ea4c"
}

