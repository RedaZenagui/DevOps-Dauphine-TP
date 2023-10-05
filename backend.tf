terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.10"
    }
  }

  backend "gcs" {
    bucket = "devops-session6-tp"
  }

  required_version = ">= 1.0"
}


provider "google" {
    project = "projet-module-devops"
}

