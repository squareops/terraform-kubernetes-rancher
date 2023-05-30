locals {
  region = "us-east-2"
  additional_tags = {
    Name        = "rancher"
    Owner       = "organization_name"
    Expires     = "Never"
    environment = "prod"
    Department  = "Engineering"
  }
}

module "rancher" {
  source = "squareops/rancher/kubernetes"
  rancher_config = {
    email       = "email@email.com"
    hostname    = "rancher.prod.in"
    values_yaml = file("./helm/values.yaml")
  }
}
