terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.4.0"
    }
  }
}


resource "aws_instance" "web" {
  ami           = "*******"
  instance_type = "t3.micro"
  key_name      = "my-key-t3"
  tags = {
    Name = "webServer"
  }
}