module "instance" {
  source = "./gcp_instances"
}

module "frontend" {
  source = "./gcp_instances"
  environment-name = "frontend"
  region = "us-central1" 
}

module "backend" {
  source = "./gcp_instances"
  total_instances = 2
  environment-name = "backend"
}
