output "vnet_ids" {
  value = { for k, v in azurerm_virtual_network.vnetname-r : k => v.id }
}

output "vnet_names" {
  value = { for k, v in azurerm_virtual_network.vnetname-r : k => v.name }
}

output "vnet_address_spaces" {
  value = { for k, v in azurerm_virtual_network.vnetname-r : k => v.address_space }
}
