terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.5.0"
    }
  }
}



resource "aws_instance" "web" {
  ami           = "ami-08a6efd148b1f7504"
  instance_type = "t2.micro"
  key_name      = "my-key"
  tags = {
    Name = "web"
  }
}