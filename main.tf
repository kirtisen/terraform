terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
  
provider "aws" {
 region  = "us-east-1"
  profile = "kittu"
}

resource "aws_instance" "web" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
}

