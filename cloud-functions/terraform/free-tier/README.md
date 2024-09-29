<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_cloudfunctions_function.free_tier_function](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function) | resource |
| [google_cloudfunctions_function_iam_member.invoker](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function_iam_member) | resource |
| [google_storage_bucket.function_code_bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |
| [google_storage_bucket_object.archive](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gcf_iam_member"></a> [gcf\_iam\_member](#input\_gcf\_iam\_member) | Cloud Function IAM member. | `string` | `"allUsers"` | no |
| <a name="input_gcf_iam_role"></a> [gcf\_iam\_role](#input\_gcf\_iam\_role) | Cloud Function IAM role binding. | `string` | `"roles/cloudfunctions.invoker"` | no |
| <a name="input_gcf_service_entrypoint"></a> [gcf\_service\_entrypoint](#input\_gcf\_service\_entrypoint) | Cloud Function entrypoint. | `string` | `"helloWorld"` | no |
| <a name="input_gcf_service_http_trigger"></a> [gcf\_service\_http\_trigger](#input\_gcf\_service\_http\_trigger) | Cloud Function http trigger. | `bool` | `true` | no |
| <a name="input_gcf_service_name"></a> [gcf\_service\_name](#input\_gcf\_service\_name) | Cloud Function service name. | `string` | `"free-tier-function"` | no |
| <a name="input_gcf_service_runtime"></a> [gcf\_service\_runtime](#input\_gcf\_service\_runtime) | Cloud Function runtime language. | `string` | `"nodejs18"` | no |
| <a name="input_gcf_source_archive_bucket"></a> [gcf\_source\_archive\_bucket](#input\_gcf\_source\_archive\_bucket) | Cloud Function storage bucket name. | `string` | `"functions-bucket"` | no |
| <a name="input_gcf_source_archive_name"></a> [gcf\_source\_archive\_name](#input\_gcf\_source\_archive\_name) | Cloud Function achive object in storage bucket. | `string` | `"function.zip"` | no |
| <a name="input_gcf_source_archive_object"></a> [gcf\_source\_archive\_object](#input\_gcf\_source\_archive\_object) | Cloud Function achive object in storage bucket. | `string` | `"./cf/function.zip"` | no |
| <a name="input_gcp_project_id"></a> [gcp\_project\_id](#input\_gcp\_project\_id) | The GCP project ID to create resources in. | `string` | n/a | yes |
| <a name="input_gcp_region"></a> [gcp\_region](#input\_gcp\_region) | Region to create resources in. | `string` | `"us-central1"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->