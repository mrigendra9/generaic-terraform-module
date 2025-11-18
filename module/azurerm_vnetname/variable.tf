variable "dev_vnet" {
    description = "define variable for dev_vnet"
    type = map(object({
     dev_vnetname = string
     dev_vnet_location = string
     dev_rgname = string
     dev_address_space = list(string)
     dev_dns_servers = list(string)
    }))
}