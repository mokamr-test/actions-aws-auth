provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "example" {
  ami           = "ami-085ad6ae776d8f09c"  # Amazon Linux 2023 AMI
  instance_type = "t2.micro"
  subnet_id     = "subnet-092bf86693f3d649c"
  vpc_security_group_ids = ["sg-07679cd0804dd607b"]
  tags = {
    Name = "GitHubActionsEC2"
  }
}

