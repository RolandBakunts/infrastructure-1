data "aws_route53_zone" "primary" {
 name = "${var.hosted_zone}"
 private_zone = false
}

data "aws_elb" "traefik" {
  name = var.lb_name
}

resource "aws_route53_record" "primary" {
  for_each = toset(var.domains)

  zone_id = data.aws_route53_zone.primary.zone_id
  name    = "${each.key}.${var.hosted_zone}"
  type    = "A"

  alias {
    name                   = data.aws_elb.traefik.dns_name
    zone_id                = data.aws_elb.traefik.zone_id
    evaluate_target_health = false
  }
}
