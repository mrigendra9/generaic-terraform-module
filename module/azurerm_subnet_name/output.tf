output "subnet_ids" {
  value = { for k, s in azurerm_subnet.subnetname-r : k => s.id }
}

output "subnet_names" {
  value = { for k, s in azurerm_subnet.subnetname-r : k => s.name }
}

output "subnet_prefixes" {
  value = { for k, s in azurerm_subnet.subnetname-r : k => s.address_prefixes }
}
