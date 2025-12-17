# Kubernetes-Playlist

This repository provides a comprehensive guide and Terraform scripts to set up an Amazon EKS cluster, install an NGINX Ingress Controller, and integrate an API Gateway with AWS EKS NLB.

### 00-create-cluster: Create an EKS Cluster using Terraform
In this lesson, you'll learn how to create an Amazon EKS cluster using Terraform. The configuration includes setting up VPC, subnets, security groups, and the EKS cluster itself.
![EKS](Lesson1/EKS.png)

### 01-robo-terraform-eks: Create an eks cluster with customized svcs
 * VPC CIDR = "10.0.0.0/16"
 * public_subnet_cidrs = "10.0.1.0/24","10.0.2.0/24"
 * private_subnet_cidrs= "10.0.11.0/24","10.0.12.0/24"
 * database_subnet_cidrs = "10.0.21.0/24","10.0.22.0/24"
 * IGW
 * EIP
 * NAT gateway
 * Route tables
 * security group both control plane and eks node group
 * certificate will be create for the domain 
 * bastion host will be create in public network will packages install(kubectl,eksctl,docker,helm etc)
  