resource "aws_instance" "frontend" {
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend" {
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups
  tags = {
    Name = "backend"
  }
}

resource "aws_instance" "mysql" {
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups
  tags = {
    Name = "mysql"
  }
}

variable "ami" {
  default = "ami-090252cbe067a9e58"
}

variable instance_type {
  default = "t3.small"
}

variable "security_groups" {
  default = ["sg-0fd58fb23956dd805"]
}