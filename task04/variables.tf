
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}


variable "location" {
  description = "Azure Region"
  type        = string
  default     = "eastus"
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
}


variable "public_ip_name" {
  description = "Name of the Public IP address"
  type        = string
}

variable "dns_name_label" {
  description = "DNS label for the Public IP"
  type        = string
}


variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
}

# NSG Rules
variable "nsg_rule_http" {
  description = "Name of the NSG rule to allow HTTP"
  type        = string
}

variable "nsg_rule_ssh" {
  description = "Name of the NSG rule to allow SSH"
  type        = string
}


variable "nic_name" {
  description = "Name of the Network Interface Card"
  type        = string
}


variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "terraformadmin"
}

variable "vm_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}

variable "vm_size" {
  description = "VM SKU size"
  type        = string
  default     = "Standard_F2s_v2"
}

variable "ip_configuration_name" {
  description = "Ip configuration name"
  type        = string
  default     = "internal"
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default = {
    Creator = "tarunkumar_singh@epam.com"
  }

}
