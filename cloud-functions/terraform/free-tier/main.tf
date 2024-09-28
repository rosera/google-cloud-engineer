# TODO: Add local variable to create trigger URL

# Create the Cloud Function
resource "google_cloud_function" "free_tier_function" {
  name        = var.gcf_service_name
  runtime     = var.gcf_service_runtime    # Use Node.js 18 runtime
  entry_point = var.gcf_service_entrypoint # Replace with your function's entry point
  trigger_http {
    url = "https://${var.gcp_project_id}.cloudfunctions.net/${var.gcf_service_name}"
  }

  source_archive_bucket = var.gcf_source_achive_bucket
  source_archive_object = var.gcf_source_archive_object
}

# Create the Cloud Storage bucket for the function code
resource "google_storage_bucket" "function_code_bucket" {
  name          = var.gcf_source_archive_bucket
  location      = var.gcp_region # Choose a location within the selected region
  force_destroy = true
}
