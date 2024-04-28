# Output the name of the sql database
output "sql-db" {
    value = azurerm_cosmosdb_sql_database.sql-db.name
  
}