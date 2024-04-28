# Create a container in your sql database
resource "azurerm_cosmosdb_sql_container" "example" {
  name                  = "${var.name}-container"
  resource_group_name   = var.rg-name
  account_name          = var.cosmodb-account
  database_name         = var.sql-db
  partition_key_path    = "/id"
  throughput            = 400
}