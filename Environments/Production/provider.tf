terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  subscription_id = "f1f37e65-b32c-44f4-a2b8-c9503aa741cb"
features {}
}
