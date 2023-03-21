locals {
  region = "us-east-2"
  additional_tags = {
    Name        = "skaf"
    environment = "prod"
  }
}

module "rancher" {
  source = "../../"
  rancher_config = {
    hostname    = "rancher.squareops.in"
    email       = "email@email.com"
    values_yaml = file("./helm/values.yaml")
  }
}
