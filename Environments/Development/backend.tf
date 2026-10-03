terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-backend"
    storage_account_name = "stgkumamrig01"
    container_name       = "kumamrigcontainer"
    key                  = "development.tfstate"
  }
}
