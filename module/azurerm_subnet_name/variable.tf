variable "subnet_name" {
    type = map(object({
      subnet_name = string
      resource_group = string
      vnet_name = string
      address_space = list(string)
    })) 
}