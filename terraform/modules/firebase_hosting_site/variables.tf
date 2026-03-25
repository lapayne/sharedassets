variable "project_id" {
  description = "The ID of the project in which the resource belongs."
  type        = string
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
