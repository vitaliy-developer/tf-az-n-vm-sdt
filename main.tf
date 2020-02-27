# Configure the Microsoft Azure Provider.
terraform {
  backend "azurerm" {
  }
}

# Create a resource group
resource "azurerm_resource_group" "rg" {
    name     = "${var.prefix}azurerg"
    location = var.location
    tags     = var.tags
}
