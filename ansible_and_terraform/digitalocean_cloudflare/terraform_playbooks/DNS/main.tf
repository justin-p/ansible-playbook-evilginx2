resource "cloudflare_record" "a_domain" {
  zone_id = var.cf_zone_id
  name    = var.cf_domain
  value   = var.cf_host_ipv4
  type    = "A"
  ttl     = var.cf_record_ttl
  proxied = var.cf_record_proxied
}

resource "cloudflare_record" "a_www_subdomain" {
  zone_id = var.cf_zone_id
  name    = "www.${var.cf_domain}"
  value   = var.cf_host_ipv4
  type    = "A"
  ttl     = var.cf_record_ttl
  proxied = var.cf_record_proxied
}

resource "cloudflare_record" "a_host_fqdn" {
  zone_id = var.cf_zone_id
  name    = var.cf_host_fqdn
  value   = var.cf_host_ipv4
  type    = "A"
  ttl     = var.cf_record_ttl
  proxied = var.cf_record_proxied
}
