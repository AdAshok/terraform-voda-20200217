#########GCP##########
provider "google" {
  credentials = "${file("/home/terrafrom07/.ssh/account.json")}"
  project     = "k8s-terraform-demo-272708"
  region      = "us-west1"
  zone        = "us-west1-c"
}

resource "google_project" "my_project" {
  name       = "mytestprojectterraform"
  project_id = "mytestproject-010420"
  org_id     = "0"
}

