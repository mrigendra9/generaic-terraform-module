module "rg-module" {
    source = "../../module/azurerm_resource_group"
    rg_name = var.Parent-rg-variable
}

module "vnet-module" {
    source = "../../module/azurerm_vnet"
    azurerm_dev_vnet = var.Parent-vnet-variable
}