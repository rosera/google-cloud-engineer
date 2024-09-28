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
| [google_compute_instance.free_tier_vm](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gce_instance_name"></a> [gce\_instance\_name](#input\_gce\_instance\_name) | Google Cloud Engine instance name. | `string` | `"vm-ft"` | no |
| <a name="input_gce_machine_type"></a> [gce\_machine\_type](#input\_gce\_machine\_type) | Google Cloud Engine machine type. | `string` | `"e2-small"` | no |
| <a name="input_gce_machine_zone"></a> [gce\_machine\_zone](#input\_gce\_machine\_zone) | Google Cloud Engine machine type. | `string` | `"us-central1-a"` | no |
| <a name="input_gce_public_image"></a> [gce\_public\_image](#input\_gce\_public\_image) | Google Cloud Engine compute image. | `string` | `"ubuntu-os-cloud/ubuntu-2204-lts"` | no |
| <a name="input_gcp_project_id"></a> [gcp\_project\_id](#input\_gcp\_project\_id) | The GCP project ID to create resources in. | `string` | n/a | yes |
| <a name="input_gcp_region"></a> [gcp\_region](#input\_gcp\_region) | Region to create resources in. | `string` | `"us-central1"` | no |

## Outputs

No outputs.
