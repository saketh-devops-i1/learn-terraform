resource "aws_instance" "frontend" {
  ami = ami-090252cbe067a9e58
  instance_type = t2.micro
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend" {
  ami = ami-090252cbe067a9e58
  instance_type = t2.micro
  tags = {
    Name = "backend"
  }
}