provider "aws" {
  region = var.region
}

module "altschool-vpc" {
  source          = "../modules/altschool-vpc"
  region          = var.region
  instance_type   = var.instance_type
  ami             = var.ami
  subnet_az1_cidr = var.subnet_az1_cidr
  subnet_az2_cidr = var.subnet_az2_cidr
  key_pair        = var.key_pair
  vpc_cidr        = var.vpc_cidr
  project_name    = var.project_name

}
