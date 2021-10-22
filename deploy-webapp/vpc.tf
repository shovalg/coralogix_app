module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.10.0"
  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

}

data "aws_vpc" "main" {
  id = module.vpc.vpc_id
}
