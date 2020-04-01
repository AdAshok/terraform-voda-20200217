module "kubernetes" {
  source = "./kubernetes"
  region = "us-east1"

  project_id_map = {
<<<<<<< HEAD
    default = "k8s-terraform-demo-268620"
=======
    default = "k8s-demo-project-20202002"
>>>>>>> dd253567f341920a6c1cfc2369f02d10a2ad8137
  }
}

output "connection-command" {
  value = "${module.kubernetes.connect-string}"
}
