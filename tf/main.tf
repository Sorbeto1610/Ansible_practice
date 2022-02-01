provider "aws" {
  region  = var.region
}

resource "aws_key_pair" "admin" {
  key_name   = "admin"
  public_key = file(var.aws_public_key_ssh_path)
}

resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_security_group" "sg" {
  vpc_id = aws_default_vpc.default.id
  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "my-ec2-1" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = "admin"
  security_groups = [aws_security_group.sg.name]

  tags = {
    Name = var.tag_name
  }
  depends_on = [aws_key_pair.admin, aws_security_group.sg]
}

resource "aws_instance" "my-ec2-2" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = "admin"
  security_groups = [aws_security_group.sg.name]


  tags = {
    Name = var.tag_name
  }
  depends_on = [aws_key_pair.admin, aws_security_group.sg]
}

resource "aws_instance" "my-ec2-3" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = "admin"
  security_groups = [aws_security_group.sg.name]

  tags = {
    Name = var.tag_name
  }
  depends_on = [aws_key_pair.admin, aws_security_group.sg]
}
