module "prometheus" {
  source                    = "git::ssh://github.com/Pi-PublicCloud-TF-Modules/prometheus.git?ref=v2.13.5"
  region                    = var.region
  stack                     = var.stack
  num_instances             = 1
}
