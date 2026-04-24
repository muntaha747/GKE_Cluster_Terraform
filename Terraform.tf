terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.27.0"
    }
  }
}

provider "google" {
  project = "project-bb0f4d04-c4ac-41d5-bcd"
  region  = us-central1
}
