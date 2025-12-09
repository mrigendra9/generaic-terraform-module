variable "network_interface" {
    type = map(object({
      nic_name = string
      nic_location = string
      resource_group = string  
      subnet_name = string
      vnet_name = string 
    }))
}