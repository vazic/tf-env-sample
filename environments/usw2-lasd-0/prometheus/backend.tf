terraform {
  backend "s3" {
    bucket  = "lasd-inf-terraform-state-env"
    key     = "services/prometheus.tfstate"
    region  = "us-west-2"
  }
}
