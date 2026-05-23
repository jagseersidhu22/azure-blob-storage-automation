###############RG######################

 module "rg" {
    source = "../../Modules/Resource_group"
    rgs = {
        "rg1" = {
        name       = "rg-storage"
        location   = "australiaeast"
        managed_by = "jagseer"
        tags       = {
            environment = "dev"
            project     = "Storage_simulation_project"
        }
  }
}
}

###############STORAGE ACCOUNT######################

module "storage" {
    source = "../../Modules/Storage"
    storage_account_name = "stgdevstorage"
    resource_group_name = module.rg.rg_names["rg1"]
    location = "australiaeast"
    account_tier = "Standard"
    account_replication_type = "LRS"
    access_tier = "Hot"
    tags = {
        environment = "dev"
        project     = "Storage_simulation_project"
    }
    container_name = "stgdevcontainer"
}
