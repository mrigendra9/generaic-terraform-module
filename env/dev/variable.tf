variable "resource_group_m2tfvars" {
  description = "Map of resource groups to create"
  type = map(object({
    resource_group = string
    rg_location = string
  }))
}

variable "parent-vnet-m2tfvars" {
  description = "Map of vnet to create"
  type = map(object({
    resource_group = string
    vnet_name = string
    vnet_location = string
    address_space = list(string)
    dns_servers = list(string)
  }))
}

variable "parent-subnet-m2tfvars" {
  description = "Map of subnet to create"
  type = map(object({
  subnet_name = string
   resource_group = string
   vnet_name = string
   address_space = list(string)
  }))
}