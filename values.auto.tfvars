region                 = "us-central1"
zone                   = "us-central1-c"
location               = "us-central1"
environment            = "production"
prefix                 = "data-plataform"
project                = "iac-milena"
project_id             = "iac-milena"
storage_class_standard = "STANDARD"
storage_class_nearline = "NEARLINE"
storage_class_coldline = "COLDLINE"
storage_class_archive  = "ARCHIVE"
bucket_names           = ["raw-layer", "processing-layer", "curated-layer"]
members = ["serviceAccount:test-755@iac-milena.iam.gserviceaccount.com",
           "user:your.email"]
credentials                  = "iac-milena.json"
name_vm                      = "milena-vm"
machine_type                 = "e2-medium"
