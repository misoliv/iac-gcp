
resource "google_bigquery_dataset" "dataset_food" {
  dataset_id    = "dataset_food"
  friendly_name = "dataset_food"
  description   = "Data Plataform - stack data processing SFTP"
  location      = var.location
  project = var.project
}

resource "google_bigquery_table" "food_table_native" {
  dataset_id  = google_bigquery_dataset.dataset_food.dataset_id
  table_id    = "${var.prefix}_food_table"
  description = "Tabela com dados consolidados appsflyer installs"
  deletion_protection=false 
  project = var.project
}

######## TRANSFERÊNCIA DE DADOS #######
resource "google_bigquery_data_transfer_config" "transfer_dataset_food" {
  display_name           = "${var.prefix}_transfer_dataset_food"
  project = var.project
  location               = var.location
  data_source_id         = "google_cloud_storage"
  schedule               = "every day 13:00"
  destination_dataset_id = google_bigquery_dataset.dataset_food.dataset_id
  params = {
    data_path_template              = "gs://iac-milena-stack-curated-production/ifood_df.csv"
    destination_table_name_template = google_bigquery_table.food_table_native.table_id
    file_format                     = "CSV"
    write_disposition               = "MIRROR"
  }
}