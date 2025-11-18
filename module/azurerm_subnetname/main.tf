resource "azurerm_subnet" "example" {
    for_each = var.dev_subnet
  name                 = each.value.dev_subnetname
  resource_group_name  = each.value.dev_rgname
  virtual_network_name = each.value.dev_vnetname
  address_prefixes     = each.value.dev_address_space
}