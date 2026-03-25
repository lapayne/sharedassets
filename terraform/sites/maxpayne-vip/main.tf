terraform {
  required_version = ">= 1.0.0"

  backend "gcs" {
    bucket = "paynefamilyshared-terraform"
    prefix = "terraform/state/sites/maxpayne-vip"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 4.0.0"
    }
  }
}

provider "google" {
  region = var.region
}

provider "google-beta" {
  region = var.region
}

module "firebase_project" {
  source = "../../modules/firebase_project"

  project_name    = var.project_name
  project_id      = var.project_id
  billing_account = var.billing_account
  region          = var.region
}

module "firebase_hosting_site" {
  source = "../../modules/firebase_hosting_site"

  project_id    = var.project_id
  site_id       = var.site_id
  custom_domain = var.custom_domain

  depends_on = [
    module.firebase_project
  ]
}
