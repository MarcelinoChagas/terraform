terraform {
  required_version = "1.8.2"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.48.0"
    }
  }

}
provider "aws" {
  region = "us-east-1"
  profile = "tf01"
}

resource "aws_s3_bucket" "my-bucket-test" {
  bucket = "my-tf-test-bucket-teeeeste5123"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}