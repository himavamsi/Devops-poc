terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.37.0"
    }
  }
}

provider "google" {
  project = "gcp-knowledge-454214"
  region = "us-west1"
}
