resource "null_resource" "depends_on" {
    triggers = {
        depends_on = join("", var.route53_zone_depends_on)
    }
}

resource "aws_route53_zone" "route53_zone_terraform" {
    count      = var.route53_zone_count
    depends_on = [null_resource.depends_on]
    name       = var.route53_zone_name
    tags       = local.tags
}