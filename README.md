Task
Develop Terraform configuration for Virtual Machine (Linux) with public IP, install and configure Nginx using a Terraform provisioners
Configuration should cover the setup of Network Security Group (NSG) to allow access to the default Nginx website from the Internet and to connect to the virtual machine using an SSH connection
Task parameters
Resource group name: cmaz-5uxy4opu-mod4-rg
VNet name: cmaz-5uxy4opu-mod4-vnet
Subnet name: frontend
Network interface name: cmaz-5uxy4opu-mod4-nic
NSG Name: cmaz-5uxy4opu-mod4-nsg
NSG inbound HTTP rule: AllowHTTP
NSG inbound SSH rule: AllowSSH
Public IP name: cmaz-5uxy4opu-mod4-pip
DNS name label: cmaz-5uxy4opu-mod4-nginx
VM name: cmaz-5uxy4opu-mod4-vm
VM OS Version ubuntu-24_04-lts
VM SKU: Standard_F2s_v2
Tags: Creator = tarunsingh@gmail.com
Task Details
Use the following directory layer
.
└── task04
    ├── main.tf
    ├── outputs.tf
    ├── terraform.tfvars
    ├── variables.tf
    └── versions.tf
main.tf should contain HCL (HashiCorp Configuration Language) resource definitions for the following resources:
Resource Group (RG)
Virtual Network (VNet)
Subnet
Subnet should be defined as a standalone Subnet resource and not as in-line within the Virtual Network resource
Public IP
Network security group (NSG)
Network security rules (NSG rules)
NSG rules should be defined as a standalone Network security rule resource and not as in-line within the Network security group resource
Network interface (NIC)
Network interface security group association
NIC should be associated with NSG with standalone resource Network interface security group association and not as in-line within the Network interface resource
Linux Virtual Machine (VM)
Install and configure NGINX using Terraform provisioner
Task requirements
Use names and values for resources from section Task parameters
The requested tag should be applied to the following resources:
Resource Group
Virtual Network
Public IP
Network security group
Network interface
Virtual machine
Your TF configuration should contain the following outputs:
VM public IP: vm_public_ip
Fully Qualified Domain Name of the Virtual Machine: vm_fqdn
Allow access to the virtual machine via SSH and HTTP ports through NSG rules configuration. VM should be configured to have public access from all IPs
Use the remote-exec provisioner with an SSH connection to install and run Nginx on the VM
Your TF configuration should contain sensitive vm_password input variable. During local development manually enter a value during the TF plan and TF apply operations into the console. For automatic verification put proper value into Admin Password for Virtual Machine field
Follow Azure Linux password requirements by the corresponding link in section Useful links
You should be able to access to a Nginx home page (port 80) which is hosted on the VM and login to the VM by SSH with credentials you created
Follow instructions and all requirements from Introduction in section Disclaimer
Task results
After applying your configuration there should be one resource group with the next set of resources within:

Resource Group
Virtual Network with subnet
Public IP address (static) with DNS label
Network security group with HTTP and SSH rules
Network interface
Linux Virtual Machine with configured Nginx
