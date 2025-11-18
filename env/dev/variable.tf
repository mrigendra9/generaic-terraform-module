variable "Parent-rg-variable" {
  description = "define variable for rg parent module"
  type = map(object({
    dev_rgname = string
    rg_location = string
  }))
}

variable "Parent-vnet-variable" {
  type = map(object({
    dev_rgname = string
    dev_vnet_name = string
    dev_vnet_location = string
    dev_address_space = list(string)
    dev_dns_servers = list(string)
  }))
}