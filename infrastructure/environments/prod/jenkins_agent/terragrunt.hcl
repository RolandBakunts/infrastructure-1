terraform {
  source = "../../../modules/jenkins_agent"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  cidr-block-vpc = "10.50.0.0/16"
  azs = "us-east-1a"
  cidr-block-route_tb = "0.0.0.0/0"
  owner-tag = "rbakunts"
  name-tag =  "_YVN_prod"
  project-tag = "2024_t2_YVN"
  instance-type = "t3.medium"
  private_cidr_block = "10.50.1.0/24"
  public_cidr_block = "10.50.2.0/24"
  key_local_path    = ./prod-terraform-key.pem
}
