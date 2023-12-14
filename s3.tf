terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 0.14.0, < 0.15.0"
  backend "s3" {
    bucket = "my-kaddu671"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}
provider "aws" {
  region = "us-east-1" # Specify your desired AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "thyjiwhtw33456" # Replace with your desired bucket name
  

  tags = {
    Name        = "MyBucket"
    Environment = "Production"
  }
}
