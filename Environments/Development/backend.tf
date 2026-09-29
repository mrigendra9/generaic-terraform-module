terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-stg"
    storage_account_name = "tfstatestgaccount01"
    container_name       = "tfstate-development"
    key                  = "development.tfstate"
  }
}
