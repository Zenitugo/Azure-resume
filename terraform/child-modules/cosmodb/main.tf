# Create a CosmoDB account
resource "azurerm_cosmosdb_account" "db" {
  name                = "${var.name}-cosmodb"
  location            = var.rg-location
  resource_group_name = var.rg-name
  offer_type          = var.offer_type
  kind                = var.kind

  automatic_failover_enabled = true
  free_tier_enabled          = true 

  consistency_policy {
    consistency_level       = var.consistency_level
  }

  geo_location {
    location          = var.rg-location
    failover_priority = 0
  }

  geo_location {
    location          = var.rg-location
    failover_priority = 0
  }
}