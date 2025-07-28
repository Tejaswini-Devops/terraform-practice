module "vpc" {
  source = "./modules/vpc"
  for_each = var.vpc
  vpc_cidr = lookup(each.value,"vpc_cidr",null)
}