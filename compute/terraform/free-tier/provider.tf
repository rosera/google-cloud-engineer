# Configure Google Cloud credentials
provider "google" {
  # credentials = file("path/to/your/service-account.json")
  project = var.gcp_project_id
  # Region: us-west1, us-central1, us-east1
  region = var.gcp_region
}
