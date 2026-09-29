variable "nsgs" {
  description = "Network Security Groups configuration"

  type = map(object({
    name                = string
    location            = string
    resource_group_name = string

    security_rules = list(object({
      name                       = string
      priority                   = number
      direction                  = string
      access                     = string
      protocol                   = string
      source_port_range          = string
      destination_port_range     = string
      source_address_prefix      = string
      destination_address_prefix = string
    }))
  }))
}

variable "nsg_ids" {
  description = "Map of NSG keys to NSG resource IDs"
  type        = map(string)
}

variable "subnet_nsg_associations" {
  description = "Subnet to NSG associations"

  type = map(object({
    subnet_id = string
    nsg_key   = string
  }))
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {}
}

