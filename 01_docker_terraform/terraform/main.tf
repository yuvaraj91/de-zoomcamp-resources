terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.16.0"
    }
  }
}

provider "google" {
  project = "eighth-feat-447716-p1"
  region  = "europe-west10-a"
}

resource "google_storage_bucket" "auto-expire-bucket" {
  name          = "eighth-feat-447716-p1-bucket"
  location      = "EU"
  force_destroy = true

  # Optional, but recommended settings:
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 26 // days
    }
  }

}
