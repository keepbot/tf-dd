output "dns_config" {
  value = <<DNS

Domain name: ${var.name}
DNS zone ID: ${aws_route53_zone.main.zone_id}
NS servers:  ${join(",",aws_route53_zone.main.name_servers)}

DNS
}

output "zone_id" {
  value = "${aws_route53_zone.main.zone_id}"
}