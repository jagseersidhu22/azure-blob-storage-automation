resource "azurerm_storage_account" "az_stg" {
name = var.storage_account_name
resource_group_name = var.resource_group_name
location = var.location
account_tier = var.account_tier
account_replication_type = var.account_replication_type
access_tier = var.access_tier
tags = try(var.tags, {})
}


resource "azurerm_storage_container" "az_stg_container" {
  name                  = var.container_name
  storage_account_id = azurerm_storage_account.az_stg.id
  container_access_type = "private"
}

resource "azurerm_role_assignment" "rbac_stg" { 
    scope                = azurerm_storage_account.az_stg.id
    role_definition_name = "Storage Blob Data Contributor"
    principal_id         = data.azurerm_client_config.current.object_id
  
}