# Ubuntu-based AWS EC2 Instance Created with Terraform

This project is a terraform configuration for creating an AWS EC2 instance (ubuntu)
in multiple regions (eu-central-1 and eu-west-1)

- It is reusable and modularized
- The Instance is on a minimum of 2 availability zones
- It has a script that creates ansible, docker container
- It is built on multiple environments (dev and prod)
- A VPC is created for the various environments (dev and prod)

## How to run the terraform configuration

Before you run the configuration, you must have terraform [installed](https://developer.hashicorp.com/terraform/install?product_intent=terraform) on your PC, and you must have added the terraform program path to environment variables.

1) Navigate to the eu-central-1 or eu-west-1 to create infrastructure in that region

2) Run `terraform init` to install all the provider packages and modules required by terraform

3) Run `terraform plan` to get a preview of the change that is about to be made

4) Run `terraform apply --auto-approve` to effect the planned changes

5) You can run `terraform destroy --auto-approve` to destroy the created infrastructure


Click [here](https://developer.hashicorp.com/terraform?product_intent=terraform) to learn more about terraform.

Have fun creating virtual instances on the cloud. 

**Note:** Ensure to destroy the created instances if you are just playing around, this is so that you don't incure charges for yourself.