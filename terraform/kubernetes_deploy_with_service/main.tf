provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_deployment" "tf-k8s-deployment" {
  metadata {
    name = "tf-k8s-deploy"
    labels = {
      name = "terraform-k8s-deployment"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        name = "terraform-k8s-deployment"
      }
    }

    template {
      metadata {
        labels = {
          name = "terraform-k8s-deployment"
        }
      }

      spec {
        container {
          image = "nginx"
          name  = "nginx"

        }
      }
    }
  }
}

