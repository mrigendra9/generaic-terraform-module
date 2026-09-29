resource "azurerm_storage_account" "storage_accounts" {
  for_each = var.storage_accounts
  name                     = each.value.sa_name
  resource_group_name      = each.value.sa_resource_group
  location                 = each.value.sa_location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  tags = {
    environment = "staging"
  }
}