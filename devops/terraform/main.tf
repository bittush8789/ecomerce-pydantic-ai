provider "aws" { region = "us-east-1" }
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name = "ecom-vpc"
  cidr = "10.0.0.0/16"
  azs = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets = ["10.0.101.0/24", "10.0.102.0/24"]
}
module "eks" {
  source = "terraform-aws-modules/eks/aws"
  cluster_name = "ecom-eks"
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  eks_managed_node_groups = {
    prod = { min_size = 2, max_size = 10, instance_types = ["t3.medium"] }
  }
}
