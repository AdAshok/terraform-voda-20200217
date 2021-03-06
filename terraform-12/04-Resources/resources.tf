#########GCP##########
provider "google" {
  credentials = file("/home/terrafrom07/.ssh/account.json")
  project     = "k8s-terraform-demo-272708"
  region      = "asia-south1"
  zone        = "asia-south1-c"
}

resource "google_compute_instance" "frontend" {
  name         = "frontend"
  machine_type = "f1-micro"
  depends_on   = [google_compute_instance.backend]

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



resource "google_compute_instance" "backend" {
  name         = "backend"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "centos-6"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network       = "default"
    access_config {
    }
  }
}




