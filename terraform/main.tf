provider "aws" {
  region = var.region
}


resource "aws_security_group" "web_sg" {
  name = "web-security-group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web_server" {
  ami           = "ami-0c02fb55956c7d316" # Ubuntu 22.04 us-east-1
  instance_type = var.instance_type
  key_name      = "mykey"
  security_groups = [aws_security_group.web_sg.name]

  tags = {
    Name = "Docker-Server"
  }
}
