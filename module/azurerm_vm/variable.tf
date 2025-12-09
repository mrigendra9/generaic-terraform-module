variable "virtual_machine" {
    type = map(object({
vmname = string
location = string
resource_group = string
vm_size               = string
nic_name = string
    }))
}

  