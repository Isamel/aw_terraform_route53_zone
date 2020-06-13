locals {
  tags  = merge(
      map("key", "resource_name", "value", var.route53_zone_name),
      var.extra_tags
  )
}