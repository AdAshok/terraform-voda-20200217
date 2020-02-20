module "kubernetes" {
  source = "./kubernetes"
  region = "us-east1"

  project_id_map = {
    default = "k8s-demo-project-20202002"
  }
}

output "connection-command" {
  value = "${module.kubernetes.connect-string}"
}
