resource "azurerm_virtual_machine" "vmname-r" {
    for_each = var.virtual_machine
  name                  = each.value.vmname
  location              = each.value.location
  resource_group_name   = each.value.resource_group
  network_interface_ids = [data.azurerm_network_interface.datanic[each.key].id]
  vm_size               = each.value.vm_size

#   Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

#   Uncomment this line to delete the data disks automatically when deleting the VM
  delete_data_disks_on_termination = true

storage_image_reference {
  publisher = "Canonical"
  offer     = "0001-com-ubuntu-server-focal"
  sku       = "20_04-lts-gen2"
  version   = "latest"
}

  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }
}

data "azurerm_network_interface" "datanic" {
  for_each = var.virtual_machine
  name                = each.value.nic_name
  resource_group_name = each.value.resource_group

}

