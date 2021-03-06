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
  subscription_id = "ae036e69-f8d0-4aa3-ac31-9598b2384403"
  client_id       = "03ec3cce-6c64-4ccc-aadf-8a06276d21b9"
  client_secret   = "xnV8LFc0C5hiG_c2O0LZ_DXPSgTjvY9-KB"
  tenant_id       = "bfe602c2-6ae5-4f1e-b923-c9b87545572e"
 
}



# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "DocProc-1"
  location = "East US 2"
  tags = {
    Name = "CGDev"
  }
}
