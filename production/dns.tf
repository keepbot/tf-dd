module "dns_zone" {
  source = "../modules/dns_zone"
  name   = "${var.domain_name}"
}

output "Production DNS configuration: " {
  value = "${module.dns_zone.dns_config}"
}

output "production_zone_id" {
  value = "${module.dns_zone.zone_id}"
}