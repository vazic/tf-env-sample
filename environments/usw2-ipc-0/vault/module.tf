terraform {
  backend "s3" {
    bucket  = "terraform-state-sample"
    key     = "usw2-inf/vault.tfstate"
    region  = "us-west-2"
  }
}

module "vault" {
  source                  = "git::ssh://github.com/TF-Modules/vault.git?ref=v2.7.4"
  stack                   = var.stack
  region                  = var.region
}

output "privatelink_name" {
  value = module.vault.vpc_endpoint_service_name
}

module "vault_configuration" {
  source                      = "https://github.com/TF-Modules/vault-configuration.git"
}
