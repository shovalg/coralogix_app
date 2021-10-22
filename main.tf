terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.62"
        }
    }

    required_version = ">= 1.0.8"
}

provider "aws" {
  region = "us-east-1"
}

module "deploy-webapp" {
  source = "./deploy-webapp"
  cluster_name = "terraform-assignment"
}
