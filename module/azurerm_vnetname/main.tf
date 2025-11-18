resource "azurerm_virtual_network" "example" {
    for_each = var.dev_vnet
  name                = each.value.dev_vnetname
  location            = each.value.dev_vnet_location
  resource_group_name = each.value.dev_rgname
  address_space       = each.value.dev_address_space
  dns_servers         = each.value.dev_dns_servers
}