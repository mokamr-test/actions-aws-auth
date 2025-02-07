provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-085ad6ae776d8f09c"  # Amazon Linux 2023 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "GitHubActionsEC2"
  }
}

