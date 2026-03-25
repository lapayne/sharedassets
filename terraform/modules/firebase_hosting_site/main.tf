terraform {
  required_providers {
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 4.0.0"
    }
  }
}

resource "google_firebase_hosting_site" "default" {
  provider = google-beta
  project  = var.project_id
  site_id  = var.site_id
}

resource "google_firebase_hosting_custom_domain" "default" {
  count    = var.custom_domain != null ? 1 : 0
  provider = google-beta
  project  = var.project_id
  site_id  = google_firebase_hosting_site.default.site_id
  custom_domain = var.custom_domain
}
