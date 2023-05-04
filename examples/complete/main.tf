locals {
  region = "ap-south-1"
  additional_tags = {
    name        = "test"
    environment = "squareops"
  }
}

module "rancher" {
  source = "../../"
  rancher_config = {
    email       = "rohit.kumar@squareops.com"
    hostname    = "rancher.ref.dev.skaf.squareops.in"
    values_yaml = file("./helm/values.yaml")
  }
}
