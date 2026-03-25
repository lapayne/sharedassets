variable "project_name" {
  description = "The display name of the Google Cloud project."
  type        = string
}

variable "project_id" {
  description = "The ID of the Google Cloud project."
  type        = string
}

variable "org_id" {
  description = "The organization ID."
  type        = string
  default     = null
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
