terraform {
  required_version = ">=1.3.7"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version =  ">= 3.43.0"
    }
  }

}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "var.environment"
  location = "var.location"
}

 /*Create a secure storage account resource that includes the a hardcoded values for the following:
Set Public Network Access to be blocked
Ensure the account tier is set to Standard
Include variables in the secure storage account resource and set the tags using the local variable.*/

resource "azurerm_storage_account" "storage" {
  account_replication_type      = var.environment == "Production" ? "GRS" : "LRS"
  name                          = var.storage_account_name
  resource_group_name           = var.resource_group_name
  location                      = var.resource_group_location
  public_network_access_enabled = false
  account_tier                  = "Standard"
  tags                          = locals.tags
}

locals {
  tags = {
    environment = var.environment
  }
}