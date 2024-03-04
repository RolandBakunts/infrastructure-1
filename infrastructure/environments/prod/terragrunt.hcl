terraform {
  source = "../../../modules/network"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  env             = "prod"
  azs             = ["us-west-1a", "us-west-1b"]
  private_subnets = ["10.1.0.0/18", "10.1.32.0/18"]
  public_subnets  = ["10.1.64.0/18", "10.1.96.0/18"]
  vpc_cidr_block  = "10.1.0.0/16"
  owner_tag       = "rbakunts"
  project_tag     = "eks"
  name_tag        = "_YVN_prod"
  
  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
    "kubernetes.io/cluster/prod-demo"  = "owned"
  }

  public_subnet_tags = {
    "kubernetes.io/role/elb"         = 1
    "kubernetes.io/cluster/pod-demo" = "owned"
  }
}