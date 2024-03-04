output "acm_certificate_arns" {
  value = { for domain, acm in module.acm : domain => acm.this_acm_certificate_arn }
}

output "acm_certificate_domain_names" {
  value = { for domain, acm in module.acm : domain => acm.this_acm_certificate_domain_name }
}
