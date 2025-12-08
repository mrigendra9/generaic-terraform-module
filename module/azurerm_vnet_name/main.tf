resource "azurerm_virtual_network" "vnetname-r" {
    for_each = var.vnet_name
  name                = each.value.vnet_name
  location            = each.value.vnet_location
  resource_group_name = each.value.resource_group
  address_space       = each.value.address_space
  dns_servers         = each.value.dns_servers
}