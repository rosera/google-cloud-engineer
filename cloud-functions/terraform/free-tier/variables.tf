# Default value passed in
variable "gcp_project_id" {
  type        = string
  description = "The GCP project ID to create resources in."
}

# Default value passed in
variable "gcp_region" {
  type        = string
  description = "Region to create resources in."
  default     = "us-central1"
}

## Google Cloud Functions properties
## -------------------------------------------------------

# Default value passed in
variable "gcf_service_name" {
  type        = string
  description = "Cloud Function service name."
  default     = "free-tier-function"
}

# Default value passed in
variable "gcf_service_runtime" {
  type        = string
  description = "Cloud Function runtime language."
  default     = "nodejs18"
}

# Default value passed in
variable "gcf_service_entrypoint" {
  type        = string
  description = "Cloud Function entrypoint."
  default     = "helloWorld"
}

# Default value passed in
variable "gcf_service_http_trigger" {
  type        = bool
  description = "Cloud Function http trigger."
  default     = true
}

# Default value passed in
variable "gcf_source_archive_name" {
  type        = string
  description = "Cloud Function achive object in storage bucket."
  default     = "function.zip"
}

# Default value passed in
variable "gcf_source_archive_object" {
  type        = string
  description = "Cloud Function achive object in storage bucket."
  default     = "./cf/function.zip"
}

# Default value passed in
variable "gcf_source_archive_bucket" {
  type        = string
  description = "Cloud Function storage bucket name."
  default     = "functions-bucket"
}

# Default value passed in
variable "gcf_iam_role" {
  type        = string
  description = "Cloud Function IAM role binding."
  default     = "roles/cloudfunctions.invoker"
}

# Default value passed in
variable "gcf_iam_member" {
  type        = string
  description = "Cloud Function IAM member."
  default     = "allUsers"
}
