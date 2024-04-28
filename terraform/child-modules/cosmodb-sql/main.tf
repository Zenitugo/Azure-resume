# Create a sql API in your cosmoDB
resource "azurerm_cosmosdb_sql_database" "sql-db" {
  name                = "${var.name}-sqlapi"
  resource_group_name = var.rg-name
  account_name        = var.cosmodb-account
}