variable "rg_name" {
  description = "define variable for rg child module"
  type = map(object({
    dev_rgname = string
    rg_location = string
  }))
}