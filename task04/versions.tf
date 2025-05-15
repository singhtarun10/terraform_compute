terraform {
  required_version = ">= 1.5.7"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.110.0, < 4.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "55cb5f04-d927-4cc6-b4e7-934e3f863abc"
  tenant_id       = "61363c43-8420-43ca-8f82-801627e16zxt"
  client_id       = "da1ad7aa-4f91-406c-9f49-50727379sjdf34"
  client_secret   = "1538Q~rvlMniDqX.5VUfDMdN4LuvjCEzabcdef"

}
