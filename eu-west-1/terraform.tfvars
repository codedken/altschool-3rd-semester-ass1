region          = "eu-west-1"
project_name    = "dev"
ami             = "ami-0905a3c97561e0b69" # Varies between regions
subnet_az1_cidr = "10.0.0.0/24"
subnet_az2_cidr = "10.0.1.0/24"
vpc_cidr        = "10.0.0.0/16"
key_pair        = "dev-key" # Needs to be created for each region
instance_type   = "t2.micro"
