Terraform script for vpc peering
===
This terraform script will create two vpc's. Primary vpc has two subnets one public subnet and one private subnet, public subnet has IGW attached to it and private subnet has NAT gateway attached to it. The secondary vpc has two subnet's one public subnet with VPN server launched into it and IGW is attached to the public subnet, the private subnet has two instances one is staging server and the other is database server and teh NAT gateway is attached to the private subnet. Instances inside private subvnet can only be accessed by the VPN SERVER.

Pre - Requisites:
---
Create SSH key using

```
ssh-keygen -f mykey
```
You will be using this key pair for launching ec2 instances.

You also need to update the vars.tf.example  with your aws access keys and rename the file to vars.tf




