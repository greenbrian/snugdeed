# Objective
Provision a Hashicorp vault with PKI backend in Digital Ocean

# Prerequisites
Terraform installed  
Digital Ocean account created  
Digital Ocean API key obtained  
Digital Ocean SSH public key uploaded with fingerprint obtained  

# References
### Terraform
https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean  
https://github.com/hashicorp/terraform/tree/master/examples/digitalocean
### Vault

# Usage Summary
Copy secret.tf.example to secret.tf  
Update the values in all caps with your specific information  

## Provision Digital Ocean instances

    terraform plan    # check what changes will be made  
    terraform apply   # actually make those changes  
    terraform show    # display current state of provisioned instances

## Connect to remote nodes

    ssh root@YOUR_IP -i PATH_TO_YOUR_KEY
