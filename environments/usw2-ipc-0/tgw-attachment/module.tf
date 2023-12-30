terraform {
  backend "s3" {
    bucket  = "terraform-state-sample"
    key     = "usw2-inf/tgw-attachment.tfstate"
    region  = "us-west-2"
  }
}

module "tgw-attachment" {
  source          = "git::ssh://github.com/TF-Modules/tgw-consumer-attachment.git?ref=v2.0.1"
  stack           = var.stack
  owner           = var.owner
}

