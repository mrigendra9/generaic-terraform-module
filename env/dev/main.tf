module "rg-module" {
    source = "../../module/azurerm_rgname"
    rg_name = var.Parent-rg-variable
}

module "vnet-module" {
    depends_on = [ module.rg-module ]
    source = "../../module/azurerm_vnetname"
    dev_vnet = var.parent-vnet-variable
}

module "subnet-module" {
    depends_on = [ module.vnet-module ]
    source = "../../module/azurerm_subnetname"
    dev_subnet = var.parent-subnet-variable
  
}