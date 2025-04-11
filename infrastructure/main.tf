provider "aws" {
  region     = "us-east-1"
}

terraform {
  backend "s3" {
    bucket          = "demo-20250508"
    key               = "statefiles/terraform.tfstate"
    region           = "us-east-1"
    dynamodb_table = "mytab"
    encrypt        = true
  }
}

module "ecr" {
  source   = "./modules/ecr"
}

module "vpc" {
  source   = "./modules/vpc"
  az_count = "2"
}
