# terraform-simple-azure-instance
Simple instance azure
This script will create 
- vnet
- subnet
- Public IP Adress
- Security Group
- Virtual network interface
- Attach Security Group to network interface
- Create a Storage Account for boot log
- SSH Key
- Virtual Machine
- SSH server

# Pre-Requsites
The Resource Group already created with the region then record in the variables.tf 
Azure CLI pre-configured

# Final, after apply, you need to take the key from output and the public address
terraform output -raw tls_private_key > some_name.pem
ssh -i some_name.pem azureuser@<PUBLIC_IP>