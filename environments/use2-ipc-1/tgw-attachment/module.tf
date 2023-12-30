terraform {
  backend "s3" {
    bucket  = "terraform-state2-sample"
    key     = "use2-inf/tgw-attachment.tfstate"
    region  = "us-east-2"
  }
}

module "tgw-attachment" {
  source          = "git::ssh://github.com/TF-Modules/tgw-consumer-attachment.git?ref=v3.0.0"
  stack           = var.stack
  owner           = var.owner
}

