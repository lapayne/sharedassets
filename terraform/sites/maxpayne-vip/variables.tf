variable "project_name" {
  description = "The display name of the Google Cloud project."
  type        = string
}

variable "project_id" {
  description = "The ID of the Google Cloud project."
  type        = string
}

variable "billing_account" {
  description = "The billing account ID."
  type        = string
}

variable "region" {
  description = "The region for resources."
  type        = string
  default     = "us-central1"
}

variable "backend_bucket" {
  description = "The name of the GCS bucket for Terraform state."
  type        = string
}

variable "backend_prefix" {
  description = "The prefix within the GCS bucket for Terraform state."
  type        = string
  default     = "terraform/state"
}

variable "site_id" {
  description = "The ID of the hosting site."
  type        = string
}

variable "custom_domain" {
  description = "The custom domain to associate with the hosting site."
  type        = string
  default     = null
}
