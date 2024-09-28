# TODO: Add local variable to create trigger URL

# Create the Cloud Storage bucket for the function code
resource "google_storage_bucket" "function_code_bucket" {
  name          = "${var.gcp_project_id}-${var.gcf_source_archive_bucket}"
  location      = var.gcp_region # Choose a location within the selected region
  force_destroy = true
}

resource "google_storage_bucket_object" "archive" {
  name   = var.gcf_source_archive_name
  bucket = google_storage_bucket.function_code_bucket.name
  source = var.gcf_source_archive_object
}

# Create the Cloud Function
resource "google_cloudfunctions_function" "free_tier_function" {
  name         = var.gcf_service_name
  runtime      = var.gcf_service_runtime    # Use Node.js 18 runtime
  entry_point  = var.gcf_service_entrypoint # Replace with your function's entry point
  trigger_http = var.gcf_service_http_trigger

  # source_archive_bucket = var.gcf_source_archive_bucket
  # source_archive_object = var.gcf_source_archive_object
  source_archive_bucket = google_storage_bucket.function_code_bucket.name 
  source_archive_object = google_storage_bucket_object.archive.name 
}

## As of November 1, 2019, newly created Functions are private-by-default and will require appropriate IAM permissions to be invoked. 
## See below examples for how to set up the appropriate permissions, or view the Cloud Functions IAM resources for Cloud Functions.

# IAM entry for all users to invoke the function
resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.free_tier_function.project
  region         = google_cloudfunctions_function.free_tier_function.region
  cloud_function = google_cloudfunctions_function.free_tier_function.name

  role   = var.gcf_iam_role
  member = var.gcf_iam_member
}
