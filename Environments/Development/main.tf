module "resource_group" {
  source          = "../../Modules/azurerm_resource_group"
  resource_groups = var.resource_groups
}

module "storage_account" {
  depends_on       = [module.resource_group]
  source           = "../../Modules/azurerm_storage_account"
  storage_accounts = var.storage_accounts
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../Modules/azurerm_virtual_network"
  vnets = var.vnets
}

module "virtual_subnet" {
  depends_on = [module.virtual_network]
  source     = "../../Modules/azurerm_virtual_subnet"
  subnets    = var.subnets
}

module "public_ip" {
  depends_on = [ module.resource_group ]
  source = "../../Modules/azurerm_public_ip"
  public_ips = var.public_ips
}

module "linux_virtual_machine" {
depends_on = [ module.resource_group, module.virtual_subnet ]
  source = "../../Modules/virtual_machine_linux"
  linux_virtual_machines = var.linux_virtual_machines
}

# module "windows_virtual_machine" {
#   depends_on = [ module.resource_group, module.virtual_subnet]
# source = "../../Modules/virtual_machine_windows"
# windows_virtual_machine = var.linux_virtual_machines
# }