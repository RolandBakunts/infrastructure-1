terraform {
  source = "../../../modules/certificates"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  env               = "prod"
  hosted_zone       = "learningpurposestore.store"
  domain_name       = ""
  domains = [
      "prod.dashboard.learningpurposestore.store",
      "prod.grafana.learningpurposestore.store",
      "prod.jenkins.learningpurposestore.store",
      "prod.application.learningpurposestore.store",
  ]
}
