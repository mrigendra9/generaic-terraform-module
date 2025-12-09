output "resource_group_ids" {
  value = { for k, rg in azurerm_resource_group.rgname : k => rg.id }
}


