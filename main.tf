provider "aws" {
  region = var.region
}

module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr             = "10.0.0.0/16"
  vpc_name             = "MyVPC"
  public_subnet_cidr   = "10.0.1.0/24"
  private_subnet_cidr_1 = "10.0.2.0/24"
  private_subnet_cidr_2 = "10.0.3.0/24"
  availability_zone_1   = "us-east-1a"
  availability_zone_2   = "us-east-1b"
}
