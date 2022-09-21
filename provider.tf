terraform {
  backend "remote" {
    hostname      = "app.terraform.io"
    organization  = "devopsg2022"

    workspaces {
      name = "gcpcode"
    }
  }
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.35.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "terraform-gcp-362210"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = "keys.json"
}











