resource "azurerm_subnet" "subnetname-r" {
    for_each = var.subnet_name
  name                 = each.value.subnet_name
  resource_group_name  = each.value.resource_group
  virtual_network_name = each.value.vnet_name
  address_prefixes     = each.value.address_space
}