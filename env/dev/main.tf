module "rg-module" {
    source = "../../module/azurerm_resourcegroup"
    resource_group = var.resource_group_m2tfvars
}

module "vnet-module" {
    depends_on = [ module.rg-module ]
    source = "../../module/azurerm_vnet"
    vnet_name = var.parent-vnet-m2tfvars
}

module "subnet-module" {
    depends_on = [ module.vnet-module ]
    source = "../../module/azurerm_subnet"
    subnet_name  = var.parent-subnet-m2tfvars  
}

module "nic-module" {
    depends_on = [ module.rg-module,module.vnet-module,module.subnet-module ]
source = "../../module/azurerm_nic"
network_interface = var.network_interface_m2tfvars
  
}

module "module-vm" {
    depends_on = [ module.rg-module,module.vnet-module,module.subnet-module,module.nic-module ]
    source = "../../module/azurerm_vm"
    virtual_machine = var.virtual_machine-m2tfvars
}
