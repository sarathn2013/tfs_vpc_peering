Terraform script for vpc peering
===
This terraform script will create a simple stack in aws with two vpc's with public and private subnets and internet gateways attached to public subnet and establishes a peering connection between two VPC's in the same AWS Account.

Pre - Requisites:
---
Create SSH key using

```
ssh-keygen -f mykey
```
You will be using this key pair for launching ec2 instances.

You also need to update the terraform.tfvars with your aws access keys




