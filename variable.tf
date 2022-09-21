#===================Google_storage_bucket=====================

variable "bucket-name" {
    type        = string
    default     = "petrosyangeorge.com"
    description = "The name of the Google storage bucket resources"
}

variable "bucket-storage-class" {
    type        = string
    default     = "NEARLINE"
    description = "The name of the Bucket storage class"
}

variable "bucket-location" {
    type        = string
    default     = "US-CENTRAL1"
    description = "The name of the Bucket location"
}

variable "bucket-level-access" {
    type        = bool
    default     = true
    description = "The bucket level access"
}
#=============================================================
#===================Google_cloud_run_service==================

variable "cloudrun-service-name" {
    type        = string
    default     = "gcp-cloudrun"
    description = "The name of the Cloud run service"
}

variable "cloudrun-service-location" {
    type    = string
    default     = "us-central1"
    description = "The name of the Cloud run Location"
}

variable "cloudrun-container-port" {
    type        = string
    default     = "80"
    description = "The Container port"
}
#==============================================================
#==================Google_sql_database_instance================

variable "db-pg-instance-name" {
    type        = string
    default     = "gcp-postgresql"
    description = "The name of the Cloud SQL resources"
}

variable "db-pg-instance-version" {
    type        = string
    default     = "POSTGRES_14"
    description = "The database version to use"
}

variable "db-pg-instance-deletion-protection" {
    type        = bool
    default     = false
    description = "Used to block Terraform from deleting a SQL Instance"
}

variable "db-pg-instance-region" {
    type        = string
    default     = "us-central1"
    description = "The region of the Cloud SQL resources"
}

variable "db-pg-instance-tier" {
    type        = string
    default     = "db-f1-micro"
    description = "The tier for the sql database instanc"
}

variable "pg-user-name" {
    type        = string
    default     = "sqlname"
    description = "The name of the default user. If not set, a random one will be generated"
}

variable "pg-user-password" {
    type        = string
    default     = "sqlname123"
    description = "The password for the default user. If not set, a random one will be generated"
}
#==============================================================