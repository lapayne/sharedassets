resource "google_project" "default" {
  provider        = google-beta
  name            = var.project_name
  project_id      = var.project_id
  org_id          = var.org_id
  billing_account = var.billing_account
  labels = {
    "firebase" = "enabled"
  }
}

resource "google_firebase_project" "default" {
  provider = google-beta
  project  = google_project.default.project_id

  depends_on = [
    google_project_service.firebase
  ]
}

resource "google_project_service" "firebase" {
  provider = google-beta
  project  = google_project.default.project_id
  service  = "firebase.googleapis.com"

  disable_on_destroy = false
}

resource "google_project_service" "cloudbilling" {
  provider = google-beta
  project  = google_project.default.project_id
  service  = "cloudbilling.googleapis.com"

  disable_on_destroy = false
}
