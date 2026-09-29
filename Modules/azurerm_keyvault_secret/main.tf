data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "keyvaults" {
  for_each = var.keyvaults

  name                       = each.value.keyvault_name
  location                   = each.value.location
  resource_group_name        = each.value.resource_group_name
  rbac_authorization_enabled = each.value.rbac_authorization_enabled
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = each.value.sku_name
  soft_delete_retention_days = each.value.soft_delete_retention_days

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = each.value.access_policy.key_permissions

    secret_permissions = each.value.access_policy.secret_permissions
  }
}


resource "azurerm_key_vault_secret" "keyvault_secrets" {
  for_each = var.keyvaults

  name         = "secret-sauce"
  value        = "szechuan"
  key_vault_id = azurerm_key_vault.keyvaults[each.key].id
}


