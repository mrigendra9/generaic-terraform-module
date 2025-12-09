resource "azurerm_network_interface" "nicname" {
    for_each = var.network_interface
  name                = each.value.nic_name
  location            = each.value.nic_location
  resource_group_name = each.value.resource_group

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.datasubnet[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}

data "azurerm_subnet" "datasubnet" {
    for_each = var.network_interface
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.resource_group
}