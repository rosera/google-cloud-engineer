# Create the Free Tier compute instance
resource "google_compute_instance" "free_tier_vm" {
  name         = var.gce_instance_name
  machine_type = var.gce_machine_type # Free tier eligible machine type
  zone         = var.gce_machine_zone # Choose a zone within the selected region

  boot_disk {
    initialize_params {
      # https://cloud.google.com/compute/docs/images/os-details
      image = var.gce_public_image
    }
  }

  network_interface {
    network = "default"
    access_config {
      # Allow external access to the VM
      # nat_ip = "EXTERNAL"
    }
  }
}
