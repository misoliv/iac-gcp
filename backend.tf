terraform {
  backend "gcs" {
    bucket      = "backend-terraform-milena"
    prefix      = "terraform/state"
    credentials = "iac-milena.json"
  }
}