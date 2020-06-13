variable "route53_zone_count" {
    type        = bool
    description = "route53 zone count."
}

variable "route53_zone_depends_on" {
    type        = list(string)
    description = "route53 zone depends on."
}

variable "route53_zone_name" {
    type        = string
    description = "route53 zone name."
}

variable "extra_tags" {
    type        = map(string)
    description = "extra tags."
}