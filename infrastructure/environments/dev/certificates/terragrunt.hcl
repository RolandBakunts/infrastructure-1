terraform {
  source = "../../../modules/certificates"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  env               = "dev"
  hosted_zone       = "learningpurposestore.store"
  domain_name       = ""
  domains = [
      "dev.dashboard.learningpurposestore.store",
      "grafana.learningpurposestore.store",
      "jenkins.learningpurposestore.store",
      "application.learningpurposestore.store",
  ]
}
