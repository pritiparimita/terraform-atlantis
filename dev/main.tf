provider "aws" {
  region = "ap-south-1"
}


terraform {
  backend "s3" {
    bucket = "<S3-BUCKET-NAME>"
    key = "atlantis/terraform.tfstate"
    region = "ap-south-1"
    profile = "default"
  }
}
resource "aws_instance" "this" {
  ami = "ami-"
  instance_type = "t2.micro"

  tags = {
    Name = "$WORKSPACE-ec2"
  }
}
