terraform {
  backend "gcs" {
    bucket = "devops-exam-code-mania-v1"
    prefix = "terraformstate"
    credentials = "terraform.json"
  }
}


provider "google-beta" {
  credentials = "terraform.json"
  project = var.project_id
  version = "~> 3.0.0-beta.1"
}