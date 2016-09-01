# Objective
Provision a Hashicorp vault with PKI backend in Digital Ocean

# Prerequisites
Terraform installed  
Digital Ocean account created  
Digital Ocean API key obtained  
Digital Ocean SSH public key uploaded with fingerprint obtained  
Ansible installed

# My use case notes
I used homebrew on a Mac so many utilities can be installed using that method.  
I did install Terraform manually as the Homebrew version was behind.

    brew update
    brew install ansible
    brew install terraform-inventory


# References
### Terraform
https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean  
https://github.com/hashicorp/terraform/tree/master/examples/digitalocean
### Vault

### Ansible
https://github.com/adammck/terraform-inventory  

### Digital Ocean
https://developers.digitalocean.com/documentation/v2/


# Usage Summary
Copy secret.tf.example to secret.tf  
Update the values in all caps with your specific information  
All tasks are performed with working directory as root of this repo

## Provision Digital Ocean instances

    terraform get          # gather any modules (even if local)
    terraform get -update  # update modules
    terraform plan         # check what changes will be made  
    terraform apply        # actually make those changes  
    terraform show         # display current state of provisioned instances

## Connect to remote nodes

    ssh root@YOUR_IP -i PATH_TO_YOUR_KEY

## Ansible Usage

    ansible-playbook -i /usr/local/bin/terraform-inventory playbook.yml  \    
      --user=root --private-key=~/.ssh/id_rsa
