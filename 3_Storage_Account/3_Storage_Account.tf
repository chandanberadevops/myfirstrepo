terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }
}







provider "azurerm" {
  features {}
}













resource "azurerm_resource_group" "A" {
  name     = "chandan"
 location = "West Europe"
}

resource "azurerm_storage_account" "A" {
 depends_on = [ azurerm_resource_group.A ]        # This is explicit dependency because it's depends on another resource_group
  name                     = "chandanstorageaccount"
  resource_group_name      = azurerm_resource_group.A.name #indicates "chandan" #This is implicit dependency because name will be captured from other resource_group
  location                 = azurerm_resource_group.A.location #indicates "West Europe" #This is implicit dependency because location will be captured from other resource_group
  account_tier             = "Standard"
  account_replication_type = "GRS"
}