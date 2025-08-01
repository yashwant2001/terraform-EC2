terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.5.0"
    }
  }
}

resource "aws_instance" "web" {
  ami           = "****"
  instance_type = "t2.micro"
  key_name      = "my-key"
  tags = {
    Name = "web"
  }
}
