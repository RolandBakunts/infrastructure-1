output "route53_record_details" {
  value = { for domain in var.domains : domain => {
    name    = aws_route53_record.primary[domain].name
    type    = aws_route53_record.primary[domain].type
    alias   = aws_route53_record.primary[domain].alias
    zone_id = aws_route53_record.primary[domain].zone_id
  }}
}
