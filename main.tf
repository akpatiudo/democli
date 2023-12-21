terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.85.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
# Create a resource group
resource "azurerm_resource_group" "volvic-prod" {
  name     = "volvic-prod01-Rg"
  location = "sweden central"
}

# Create app service plan
resource "azurerm_service_plan" "volvic-prod-plan" {
  name                = "volvic-prod-Webappplan"
  resource_group_name = azurerm_resource_group.volvic-prod.name
  location            = azurerm_resource_group.volvic-prod.location
  os_type             = "Linux"
  sku_name            = "P1v2"

}

# Create web app
resource "azurerm_linux_web_app" "volvic-prod-webapp" {
  name                = "volvic-webapp"
  resource_group_name = azurerm_resource_group.volvic-prod.name
  location            = azurerm_service_plan.volvic-prod-plan.location
  service_plan_id     = azurerm_service_plan.volvic-prod-plan.id

  site_config {}
}
