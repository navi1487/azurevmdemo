terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}
provider "azurerm" {
  features {}
  
}



# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "DocProc-1"
  location = "East US 2"
  tags = {
    Name = "CGDev"
  }
}
