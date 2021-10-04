provider "helm" {
  kubernetes {
    config_path    = "~/.kube/config"
    config_context = join("", ["arn:aws:eks:", var.region, ":", var.user_id, ":cluster/", local.cluster_name])
  }
}

