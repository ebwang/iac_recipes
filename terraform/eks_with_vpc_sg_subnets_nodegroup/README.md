# Learn Terraform - Provision an EKS Cluster

This repo is a companion repo to the [Provision an EKS Cluster learn guide](https://learn.hashicorp.com/terraform/kubernetes/provision-eks-cluster), containing
Terraform configuration files to provision an EKS cluster on AWS.

# This script will provision an eks cluster with
- 3x subnets pub 
- 3x subnets privs
- 1x vpc
- 1x eks
- 2x Node Groups
- 2x SG