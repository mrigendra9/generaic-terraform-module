data "azurerm_subnet" "subnets" {
  for_each = var.windows_virtual_machine
  
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}
