module "buckets" {
  source                 = "./datalake"
  region                 = "us-central1"
  zone                   = "us-central1-c"
  location               = "us-central1"
  environment            = "production"
  prefix                 = "stack"
  project                = var.project
  project_id             = "stack-terraform-course"
  storage_class_standard = "STANDARD"
  storage_class_nearline = "NEARLINE"
  storage_class_coldline = "COLDLINE"
  storage_class_archive  = "ARCHIVE"
  bucket_names           = ["raw", "processing", "curated"]
  members = ["serviceAccount:test-755@iac-milena.iam.gserviceaccount.com",
           "user:your-email"]
}
