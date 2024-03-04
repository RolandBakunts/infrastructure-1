terraform {
  source = "../../../modules/network"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  env             = "dev"
  azs             = ["us-west-1a", "us-west-1b"]
  private_subnets = ["10.0.0.0/18", "10.0.32.0/18"]
  public_subnets  = ["10.0.64.0/18", "10.0.96.0/18"]
  vpc_cidr_block  = "10.0.0.0/16" 
  owner_tag       = "rbakunts"
  project_tag     = "eks"
  name_tag        = "_YVN_dev"
  
  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
    "kubernetes.io/cluster/dev-demo"  = "owned"
  }

  public_subnet_tags = {
    "kubernetes.io/role/elb"         = 1
    "kubernetes.io/cluster/dev-demo" = "owned"
  }
}