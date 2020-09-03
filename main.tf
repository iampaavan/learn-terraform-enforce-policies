terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-west-1"
}

resource "aws_instance" "terraform_instance" {
  ami           = "ami-04084d72e59b43b00"
  instance_type = "t2.micro"
}
