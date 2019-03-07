variable "fqdn"          { default = "" }
variable "sub_domain"    { default = "" }
variable "route_zone_id" { default = "" }

resource "aws_route53_record" "website" {
  count  = "${length(var.sub_domain) == 0 ? 0 : 1}"

  name    = "${var.sub_domain}"
  zone_id = "${var.route_zone_id}"
  type    = "A"

  alias {
    name                   = "${aws_s3_bucket.website.website_domain}"
    zone_id                = "${aws_s3_bucket.website.hosted_zone_id}"
    evaluate_target_health = false
  }
}

#output "fqdn"           { value = "${aws_route53_record.website.fqdn}" }
