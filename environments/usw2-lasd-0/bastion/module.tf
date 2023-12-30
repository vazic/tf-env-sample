terraform {
  backend "s3" {
    bucket  = "lasd-inf-terraform-state-env"
    key     = "services/prometheus.tfstate"
    region  = "us-west-2"
  }
}

module "bastion" {
  source                = "git::ssh://github.com/Pi-PublicCloud-TF-Modules/bastion.git?ref=v2.3.4"
  stack                 = var.stack
  owner                 = var.owner
}
