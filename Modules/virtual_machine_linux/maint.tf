resource "azurerm_network_interface" "lnics" {
  for_each = var.linux_virtual_machines
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = each.value.ip_config_name
    subnet_id                     = data.azurerm_subnet.subnets[each.key].id
    private_ip_address_allocation = each.value.private_ip_allocation
  }
}

resource "azurerm_linux_virtual_machine" "vms" {
  for_each = var.linux_virtual_machines
  name                = each.value.vm_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = each.value.vm_size
  network_interface_ids = [azurerm_network_interface.lnics[each.key].id]

disable_password_authentication = false
admin_username      = each.value.admin_username
admin_password = each.value.admin_password

  os_disk {
    caching              = each.value.os_disk_caching
    storage_account_type = each.value.storage_account_type
  }

  source_image_reference {
    publisher = each.value.image_publisher
    offer     = each.value.image_offer
    sku       = each.value.image_sku
    version   = each.value.image_version
  }
}



































# resource "azurerm_network_interface" "lvm-nic" {
#   for_each = var.linux_virtual_machines

#   name                = "${each.value.vm_name}-nic"
#   location            = each.value.location
#   resource_group_name = each.value.resource_group_name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id = var.subnet_ids[each.value.subnet_key]
#     private_ip_address_allocation = "Dynamic"
#   }
# }

# resource "azurerm_linux_virtual_machine" "lvm" {
#   for_each = var.linux_virtual_machines

#   name                = each.value.vm_name
#   resource_group_name = each.value.resource_group_name
#   location            = each.value.location
#   size           = each.value.vm_size
#   admin_username = each.value.admin_username
#   admin_password = each.value.admin_password
#   disable_password_authentication = false

#   network_interface_ids = [
#     azurerm_network_interface.lvm-nic[each.key].id
#   ]

#   os_disk {
#     caching              = each.value.os_disk_caching
#     storage_account_type = each.value.storage_account_type
#   }

#   source_image_reference {
#     publisher = each.value.image_publisher
#     offer     = each.value.image_offer
#     sku       = each.value.image_sku
#     version   = each.value.image_version
#   }
# }
