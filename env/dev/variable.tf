variable "Parent-rg-variable" {
  description = "define variable for rg parent module"
  type = map(object({
    dev_rgname = string
    rg_location = string
  }))
}

variable "parent-vnet-variable" {
  type = map(object({
    dev_rgname = string
    dev_vnetname = string
    dev_vnet_location = string
    dev_address_space = list(string)
    dev_dns_servers = list(string)
  }))
}

variable "parent-subnet-variable" {
  type = map(object({
    dev_subnetname = string
    dev_rgname = string
    dev_vnetname = string
    dev_address_space = list(string)
  }))

}