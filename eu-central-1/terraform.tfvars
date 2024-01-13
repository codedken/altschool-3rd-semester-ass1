region          = "eu-central-1"
project_name    = "prod"
ami             = "ami-0faab6bdbac9486fb" # Varies between regions
subnet_az1_cidr = "10.0.0.0/24"
subnet_az2_cidr = "10.0.1.0/24"
vpc_cidr        = "10.0.0.0/16"
key_pair        = "prod-key" # Needs to be created for each region
instance_type   = "t2.micro"
