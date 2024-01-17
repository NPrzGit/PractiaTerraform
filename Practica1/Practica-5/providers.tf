terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "=>4.36.0, <5.25.0, !=4.43.0"
    }
  }
  required_version = "~>1.3.6"
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

provider "aws" {
  # Configuration options
  region = "us-east-2"
  alias = "OHIO"
}