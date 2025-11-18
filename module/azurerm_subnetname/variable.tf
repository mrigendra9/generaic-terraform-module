variable "dev_subnet" {
    type = map(object({
      dev_subnetname = string
      dev_rgname = string
      dev_vnetname = string
      dev_address_space = list(string)
    })) 
}