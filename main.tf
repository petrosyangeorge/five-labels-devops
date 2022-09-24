module "five-labels-infra" {
  source = "git::https://github.com/petrosyangeorge/five-labels-infra.git?ref=v1.0.2"

  #===================Google_storage_bucket=====================
  website-bucket-name          = "petrosyangeorge.com"
  website-bucket-storage-class = "NEARLINE"
  website-bucket-location      = "us-central1"
  website-bucket-level-access  = true

  #===================Google_storage_admin_bucket=====================
  website-admin-bucket-name          = "admin.petrosyangeorge.com"
  website-admin-bucket-storage-class = "NEARLINE"
  website-admin-bucket-location      = "us-central1"
  website-admin-bucket-level-access  = true

  #===================Google_cloud_run_service==================
  cloudrun-service-name     = "gcp-cloudrun"
  cloudrun-service-location = "us-central1"
  cloudrun-container-port   = "80"

  #==================Google_sql_database_instance================
  db-pg-instance-name                = "gcp-postgresql"
  db-pg-instance-version             = "POSTGRES_14"
  db-pg-instance-deletion-protection = false
  db-pg-instance-region              = "us-central1"
  db-pg-instance-tier                = "db-f1-micro"
  pg-user-name                       = "sqlname"
  pg-user-password                   = "sqlname123"

}