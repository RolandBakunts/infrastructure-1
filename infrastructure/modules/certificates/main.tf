data "aws_route53_zone" "primary" {
 name = "${var.hosted_zone}"
 private_zone = false
}

module "acm" {
  source  = "terraform-aws-modules/acm/aws"
  version = "~> 4.0"

  for_each          = toset(var.domains)

  domain_name       = each.key
  zone_id           = data.aws_route53_zone.primary.zone_id
  validation_method = "DNS"

  tags = {
    Name = "ACM Certificate for ${each.key}"
    env = var.env
  }
}
