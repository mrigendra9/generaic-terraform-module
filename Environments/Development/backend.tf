terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-backendj"
    storage_account_name = "stgkumamrig01"
    container_name       = "kumamrigcontainer"
    key                  = "development.tfstate"
  }
}
