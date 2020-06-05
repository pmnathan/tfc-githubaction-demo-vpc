provider "aws" {
  profile    = "default"
  region     = "us-west-2"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"

  name               = "fanniemae-app-dev"
  cidr               = "10.10.10.0/24"
  azs                = ["us-west-2a", "us-west-2b", "us-west-2c"]
  private_subnets    = ["10.10.10.0/27", "10.10.10.32/27", "10.10.10.64/27"]
  public_subnets     = ["10.10.10.96/27", "10.10.10.128/27", "10.10.10.160/27"]
  enable_nat_gateway = true
  single_nat_gateway = true
  tags               = {
    Name  = "fanniemae_vpc"
    ttl   = 0
    Environment = "dev"
    Owner = "me"
  }
}
