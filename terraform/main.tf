terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.4.0"
}

provider "aws" {
  region = "us-east-1"
}

# Very simple EC2 instance example
resource "aws_instance" "demo" {
  ami           = "ami-0c02fb55956c7d316" # example AMI, check for your region
  instance_type = "t3.micro"

  tags = {
    Name = "golang-devops-demo"
  }
}
