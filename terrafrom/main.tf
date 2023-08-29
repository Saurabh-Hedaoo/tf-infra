
module "vpc" {
  source             = "./vpc"
  cidr_block         = "10.0.0.0/16"
  name               = "ot-microservice"
  publicsubnet_id    = ["10.0.4.0/24", "10.0.5.0/24"]
  privatesubnet_id   = ["10.0.8.0/24", "10.0.9.0/24", "10.0.10.0/24", "10.0.11.0/24"]
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1f"]
  networks           = "DMZ"
  env                = "DEV"
  criticality        = "SILVER"
  role               = "APP"
  project            = "opstree"
  cluster_name       = "ot-microservice-cluster"
}

# module "eks" {
#   source               = "./eks"
#   cluster_name         = "ot-microservice-cluster"
#   subnet_ids           = module.vpc.private_subnet_id
#   instance_type        = "t3.medium"
#   desired_size         = 1
#   max_size             = 5
#   min_size             = 1
#   node_group_subnet_id = module.vpc.private_subnet_id
#   security_group_ids   = module.sg.security_group_id
#   keyname             = module.ssh.keyname
# }

# module "sg" {
#   source   = "./sg"
#   env      = "DEV"
#   project  = "opstree"
#   networks = "DMZ"
#   vpc_id   = module.vpc.vpc_id
#   ingress  = var.ingress
# }

# module "ssh" {
#   source  = "./ssh"
#   keyname = "ekskey"
# }