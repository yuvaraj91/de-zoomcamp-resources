variable "project" {
  description = "My GCP project"
  default     = "eighth-feat-447716-p1"
}

variable "region" {
  description = "Region"
  default     = "europe-west10-a"
}

variable "gcs_bucket_name" {
  description = "Bucket name"
  default     = "eighth-feat-447716-p1-bucket"

}

variable "location" {
  description = "Location"
  default     = "EU"
}



variable "bq_dataset_name" {
  description = "My bigquery dataset name"
  default     = "demo_dataset"

}