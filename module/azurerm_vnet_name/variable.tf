variable "vnet_name" {
    description = "Map of vnet name to create"
    type = map(object({
     vnet_name = string
     vnet_location = string
     resource_group = string
     address_space = list(string)
     dns_servers = list(string)
    }))
}