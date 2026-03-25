output "site_id" {
  description = "The ID of the hosting site."
  value       = google_firebase_hosting_site.default.site_id
}

output "site_name" {
  description = "The name of the hosting site."
  value       = google_firebase_hosting_site.default.name
}

output "custom_domain" {
  description = "The custom domain associated with the hosting site."
  value       = var.custom_domain
}
