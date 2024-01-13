output "region" {
  value = var.region
}

output "project_name" {
  value = var.project_name
}

output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "internet_gateway" {
  value = aws_internet_gateway.igw
}

output "public_ip" {
  value = aws_instance.instance.public_ip
}
