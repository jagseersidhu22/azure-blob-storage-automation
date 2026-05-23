
variable "storage_account_name" {

    description = "The name of the storage account. Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only."
    type        = string
  
}

variable "resource_group_name" {

    description = "The name of the resource group in which to create the storage account."
    type        = string
  
}

variable "location" {

    description = "The Azure region in which to create the storage account."
    type        = string
  
}

variable "account_tier" {

    description = "The performance tier of the storage account. Valid values are 'Standard' and 'Premium'."
    type        = string
  
}

variable "account_replication_type" {

    description = "The replication type of the storage account. Valid values are 'LRS', 'GRS', 'RAGRS', and 'ZRS'."
    type        = string
  
}

variable "access_tier" {

    description = "The access tier of the storage account. Valid values are 'Hot' and 'Cool'."
    type        = string
  
}

variable "tags" {
    
    description = "A map of tags to assign to the storage account."
    type        = map(string)
  
}

variable "container_name" {

    description = "The name of the storage container. Container names must be between 3 and 63 characters in length and may contain numbers and lowercase letters only."
    type        = string
  
}