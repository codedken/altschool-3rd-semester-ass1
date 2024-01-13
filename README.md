# Ubuntu-based AWS EC2 Instance Created with Terraform

This project is a terraform configuration for creating an AWS EC2 instance (ubuntu)
in multiple regions (eu-central-1 and eu-west-1)

- It is reusable and modularized
- The Instance is on a minimum of 2 availability zones
- It has a script that creates ansible, docker container
- It is built on multiple environments (dev and prod)
- A VPC is created for the various environments (dev and prod)