terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.59.0"
    }
  }
}
provider "aws" {
    region = "us-east-1"
  # Configuration options
}
resource "aws_instance" "tf-ec2" {
  ami           = "ami-02f3f602d23f1659d"
  instance_type = "t2.micro"
  key_name = "mgokkey2"
  tags = {
    "Name" = "tf-ec2"
  }
}
resource "aws_s3_bucket" "tf-s3" {
    bucket = "gokmus-tf-test-bucket"
}