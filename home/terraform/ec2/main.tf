# WebServer
provider "aws" {
    profile = var.aws_profile
    region = var.aws_region
}

resource "aws_instance" "this" {
  instance_type     = "t3a.micro"
  availability_zone = "us-east-1a"
  ami               = "ami-0022f774911c1d690"

  user_data = <<-EOF
              #!/bin/bash
              sudo service apache2 start
              EOF
  
  tags = {
    "Name" = "Test"
  }
}
