module "autoscaling" {
  source      = "./modules/autoscaling" #A
  namespace   = var.namespace           #B
  ssh_keypair = var.ssh_keypair         #A

  vpc       = module.networking.vpc     #A
  sg        = module.networking.sg      #A
  db_config = module.database.db_config #A

}

module "database" {
  source    = "./modules/database" #A
  namespace = var.namespace        #B

  vpc = module.networking.vpc #A
  sg  = module.networking.sg  #A

}

module "networking" {
  source    = "./modules/networking" #A
  namespace = var.namespace          #B
}
output "db_password" {
  value = module.database.db_config.password
  sensitive = true
}

output "lb_dns_name" {
  value = module.autoscaling.lb_dns_name
}
variable "namespace" {
  description = "The project namespace to use for unique resource naming"
  type        = string
  default="mythreetierapplication"
}

variable "ssh_keypair" {
  description = "SSH keypair to use for EC2 instance"
  default     = null #A
  type        = string
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
  type        = string
}
