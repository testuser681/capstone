resource "helm_release" "jenkins-resource" {
  name       = "jenkins"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "jenkins"
  version    = "8.0.14"
  namespace  = "jenkins"
  timeout    = 600
  values = [
    "${file("helm-values.yaml")}"
  ]
}