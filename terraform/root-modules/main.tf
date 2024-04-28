module "rg" {
  source                   = "../child-modules/rg"
  group-name               = var.group-name
  location                 = var.location 
}

module "cosmodb" {
  source                   = "../child-modules/cosmodb"
  name                     = var.name
  rg-location              = module.rg.rg-location
  rg-name                  = module.rg.rg-name 
  offer_type               = var.offer_type
  kind                     = var.kind 
  consistency_level        = var.consistency_level 
}

module "cosmodb-sql" {
  source                   = "../child-modules/cosmodb-sql"
  name                     = var.name
  rg-name                  = module.rg.rg-name 
  cosmodb-account          = module.cosmodb.cosmodb-account 
}

module "sql-container" {
  source                   = "../child-modules/sql-container"
  name                     = var.name
  rg-name                  = module.rg.rg-name
  cosmodb-account          = module.cosmodb.cosmodb-account 
  sql-db                   = module.cosmodb-sql.sql-db  

}