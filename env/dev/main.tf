module "rg-module" {
    source = "../../module/azurerm_rgname"
    resource_group = var.resource_group_m2tfvars
}

module "vnet-module" {
    depends_on = [ module.rg-module ]
    source = "../../module/azurerm_vnet_name"
    vnet_name = var.parent-vnet-m2tfvars
}

module "subnet-module" {
    depends_on = [ module.vnet-module ]
    source = "../../module/azurerm_subnet_name"
    subnet_name  = var.parent-subnet-m2tfvars  
}