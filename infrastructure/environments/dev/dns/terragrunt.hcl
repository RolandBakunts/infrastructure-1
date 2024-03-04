terraform {
  source = "../../../modules/records"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  env               = "dev"
  hosted_zone       = "learningpurposestore.store"
  lb_name           = "dev-traefik-lb" 
  domains = [
    "application.learningpurposestore.store",
    "jenkins.learningpurposestore.store",
    "grafana.learningpurposestore.store",
    "dev.dashboard.learningpurposestore.store"
  ]
}