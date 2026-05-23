resource "azurerm_resource_group" "az_stg_rg" {
 for_each = var.rgs
    name     = each.value.name
    location = each.value.location
    managed_by = each.value.managed_by
    tags = each.value.tags
}

output "rg_names" {
    value = { for k , v in azurerm_resource_group.az_stg_rg : k => v.name }
  
}