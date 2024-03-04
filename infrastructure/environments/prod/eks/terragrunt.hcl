terraform {
  source = "../../../modules/eks"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  eks_version     = "1.26"
  env             = "prod"
  eks_name        = "demo"
  subnet_ids      = dependency.vpc.outputs.private_subnet_ids
  owner_tag       = "rbakunts"
  project_tag     = "eks"
  name_tag        = "_YVN_prod"
  
  node_groups = {
    general = {
      capacity_type  = "ON_DEMAND"
      instance_types = ["t3.2xlarge"]
      scaling_config = {
        desired_size = 2
        max_size     = 10
        min_size     = 0
      }
    }
  }
}

dependency "vpc" {
  config_path = "../network"

  mock_outputs = {
    private_subnet_ids = ["subnet-1234", "subnet-5678"]
  }
}