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
  source = "https://github.com/sq-ia/terraform-kubernetes-rancher.git"
  rancher_config = {
    email       = "email@email.com"
    hostname    = "rancher.squareops.in"
    values_yaml = file("./helm/values.yaml")
  }
}
