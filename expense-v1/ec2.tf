resource "aws_instance" "frontend" {
  ami = "ami-090252cbe067a9e58"
  instance_type = "t2.micro"
  vpc_security_group_ids = "sg-0fd58fb23956dd805"
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend" {
  ami = "ami-090252cbe067a9e58"
  instance_type = "t2.micro"
  vpc_security_group_ids = "sg-0fd58fb23956dd805"
  tags = {
    Name = "backend"
  }
}

resource "aws_instance" "mysql" {
  ami = "ami-090252cbe067a9e58"
  instance_type = "t2.micro"
  vpc_security_group_ids = "sg-0fd58fb23956dd805"
  tags = {
    Name = "mysql"
  }
}

