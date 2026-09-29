# module "resource_group" {
#   source = "../../Modules/azurerm_resource_group"
#   resource_groups = var.resource_groups
# }

# module "storage_account" {
#   depends_on = [module.resource_group]
#   source = "../../Modules/azurerm_storage_account"
#   storage_accounts = var.storage_accounts
# }

# module "virtual_network" {
#   depends_on = [module.resource_group]
#   source = "../../Modules/azurerm_virtual_network"
#   vnet_name = var.vnet_name
# }

# module "virtual_subnet" {
#   depends_on = [module.virtual_network]
#   source = "../../Modules/azurerm_virtual_subnet"
#   subnet_name = var.subnet_name
# }