terraform {
  backend "s3" {
    bucket  = "terraform-state2-sample"
    key     = "use2-inf/vault.tfstate"
    region  = "us-east-2"
  }
}

module "vault" {
  source                  = "git::ssh://git@ghe.megaleo.com/TF-Modules/vault.git?ref=v2.2.1"
  stack                   = var.stack
  region                  = var.region
}

output "privatelink_name" {
  value = module.vault.vpc_endpoint_service_name
}

module "vault_configuration" {
  source                      = "git::ssh://github.com/TF-Modules/vault-configuration.git=v1.1.0"
}
