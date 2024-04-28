# Outpt the account name of cosmodb
output "cosmodb-account" {
    value = azurerm_cosmosdb_account.db.name
}