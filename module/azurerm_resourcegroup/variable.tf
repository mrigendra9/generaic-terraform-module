variable "resource_group" {
  description = "Map of resource groups to create"
  type = map(object({
    resource_group = string
    rg_location = string
  }))
}