variable "rgs" {

    description = "A map of resource groups to create. The key of the map will be used as the name of the resource group."
    type        = map(object({
        name       = string
        location   = string
        managed_by = optional(string)
        tags       = optional(map(string))
    }))
  
}