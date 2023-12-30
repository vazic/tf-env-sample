terraform {
  backend "s3" {
    bucket  = "terraform-backend"
    key     = "usw2-lasd-0/backend.tfstate"
    region  = "us-west-2"
  }
}
module "s3backend" {
  source        = "git::ssh://github.com/Pi-PublicCloud-TF-Modules/tf_backend_s3.git"
  region        = var.region
  stack         = var.stack
}

