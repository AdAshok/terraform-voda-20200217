#########GCP##########
provider "google" {
  credentials = file("/home/terrafrom07/.ssh/account.json")
  project     = "k8s-terraform-demo-272708"
  region      = "asia-south1"
}


variable "zones" {
  default = ["asia-south1-a", "asia-south1-b"]
}

resource "google_compute_instance" "frontend" {
  name         = "frontend-${count.index}"
  machine_type = "f1-micro"
  count                 = 2
  zone     = var.zones[count.index]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network       = "default"
    access_config {
    }
  }
}

