terraform {
  source = "../../../modules/records"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  env               = "prod"
  hosted_zone       = "learningpurposestore.store"
  lb_name           = "prod-traefik-lb"
  domains = [
    "prod.application.learningpurposestore.store",
    "prod.jenkins.learningpurposestore.store",
    "prod.grafana.learningpurposestore.store",
    "prod.dev.dashboard.learningpurposestore.store"
  ]
}