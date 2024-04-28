# Resource group for cosmosDB
resource "azurerm_resource_group" "rg" {
  name     = var.group-name
  location = var.location
}