# Create a VPC

resource "aws_vpc" "my_vpc" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "${var.project_name}-vpc"
  }
}

# Create and attach an internet gateway to the VPC
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "${var.project_name}-igw"
  }
}

# Create a custom route table
resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "${var.project_name}-rt"
  }
}

# Get the availability zones in a region
data "aws_availability_zones" "az" {}

# Create subnet az1
resource "aws_subnet" "subnet_az1" {
  cidr_block              = var.subnet_az1_cidr
  vpc_id                  = aws_vpc.my_vpc.id
  availability_zone       = data.aws_availability_zones.az.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-subnet_az1"
  }
}

# Create subnet az2
resource "aws_subnet" "subnet_az2" {
  cidr_block              = var.subnet_az2_cidr
  vpc_id                  = aws_vpc.my_vpc.id
  availability_zone       = data.aws_availability_zones.az.names[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-subnet_az2"
  }
}

# Associate the custom route table with subnet az1
resource "aws_route_table_association" "rta_subnet_az1" {
  subnet_id      = aws_subnet.subnet_az1.id
  route_table_id = aws_route_table.rt.id
}

# Associate the custom route table with subnet az2
resource "aws_route_table_association" "rta_subnet_az2" {
  subnet_id      = aws_subnet.subnet_az2.id
  route_table_id = aws_route_table.rt.id
}
