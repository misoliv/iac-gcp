###################### CONFIGURA O PROVIDER ###########################
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  credentials = "iac-milena.json"
  region      = "us-central1"
}