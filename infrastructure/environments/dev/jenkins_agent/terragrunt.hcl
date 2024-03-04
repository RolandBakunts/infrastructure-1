terraform {
  source = "../../../modules/jenkins_agent"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  cidr-block-vpc = "10.20.0.0/16"
  azs = "us-east-1a"
  cidr-block-route_tb = "0.0.0.0/0"
  owner-tag = "rbakunts"
  name-tag =  "_YVN_dev"
  project-tag = "2024_t2_YVN"
  instance-type = "t3.medium"
  private_cidr_block = "10.20.1.0/24"
  public_cidr_block = "10.20.2.0/24"
   key_local_path    = ./dev-terraform-key.pem
}
