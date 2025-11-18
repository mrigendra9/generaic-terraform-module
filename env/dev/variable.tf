variable "Parent-variable" {
  description = "define variable for rg parent module"
  type = map(object({
    dev_rgname = string
    rg_location = string
  }))
}