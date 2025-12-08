resource "azurerm_resource_group" "rgname" {
    for_each = var.resource_group
  name     = each.value.resource_group
  location = each.value.rg_location
}