resource "azurerm_resource_group" "example" {
    for_each = var.rg_name
  name     = each.value.dev_rgname
  location = each.value.rg_location
}